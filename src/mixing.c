#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#include "mixing.h"
#include "motors.h"
#include "diag.h"

mixing_state_t mixing_state;

void mixing_init()
{
    // Do not need to zero mixing_state at power on, that is guaranteed by the
    // C standard, but mixing_init is also called when the operator
    // resets the defaults.
    memset(&mixing_state, 0, sizeof(mixing_state));
    mixing_state.enable_mixing = true;
    mixing_state.enable_braking = true;
    mixing_state.swap_weapon_channels = true;
    // Invert left channel by default so it runs the opposite way to
    // right - this is what people expect - so they can wire them the
    // "same" way, and have the robot drive normally.
    mixing_state.invert_left = true;
}

static int signedclamp(int n, int maxval)
{
    if (n > maxval) return maxval;
    if (n < -maxval) return -maxval;
    return n;
}

static int deadzone(int n, int deadzone)
{
    if ((n < deadzone) && (n > (-deadzone))) {
        return 0;
    }
    return n;
}

static uint16_t diag_count=0;

void mixing_drive_motors(int16_t throttle, int16_t steering, int16_t weapon, bool invert)
{
    // inputs are already calibrated to centre on zero.
    // Inputs should be in (approx) microseconds of pulse.
    // Throttle, steering and weapon range is typically +- 450 full range.
    
    // Scale throttle to range +- 100
    throttle = (throttle * 10) / 45;
    // Scale steering to range +- 100
    steering = (-steering * 10) / 45; //reverse steering channel
    // Scale weapon to range +- 100
    weapon = (weapon * 10) / 45;
    // Clamp
    throttle = signedclamp(throttle, 100);
    steering = signedclamp(steering, 100);
    weapon = signedclamp(weapon, 100);
    
    throttle = deadzone(throttle, 10);
    steering = deadzone(steering, 10);
    weapon = deadzone(weapon, 10);  
    
    int left, right, back, temp01, sqrtval, arctanval;

    //omni mixing -------------------------------------------------------------------------
    sqrtval = 100*sqrt((throttle*throttle)+(steering*steering)); //values used in multiple parts of both functions, only calculated once per loop now, ideally faster.

    arctanval = atan2(throttle, steering);

    left = (sqrtval*sin(0.524-arctanval))/fmin(abs(100/cos(1.571-arctanval)), abs(100/sin(1.571-arctanval))) + weapon; //math explained in the README - https://github.com/NRS048/OmniMakenki-KIWI
    
    right = (sqrtval*sin(2.618-arctanval))/fmin(abs(100/cos(1.571-arctanval)), abs(100/sin(1.571-arctanval))) + weapon;
        
    back = (sqrtval*sin(4.712-arctanval))/fmin(abs(100/cos(1.571-arctanval)), abs(100/sin(1.571-arctanval))) + weapon;

    if( (fmax(left, fmax(right, back))) > 100 ){
        temp01 = fmax(left, fmax(right, back)) - 100;
        left -= temp01;
        right -= temp01;
        back -= temp01;
    }

    if( (fmin(left, fmin(right, back))) < -100 ){
        temp01 = fmin(left, fmin(right, back)) + 100;
        left -= temp01;
        right -= temp01;
        back -= temp01;
    }


    // Now scale back to += 200 which is correct for pwm -----------------------------------
    left = left *2;
    right = right * 2;
    back = back * 2;
  
    //weapon = apply_weapon_rules(throttle, steering, weapon);
    
    if (invert) {
        int temp;
        // Swap left and right and invert.
        temp = left;
        left = -right;
        right = -temp; 
    }
    // Check nvconfig and invert channels
    if (mixing_state.invert_left)
        left = -left;
    if (mixing_state.invert_right)
        right = -right;
    if (mixing_state.invert_weapon)
        weapon = -weapon;


    set_motor_direction_duty(MOTOR_WEAPON, -back); //reversed back

    if ((left == 0) && mixing_state.enable_braking) {
        enable_motor_brake(MOTOR_LEFT);
    } else {
        set_motor_direction_duty(MOTOR_LEFT, left);
    }

    if ((right == 0) && mixing_state.enable_braking) {
        enable_motor_brake(MOTOR_RIGHT);
    } else {
        set_motor_direction_duty(MOTOR_RIGHT, -right); //reversed right
    }

    if (diag_count == 0) {
        diag_count = 16;
        // diag_println("L: %03d R: %03d W: %03d", left, right, weapon);
    } else {
        --diag_count;
    }
}

//this is a highly butchered version of the mixing that comes stock on the malenki nano, malenki nano integrated, and malenki nano integrated HV - use at your own risk, and only if you know what it means/actually does.
