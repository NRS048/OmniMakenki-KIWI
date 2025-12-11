
# OmniMakenki-KIWI
A KIWI Omni drive firmware for the Malenki Nano all-in-one RX &amp; Tri-ESC platform


## Acknowledgements

 - [MarkR42](https://github.com/MarkR42) origional creator of the Malenki ESC
 - [Turnabot](https://turnabot.com/) Well known seller, & Knowledge of ESC flashing
 - [MacroBot.us Discord](https://discord.gg/SXwArmv) Tech help & Laughs
 - [Tom_Bottiglieri & Joel Johnson on ChiefDelphi](https://www.chiefdelphi.com/t/pic-kiwi-vex-robot/71688/7) Origional Equations for Kiwi Mixing


## Authors

- [@NRS048 - Nathan Story](https://github.com/NRS048)


## Version
- This program uses the base files released before 6/22/23
  - 6/22/23 - deploy
  - 5/7/24 - new revision with "better" equations
## Usage
To control you need access to three channels.
Ex. Flysky FS-i6 the right stick up/down will be your forward & backward, right stick left/right will be strafe left & right, left stick left/right will be your turn left & right

To flash new firmware, you need to connect to the SOICbite debug pads, the pinout is listed below

|pin #|usage|pin #|usage|
|-----|-----|-----|-----|
|`1`|VBAT (5V)|`8`|TXDEBUG| 
|`2`|nc|`7`|nc|
|`3`|GND|`6`|UPDI interface|
|`4`|GND|`5`|nc|

![image that shows the front and back of the red, Malenki Nano Integrated High Voltage, focusing on the 4 pads on each front and back that make up the debug and programming interface](https://github.com/NRS048/OmniMakenki-KIWI/blob/main/img/Malaxi.PNG)

Pin 8 is the top pin on the front, and pin 1 is the top pin on the back, and is indicated with a white outline, shown below.

The flashing instructions are listed in an [issue request](https://github.com/MarkR42/malenki-nano/issues/6) on the Malenki-nano Repo.

install the listed programs and libraries, and use the script [flash1616.sh](https://github.com/MarkR42/malenki-nano/blob/master/flashcmd/flash1616.sh) to flash the Malenki Nano with the bin file.

You can also compile your own code with the instructions given [here](https://github.com/MarkR42/malenki-nano/blob/master/firmware/README.md)
## Theory
The three channels of the Malenki lend well to this usage, with the addition of the third channel allowing movement in all 360 degrees.

Equations:

[Desmos Link](https://www.desmos.com/calculator/lyzy8svf33)

![new equations that calculate the motor speeds needed to properly move the Kiwi Drive robot](https://github.com/NRS048/OmniMakenki-KIWI/blob/main/img/DesmosCalculations.png)

Motor 4 = Right Motor, Motor 5 = Left Motor, Motor 6 = Back Motor, assuming the very front has no wheel.

(left, right, & back are final motor outputs, but may need to be mapped to standard 1000-2000ms PWM for your usage)
- input numbers should be in the form of EX. +-100, +-400, +-1000, as long as 0=no movement
- as your numbers get bigger, it theoretically gets more accurate, but is harder to calculate
- 4 digit truncated values have replaced the sqrt(x) values and xpi/y values.
- these equations can be ~~easily~~ adapted to your own program, throttle is the up/down movement on the right stick of your tx, steering is the left/right movement on the right stick of your tx, and throttle is the left/right movement on the left stick of your tx, photo attached below.

![alt text](https://github.com/NRS048/OmniMakenki-KIWI/blob/main/img/channels.png)

## License

[GPL-3.0](https://choosealicense.com/licenses/gpl-3.0/)


## Support

For support, dm `n8.click` on discord, find him on the [MACRObot.us discord](https://discord.gg/SXwArmv)

By using this, please understand that this program has been butchered from the origional code written by Mark R, It *should* work, but it is extremely at your own risk, previously built in safeties or watchdogs have not been fully checked and retested. You must test it before use in any combat or technical environment.
