
obj_attiny1616plus/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 48 00 	jmp	0x90	; 0x90 <__ctors_end>
       4:	0c 94 5a 00 	jmp	0xb4	; 0xb4 <__bad_interrupt>
       8:	0c 94 5a 00 	jmp	0xb4	; 0xb4 <__bad_interrupt>
       c:	0c 94 fb 03 	jmp	0x7f6	; 0x7f6 <__vector_3>
      10:	0c 94 5a 00 	jmp	0xb4	; 0xb4 <__bad_interrupt>
      14:	0c 94 5a 00 	jmp	0xb4	; 0xb4 <__bad_interrupt>
      18:	0c 94 5a 00 	jmp	0xb4	; 0xb4 <__bad_interrupt>
      1c:	0c 94 5a 00 	jmp	0xb4	; 0xb4 <__bad_interrupt>
      20:	0c 94 5a 00 	jmp	0xb4	; 0xb4 <__bad_interrupt>
      24:	0c 94 5a 00 	jmp	0xb4	; 0xb4 <__bad_interrupt>
      28:	0c 94 5a 00 	jmp	0xb4	; 0xb4 <__bad_interrupt>
      2c:	0c 94 5a 00 	jmp	0xb4	; 0xb4 <__bad_interrupt>
      30:	0c 94 5a 00 	jmp	0xb4	; 0xb4 <__bad_interrupt>
      34:	0c 94 28 05 	jmp	0xa50	; 0xa50 <__vector_13>
      38:	0c 94 5a 00 	jmp	0xb4	; 0xb4 <__bad_interrupt>
      3c:	0c 94 7f 05 	jmp	0xafe	; 0xafe <__vector_15>
      40:	0c 94 5a 00 	jmp	0xb4	; 0xb4 <__bad_interrupt>
      44:	0c 94 5a 00 	jmp	0xb4	; 0xb4 <__bad_interrupt>
      48:	0c 94 5a 00 	jmp	0xb4	; 0xb4 <__bad_interrupt>
      4c:	0c 94 5a 00 	jmp	0xb4	; 0xb4 <__bad_interrupt>
      50:	0c 94 5a 00 	jmp	0xb4	; 0xb4 <__bad_interrupt>
      54:	0c 94 5a 00 	jmp	0xb4	; 0xb4 <__bad_interrupt>
      58:	0c 94 5a 00 	jmp	0xb4	; 0xb4 <__bad_interrupt>
      5c:	0c 94 5a 00 	jmp	0xb4	; 0xb4 <__bad_interrupt>
      60:	0c 94 5a 00 	jmp	0xb4	; 0xb4 <__bad_interrupt>
      64:	0c 94 5a 00 	jmp	0xb4	; 0xb4 <__bad_interrupt>
      68:	0c 94 5a 00 	jmp	0xb4	; 0xb4 <__bad_interrupt>
      6c:	0c 94 5a 00 	jmp	0xb4	; 0xb4 <__bad_interrupt>
      70:	0c 94 5a 00 	jmp	0xb4	; 0xb4 <__bad_interrupt>
      74:	0c 94 5a 00 	jmp	0xb4	; 0xb4 <__bad_interrupt>
      78:	0c 94 5a 00 	jmp	0xb4	; 0xb4 <__bad_interrupt>
      7c:	6b 0c       	add	r6, r11
      7e:	73 0c       	add	r7, r3
      80:	7b 0c       	add	r7, r11
      82:	83 0c       	add	r8, r3
      84:	87 0c       	add	r8, r7
      86:	8f 0c       	add	r8, r15
      88:	9e 0c       	add	r9, r14
      8a:	b6 0c       	add	r11, r6
      8c:	be 0c       	add	r11, r14
      8e:	c6 0c       	add	r12, r6

00000090 <__ctors_end>:
      90:	11 24       	eor	r1, r1
      92:	1f be       	out	0x3f, r1	; 63
      94:	cf ef       	ldi	r28, 0xFF	; 255
      96:	cd bf       	out	0x3d, r28	; 61
      98:	df e3       	ldi	r29, 0x3F	; 63
      9a:	de bf       	out	0x3e, r29	; 62

0000009c <__do_clear_bss>:
      9c:	29 e3       	ldi	r18, 0x39	; 57
      9e:	a0 e0       	ldi	r26, 0x00	; 0
      a0:	b8 e3       	ldi	r27, 0x38	; 56
      a2:	01 c0       	rjmp	.+2      	; 0xa6 <.do_clear_bss_start>

000000a4 <.do_clear_bss_loop>:
      a4:	1d 92       	st	X+, r1

000000a6 <.do_clear_bss_start>:
      a6:	ae 32       	cpi	r26, 0x2E	; 46
      a8:	b2 07       	cpc	r27, r18
      aa:	e1 f7       	brne	.-8      	; 0xa4 <.do_clear_bss_loop>
      ac:	0e 94 b2 08 	call	0x1164	; 0x1164 <main>
      b0:	0c 94 27 17 	jmp	0x2e4e	; 0x2e4e <_exit>

000000b4 <__bad_interrupt>:
      b4:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000b8 <set_motor_direction_duty>:
}

void set_motor_direction_duty(uint8_t motor_id, int16_t direction_and_duty)
{
    int8_t direction=0;
    if (direction_and_duty > 0) { direction=1; }
      b8:	16 16       	cp	r1, r22
      ba:	17 06       	cpc	r1, r23
      bc:	2c f0       	brlt	.+10     	; 0xc8 <set_motor_direction_duty+0x10>
    if (direction_and_duty < 0) { direction=-1; }
      be:	61 15       	cp	r22, r1
      c0:	71 05       	cpc	r23, r1
      c2:	21 f4       	brne	.+8      	; 0xcc <set_motor_direction_duty+0x14>
    *compare_register = duty;
}

void set_motor_direction_duty(uint8_t motor_id, int16_t direction_and_duty)
{
    int8_t direction=0;
      c4:	20 e0       	ldi	r18, 0x00	; 0
      c6:	03 c0       	rjmp	.+6      	; 0xce <set_motor_direction_duty+0x16>
    if (direction_and_duty > 0) { direction=1; }
      c8:	21 e0       	ldi	r18, 0x01	; 1
      ca:	01 c0       	rjmp	.+2      	; 0xce <set_motor_direction_duty+0x16>
    if (direction_and_duty < 0) { direction=-1; }
      cc:	2f ef       	ldi	r18, 0xFF	; 255
    uint8_t duty = (uint8_t) abs(direction_and_duty);
      ce:	77 ff       	sbrs	r23, 7
      d0:	03 c0       	rjmp	.+6      	; 0xd8 <set_motor_direction_duty+0x20>
      d2:	71 95       	neg	r23
      d4:	61 95       	neg	r22
      d6:	71 09       	sbc	r23, r1
      d8:	83 30       	cpi	r24, 0x03	; 3
      da:	38 f5       	brcc	.+78     	; 0x12a <__EEPROM_REGION_LENGTH__+0x2a>
      dc:	90 e0       	ldi	r25, 0x00	; 0
      de:	fc 01       	movw	r30, r24
      e0:	e9 56       	subi	r30, 0x69	; 105
      e2:	f1 45       	sbci	r31, 0x51	; 81
      e4:	a0 81       	ld	r26, Z
      e6:	fc 01       	movw	r30, r24
      e8:	ec 56       	subi	r30, 0x6C	; 108
      ea:	f1 45       	sbci	r31, 0x51	; 81
      ec:	e0 81       	ld	r30, Z
            fwd=MOTOR_2F; rev=MOTOR_2R; break; 
        case MOTOR_RIGHT:
            fwd=MOTOR_3F; rev=MOTOR_3R; break; 
    }
    // fwd and rev both zero - unknown motor id.
    if (fwd || rev) {
      ee:	a1 11       	cpse	r26, r1
      f0:	02 c0       	rjmp	.+4      	; 0xf6 <set_motor_direction_duty+0x3e>
      f2:	ee 23       	and	r30, r30
      f4:	d1 f0       	breq	.+52     	; 0x12a <__EEPROM_REGION_LENGTH__+0x2a>
        uint8_t fwd_duty = duty;
        uint8_t rev_duty = duty;
        if (direction <= 0) {
      f6:	21 30       	cpi	r18, 0x01	; 1
      f8:	21 f0       	breq	.+8      	; 0x102 <__EEPROM_REGION_LENGTH__+0x2>
            // Not going forward
            fwd_duty=0; 
      fa:	80 e0       	ldi	r24, 0x00	; 0
        }
        if (direction >= 0) {
      fc:	2f 3f       	cpi	r18, 0xFF	; 255
      fe:	19 f0       	breq	.+6      	; 0x106 <__EEPROM_REGION_LENGTH__+0x6>
     100:	01 c0       	rjmp	.+2      	; 0x104 <__EEPROM_REGION_LENGTH__+0x4>
        case MOTOR_RIGHT:
            fwd=MOTOR_3F; rev=MOTOR_3R; break; 
    }
    // fwd and rev both zero - unknown motor id.
    if (fwd || rev) {
        uint8_t fwd_duty = duty;
     102:	86 2f       	mov	r24, r22
            // Not going forward
            fwd_duty=0; 
        }
        if (direction >= 0) {
            // Not going back
            rev_duty=0; 
     104:	60 e0       	ldi	r22, 0x00	; 0
    & (TCA0.SPLIT.HCMP1), // 3R, PA4
} ;

static void set_pin_duty(uint8_t signal_id, uint8_t duty)
{
    volatile uint8_t * compare_register=motor_map[signal_id]; 
     106:	b0 e0       	ldi	r27, 0x00	; 0
     108:	aa 0f       	add	r26, r26
     10a:	bb 1f       	adc	r27, r27
     10c:	a8 57       	subi	r26, 0x78	; 120
     10e:	b1 45       	sbci	r27, 0x51	; 81
     110:	0d 90       	ld	r0, X+
     112:	bc 91       	ld	r27, X
     114:	a0 2d       	mov	r26, r0
    *compare_register = duty;
     116:	8c 93       	st	X, r24
    & (TCA0.SPLIT.HCMP1), // 3R, PA4
} ;

static void set_pin_duty(uint8_t signal_id, uint8_t duty)
{
    volatile uint8_t * compare_register=motor_map[signal_id]; 
     118:	f0 e0       	ldi	r31, 0x00	; 0
     11a:	ee 0f       	add	r30, r30
     11c:	ff 1f       	adc	r31, r31
     11e:	e8 57       	subi	r30, 0x78	; 120
     120:	f1 45       	sbci	r31, 0x51	; 81
     122:	01 90       	ld	r0, Z+
     124:	f0 81       	ld	r31, Z
     126:	e0 2d       	mov	r30, r0
    *compare_register = duty;
     128:	60 83       	st	Z, r22
     12a:	08 95       	ret

0000012c <update_led>:
}


static void update_led()
{
    if (radio_state.led_on) {
     12c:	80 91 f7 38 	lds	r24, 0x38F7	; 0x8038f7 <radio_state+0x77>
     130:	88 23       	and	r24, r24
     132:	11 f0       	breq	.+4      	; 0x138 <update_led+0xc>
        LED_VPORT->OUT |= LED_PIN_bm; // turn on microcontroller gpio
     134:	2c 9a       	sbi	0x05, 4	; 5
     136:	08 95       	ret
    } else {
        LED_VPORT->OUT &= ~LED_PIN_bm; // turn off micro gpio
     138:	2c 98       	cbi	0x05, 4	; 5
     13a:	08 95       	ret

0000013c <hop_to_next_channel>:
}

static void hop_to_next_channel(uint8_t channel_increment)
{
    // hop_index should count up to 31,
    radio_state.hop_index = (radio_state.hop_index + channel_increment) & 0x1f;
     13c:	90 91 bd 38 	lds	r25, 0x38BD	; 0x8038bd <radio_state+0x3d>
     140:	89 0f       	add	r24, r25
     142:	98 2f       	mov	r25, r24
     144:	9f 71       	andi	r25, 0x1F	; 31
     146:	90 93 bd 38 	sts	0x38BD, r25	; 0x8038bd <radio_state+0x3d>
    // but chan_index only count to 15
    uint8_t chan_index = radio_state.hop_index & 0xf;
    uint8_t bind_seek_old = radio_state.hop_index & 0x10;
    uint8_t chan = radio_state.hop_channels[chan_index];
     14a:	e8 2f       	mov	r30, r24
     14c:	ef 70       	andi	r30, 0x0F	; 15
     14e:	f0 e0       	ldi	r31, 0x00	; 0
     150:	e0 58       	subi	r30, 0x80	; 128
     152:	f7 4c       	sbci	r31, 0xC7	; 199
     154:	90 85       	ldd	r25, Z+8	; 0x08
    // In bind mode, we will switch to a different channel half the time.
    if ((radio_state.state == RADIO_STATE_BIND) && bind_seek_old) {
     156:	20 91 bc 38 	lds	r18, 0x38BC	; 0x8038bc <radio_state+0x3c>
     15a:	21 11       	cpse	r18, r1
     15c:	03 c0       	rjmp	.+6      	; 0x164 <hop_to_next_channel+0x28>
     15e:	84 fd       	sbrc	r24, 4
        // Channel from the old transmitter.
        chan = radio_state.hop_channels_saved[0];
     160:	90 91 98 38 	lds	r25, 0x3898	; 0x803898 <radio_state+0x18>
    }
    radio_state.current_channel = chan;
     164:	90 93 bf 38 	sts	0x38BF, r25	; 0x8038bf <radio_state+0x3f>
     168:	08 95       	ret

0000016a <diag_puts>:
#include <stdio.h>

// Write a string to the USART0.
// This assumes the hardware is already configured.
void diag_puts(const char *str)
{
     16a:	fc 01       	movw	r30, r24
	const char *p=str;
	while (*p != 0) {
     16c:	91 91       	ld	r25, Z+
     16e:	99 23       	and	r25, r25
     170:	39 f0       	breq	.+14     	; 0x180 <diag_puts+0x16>
		// Wait for uart0 to be un-busy.
		while (! (USART0.STATUS & USART_DREIF_bm)) {
     172:	80 91 04 08 	lds	r24, 0x0804	; 0x800804 <CSWTCH.12+0x7f596d>
     176:	85 ff       	sbrs	r24, 5
     178:	fc cf       	rjmp	.-8      	; 0x172 <diag_puts+0x8>
			// Sleep
		}
		USART0.TXDATAL = *p;
     17a:	90 93 02 08 	sts	0x0802, r25	; 0x800802 <CSWTCH.12+0x7f596b>
     17e:	f6 cf       	rjmp	.-20     	; 0x16c <diag_puts+0x2>
		++p ;
	}
}
     180:	08 95       	ret

00000182 <uninit_everything>:
    return tc;
}

static void uninit_everything()
{
    USART0.CTRLB = 0; //disable rx and tx
     182:	10 92 06 08 	sts	0x0806, r1	; 0x800806 <CSWTCH.12+0x7f596f>
    // Set all ports as inputs.
    PORTA.DIR = 0 ;
     186:	10 92 00 04 	sts	0x0400, r1	; 0x800400 <CSWTCH.12+0x7f5569>
    PORTB.DIR = 0 ;
     18a:	10 92 20 04 	sts	0x0420, r1	; 0x800420 <CSWTCH.12+0x7f5589>
    PORTC.DIR = 0 ;
     18e:	10 92 40 04 	sts	0x0440, r1	; 0x800440 <CSWTCH.12+0x7f55a9>
    // Disable all the timers, so that nothing can keep
    // going automatically.
    TCA0.SPLIT.CTRLA = 0;
     192:	10 92 00 0a 	sts	0x0A00, r1	; 0x800a00 <CSWTCH.12+0x7f5b69>
    TCB0.CTRLA = 0;
     196:	10 92 40 0a 	sts	0x0A40, r1	; 0x800a40 <CSWTCH.12+0x7f5ba9>
    TCD0.CTRLA = 0;
     19a:	10 92 80 0a 	sts	0x0A80, r1	; 0x800a80 <CSWTCH.12+0x7f5be9>
     19e:	08 95       	ret

000001a0 <epic_fail>:
}

void epic_fail(const char * reason)
{
    diag_puts(reason);
     1a0:	0e 94 b5 00 	call	0x16a	; 0x16a <diag_puts>
    diag_puts("\r\nFAIL FAIL FAIL!\r\n\n\n");
     1a4:	8a e9       	ldi	r24, 0x9A	; 154
     1a6:	9e ea       	ldi	r25, 0xAE	; 174
     1a8:	0e 94 b5 00 	call	0x16a	; 0x16a <diag_puts>
	#else
		//round up by default
		__ticks_dc = (uint32_t)(ceil(fabs(__tmp)));
	#endif

	__builtin_avr_delay_cycles(__ticks_dc);
     1ac:	87 ea       	ldi	r24, 0xA7	; 167
     1ae:	91 e6       	ldi	r25, 0x61	; 97
     1b0:	01 97       	sbiw	r24, 0x01	; 1
     1b2:	f1 f7       	brne	.-4      	; 0x1b0 <epic_fail+0x10>
     1b4:	00 c0       	rjmp	.+0      	; 0x1b6 <epic_fail+0x16>
     1b6:	00 00       	nop
    _delay_ms(10); // allow transmission of message
    cli(); // No interrupts now please.
     1b8:	f8 94       	cli
    uninit_everything();
     1ba:	0e 94 c1 00 	call	0x182	; 0x182 <uninit_everything>
     1be:	9f e7       	ldi	r25, 0x7F	; 127
     1c0:	24 e8       	ldi	r18, 0x84	; 132
     1c2:	8e e1       	ldi	r24, 0x1E	; 30
     1c4:	91 50       	subi	r25, 0x01	; 1
     1c6:	20 40       	sbci	r18, 0x00	; 0
     1c8:	80 40       	sbci	r24, 0x00	; 0
     1ca:	e1 f7       	brne	.-8      	; 0x1c4 <epic_fail+0x24>
     1cc:	00 c0       	rjmp	.+0      	; 0x1ce <epic_fail+0x2e>
     1ce:	00 00       	nop
}

void trigger_reset()
{
    // Pull the reset line.
    cli();
     1d0:	f8 94       	cli
    while (1) {
        _PROTECTED_WRITE(RSTCTRL.SWRR, 1);
     1d2:	88 ed       	ldi	r24, 0xD8	; 216
     1d4:	91 e0       	ldi	r25, 0x01	; 1
     1d6:	84 bf       	out	0x34, r24	; 52
     1d8:	90 93 41 00 	sts	0x0041, r25	; 0x800041 <CSWTCH.12+0x7f51aa>
     1dc:	fc cf       	rjmp	.-8      	; 0x1d6 <epic_fail+0x36>

000001de <wait_auto_clear.constprop.1>:
        if (v != 0xff) {
            spi_write_byte(addr, v);
        }
    }
}
static void wait_auto_clear(uint8_t reg, uint8_t bit)
     1de:	1f 93       	push	r17
     1e0:	cf 93       	push	r28
     1e2:	df 93       	push	r29
     1e4:	18 2f       	mov	r17, r24
     1e6:	c4 e6       	ldi	r28, 0x64	; 100
     1e8:	d0 e0       	ldi	r29, 0x00	; 0
{
    uint16_t counter = 100;
    while (counter > 0) {
        uint8_t v = spi_read_byte(reg);
     1ea:	82 e0       	ldi	r24, 0x02	; 2
     1ec:	0e 94 a5 07 	call	0xf4a	; 0xf4a <spi_read_byte>
        if (! (v & bit)) {
     1f0:	81 23       	and	r24, r17
     1f2:	61 f0       	breq	.+24     	; 0x20c <wait_auto_clear.constprop.1+0x2e>
     1f4:	83 ec       	ldi	r24, 0xC3	; 195
     1f6:	99 e0       	ldi	r25, 0x09	; 9
     1f8:	01 97       	sbiw	r24, 0x01	; 1
     1fa:	f1 f7       	brne	.-4      	; 0x1f8 <wait_auto_clear.constprop.1+0x1a>
     1fc:	00 c0       	rjmp	.+0      	; 0x1fe <wait_auto_clear.constprop.1+0x20>
     1fe:	00 00       	nop
     200:	21 97       	sbiw	r28, 0x01	; 1
    }
}
static void wait_auto_clear(uint8_t reg, uint8_t bit)
{
    uint16_t counter = 100;
    while (counter > 0) {
     202:	99 f7       	brne	.-26     	; 0x1ea <wait_auto_clear.constprop.1+0xc>
            return;
        }
        -- counter;
        _delay_ms(1);
    }
    epic_fail("TIMEOUT initialising radio. Faulty crystal?");
     204:	80 eb       	ldi	r24, 0xB0	; 176
     206:	9e ea       	ldi	r25, 0xAE	; 174
     208:	0e 94 d0 00 	call	0x1a0	; 0x1a0 <epic_fail>
}
     20c:	df 91       	pop	r29
     20e:	cf 91       	pop	r28
     210:	1f 91       	pop	r17
     212:	08 95       	ret

00000214 <mixing_init>:
void mixing_init()
{
    // Do not need to zero mixing_state at power on, that is guaranteed by the
    // C standard, but mixing_init is also called when the operator
    // resets the defaults.
    memset(&mixing_state, 0, sizeof(mixing_state));
     214:	e5 e2       	ldi	r30, 0x25	; 37
     216:	f9 e3       	ldi	r31, 0x39	; 57
     218:	89 e0       	ldi	r24, 0x09	; 9
     21a:	df 01       	movw	r26, r30
     21c:	1d 92       	st	X+, r1
     21e:	8a 95       	dec	r24
     220:	e9 f7       	brne	.-6      	; 0x21c <mixing_init+0x8>
    mixing_state.enable_mixing = true;
     222:	81 e0       	ldi	r24, 0x01	; 1
     224:	84 83       	std	Z+4, r24	; 0x04
    mixing_state.enable_braking = true;
     226:	86 83       	std	Z+6, r24	; 0x06
    mixing_state.swap_weapon_channels = true;
     228:	85 83       	std	Z+5, r24	; 0x05
    // Invert left channel by default so it runs the opposite way to
    // right - this is what people expect - so they can wire them the
    // "same" way, and have the robot drive normally.
    mixing_state.invert_left = true;
     22a:	81 83       	std	Z+1, r24	; 0x01
     22c:	08 95       	ret

0000022e <nvconfig_save>:
        memcpy(&mixing_state, &nvdata.mixing_state, sizeof(mixing_state));
    } // otherwise, invalid nvconfig.
}

void nvconfig_save()
{
     22e:	cf 93       	push	r28
     230:	df 93       	push	r29
     232:	cd b7       	in	r28, 0x3d	; 61
     234:	de b7       	in	r29, 0x3e	; 62
     236:	6f 97       	sbiw	r28, 0x1f	; 31
     238:	cd bf       	out	0x3d, r28	; 61
     23a:	de bf       	out	0x3e, r29	; 62
    nvconfig_layout nvdata;
    nvdata.magic = NVCONFIG_MAGIC;
     23c:	8a e2       	ldi	r24, 0x2A	; 42
     23e:	94 e4       	ldi	r25, 0x44	; 68
     240:	89 83       	std	Y+1, r24	; 0x01
     242:	9a 83       	std	Y+2, r25	; 0x02
    memcpy(nvdata.tx_id, radio_state.tx_id, 4);
     244:	80 91 80 38 	lds	r24, 0x3880	; 0x803880 <radio_state>
     248:	90 91 81 38 	lds	r25, 0x3881	; 0x803881 <radio_state+0x1>
     24c:	a0 91 82 38 	lds	r26, 0x3882	; 0x803882 <radio_state+0x2>
     250:	b0 91 83 38 	lds	r27, 0x3883	; 0x803883 <radio_state+0x3>
     254:	8b 83       	std	Y+3, r24	; 0x03
     256:	9c 83       	std	Y+4, r25	; 0x04
     258:	ad 83       	std	Y+5, r26	; 0x05
     25a:	be 83       	std	Y+6, r27	; 0x06
    memcpy(nvdata.hop_channels, radio_state.hop_channels, NR_HOP_CHANNELS);
     25c:	80 e1       	ldi	r24, 0x10	; 16
     25e:	e8 e8       	ldi	r30, 0x88	; 136
     260:	f8 e3       	ldi	r31, 0x38	; 56
     262:	de 01       	movw	r26, r28
     264:	17 96       	adiw	r26, 0x07	; 7
     266:	01 90       	ld	r0, Z+
     268:	0d 92       	st	X+, r0
     26a:	8a 95       	dec	r24
     26c:	e1 f7       	brne	.-8      	; 0x266 <nvconfig_save+0x38>
    memcpy(&nvdata.mixing_state, &mixing_state, sizeof(mixing_state));
     26e:	89 e0       	ldi	r24, 0x09	; 9
     270:	e5 e2       	ldi	r30, 0x25	; 37
     272:	f9 e3       	ldi	r31, 0x39	; 57
     274:	de 01       	movw	r26, r28
     276:	57 96       	adiw	r26, 0x17	; 23
     278:	01 90       	ld	r0, Z+
     27a:	0d 92       	st	X+, r0
     27c:	8a 95       	dec	r24
     27e:	e1 f7       	brne	.-8      	; 0x278 <nvconfig_save+0x4a>
    eeprom_update_block((void *) &nvdata, eeprom_addr, sizeof(nvdata));
     280:	4f e1       	ldi	r20, 0x1F	; 31
     282:	50 e0       	ldi	r21, 0x00	; 0
     284:	60 e0       	ldi	r22, 0x00	; 0
     286:	70 e0       	ldi	r23, 0x00	; 0
     288:	ce 01       	movw	r24, r28
     28a:	01 96       	adiw	r24, 0x01	; 1
     28c:	0e 94 63 11 	call	0x22c6	; 0x22c6 <eeprom_update_block>
}
     290:	6f 96       	adiw	r28, 0x1f	; 31
     292:	cd bf       	out	0x3d, r28	; 61
     294:	de bf       	out	0x3e, r29	; 62
     296:	df 91       	pop	r29
     298:	cf 91       	pop	r28
     29a:	08 95       	ret

0000029c <enable_rx>:
    /*
     * If for some reason, we were transmitting telemetry,
     * it will stop (and generate a bad packet)
     */
    uint8_t chanminus1 = radio_state.current_channel - 1 ;
    spi_write_byte_then_strobe(0x0f, chanminus1, STROBE_RX);
     29c:	60 91 bf 38 	lds	r22, 0x38BF	; 0x8038bf <radio_state+0x3f>
     2a0:	61 50       	subi	r22, 0x01	; 1
     2a2:	40 ec       	ldi	r20, 0xC0	; 192
     2a4:	8f e0       	ldi	r24, 0x0F	; 15
     2a6:	0e 94 f6 06 	call	0xdec	; 0xdec <spi_strobe3>
    radio_state.tx_active = false; // Ensure this flag is not left set
     2aa:	10 92 21 39 	sts	0x3921, r1	; 0x803921 <radio_state+0xa1>
     2ae:	08 95       	ret

000002b0 <diag_print>:
        diag_puts(buf);
        diag_puts("\r\n");
    }

    void diag_print(const char * fmt, ...)
    {
     2b0:	cf 93       	push	r28
     2b2:	df 93       	push	r29
     2b4:	cd b7       	in	r28, 0x3d	; 61
     2b6:	de b7       	in	r29, 0x3e	; 62
     2b8:	9e 01       	movw	r18, r28
     2ba:	2b 5f       	subi	r18, 0xFB	; 251
     2bc:	3f 4f       	sbci	r19, 0xFF	; 255
     2be:	f9 01       	movw	r30, r18
     2c0:	41 91       	ld	r20, Z+
     2c2:	51 91       	ld	r21, Z+
     2c4:	9f 01       	movw	r18, r30
        va_list ap;
        va_start(ap, fmt);
        vsnprintf(buf, sizeof(buf), fmt, ap);
     2c6:	60 e5       	ldi	r22, 0x50	; 80
     2c8:	70 e0       	ldi	r23, 0x00	; 0
     2ca:	83 e2       	ldi	r24, 0x23	; 35
     2cc:	98 e3       	ldi	r25, 0x38	; 56
     2ce:	0e 94 39 14 	call	0x2872	; 0x2872 <vsnprintf>
        va_end(ap);
        buf[DIAG_BUFSIZE -1] = '\0'; // ensure null terminated
     2d2:	10 92 72 38 	sts	0x3872, r1	; 0x803872 <buf+0x4f>
        diag_puts(buf);
     2d6:	83 e2       	ldi	r24, 0x23	; 35
     2d8:	98 e3       	ldi	r25, 0x38	; 56
     2da:	0e 94 b5 00 	call	0x16a	; 0x16a <diag_puts>
    }
     2de:	df 91       	pop	r29
     2e0:	cf 91       	pop	r28
     2e2:	08 95       	ret

000002e4 <dump_buf>:
        radio_state.telemetry_countdown --;
    }
}

static void dump_buf(uint8_t *buf, uint8_t len)
{
     2e4:	ef 92       	push	r14
     2e6:	ff 92       	push	r15
     2e8:	0f 93       	push	r16
     2ea:	1f 93       	push	r17
     2ec:	cf 93       	push	r28
     2ee:	df 93       	push	r29
     2f0:	ec 01       	movw	r28, r24
     2f2:	7c 01       	movw	r14, r24
     2f4:	e6 0e       	add	r14, r22
     2f6:	f1 1c       	adc	r15, r1
    for (uint8_t i=0; i<len; i++) {
        diag_print("%02x ", (int) buf[i]);
     2f8:	0c ed       	ldi	r16, 0xDC	; 220
     2fa:	1e ea       	ldi	r17, 0xAE	; 174
    }
}

static void dump_buf(uint8_t *buf, uint8_t len)
{
    for (uint8_t i=0; i<len; i++) {
     2fc:	ce 15       	cp	r28, r14
     2fe:	df 05       	cpc	r29, r15
     300:	61 f0       	breq	.+24     	; 0x31a <dump_buf+0x36>
        diag_print("%02x ", (int) buf[i]);
     302:	89 91       	ld	r24, Y+
     304:	1f 92       	push	r1
     306:	8f 93       	push	r24
     308:	1f 93       	push	r17
     30a:	0f 93       	push	r16
     30c:	0e 94 58 01 	call	0x2b0	; 0x2b0 <diag_print>
     310:	0f 90       	pop	r0
     312:	0f 90       	pop	r0
     314:	0f 90       	pop	r0
     316:	0f 90       	pop	r0
     318:	f1 cf       	rjmp	.-30     	; 0x2fc <dump_buf+0x18>
    }
    diag_puts("\r\n");
     31a:	87 e9       	ldi	r24, 0x97	; 151
     31c:	91 eb       	ldi	r25, 0xB1	; 177
}
     31e:	df 91       	pop	r29
     320:	cf 91       	pop	r28
     322:	1f 91       	pop	r17
     324:	0f 91       	pop	r16
     326:	ff 90       	pop	r15
     328:	ef 90       	pop	r14
static void dump_buf(uint8_t *buf, uint8_t len)
{
    for (uint8_t i=0; i<len; i++) {
        diag_print("%02x ", (int) buf[i]);
    }
    diag_puts("\r\n");
     32a:	0c 94 b5 00 	jmp	0x16a	; 0x16a <diag_puts>

0000032e <register_dump>:
 */
PORT_t * const BLINKY_PORT = &PORTC;
const uint8_t BLINKY_bm = 5 << 4;

static void register_dump()
{
     32e:	0f 93       	push	r16
     330:	1f 93       	push	r17
     332:	cf 93       	push	r28
#ifdef ENABLE_DIAG
    // Dump regs
    for (uint8_t n=0; n<0x30; n++) {
     334:	c0 e0       	ldi	r28, 0x00	; 0
        uint8_t b = spi_read_byte(n);
        diag_print("%02x ", (int) b);
     336:	0c ed       	ldi	r16, 0xDC	; 220
     338:	1e ea       	ldi	r17, 0xAE	; 174
static void register_dump()
{
#ifdef ENABLE_DIAG
    // Dump regs
    for (uint8_t n=0; n<0x30; n++) {
        uint8_t b = spi_read_byte(n);
     33a:	8c 2f       	mov	r24, r28
     33c:	0e 94 a5 07 	call	0xf4a	; 0xf4a <spi_read_byte>
        diag_print("%02x ", (int) b);
     340:	1f 92       	push	r1
     342:	8f 93       	push	r24
     344:	1f 93       	push	r17
     346:	0f 93       	push	r16
     348:	0e 94 58 01 	call	0x2b0	; 0x2b0 <diag_print>
        if ((n % 16) == 15) {
     34c:	0f 90       	pop	r0
     34e:	0f 90       	pop	r0
     350:	0f 90       	pop	r0
     352:	0f 90       	pop	r0
     354:	8c 2f       	mov	r24, r28
     356:	8f 70       	andi	r24, 0x0F	; 15
     358:	8f 30       	cpi	r24, 0x0F	; 15
     35a:	21 f4       	brne	.+8      	; 0x364 <register_dump+0x36>
            diag_puts("\r\n");
     35c:	87 e9       	ldi	r24, 0x97	; 151
     35e:	91 eb       	ldi	r25, 0xB1	; 177
     360:	0e 94 b5 00 	call	0x16a	; 0x16a <diag_puts>

static void register_dump()
{
#ifdef ENABLE_DIAG
    // Dump regs
    for (uint8_t n=0; n<0x30; n++) {
     364:	cf 5f       	subi	r28, 0xFF	; 255
     366:	c0 33       	cpi	r28, 0x30	; 48
     368:	41 f7       	brne	.-48     	; 0x33a <register_dump+0xc>
        diag_print("%02x ", (int) b);
        if ((n % 16) == 15) {
            diag_puts("\r\n");
        }
    }
    diag_puts("\r\n");
     36a:	87 e9       	ldi	r24, 0x97	; 151
     36c:	91 eb       	ldi	r25, 0xB1	; 177
#endif // ENABLE_DIAG
}
     36e:	cf 91       	pop	r28
     370:	1f 91       	pop	r17
     372:	0f 91       	pop	r16
        diag_print("%02x ", (int) b);
        if ((n % 16) == 15) {
            diag_puts("\r\n");
        }
    }
    diag_puts("\r\n");
     374:	0c 94 b5 00 	jmp	0x16a	; 0x16a <diag_puts>

00000378 <diag_println>:

#ifdef ENABLE_DIAG
    static char buf[DIAG_BUFSIZE];

    void diag_println(const char * fmt, ...)
    {
     378:	cf 93       	push	r28
     37a:	df 93       	push	r29
     37c:	cd b7       	in	r28, 0x3d	; 61
     37e:	de b7       	in	r29, 0x3e	; 62
     380:	9e 01       	movw	r18, r28
     382:	2b 5f       	subi	r18, 0xFB	; 251
     384:	3f 4f       	sbci	r19, 0xFF	; 255
     386:	f9 01       	movw	r30, r18
     388:	41 91       	ld	r20, Z+
     38a:	51 91       	ld	r21, Z+
     38c:	9f 01       	movw	r18, r30
        va_list ap;
        va_start(ap, fmt);
        vsnprintf(buf, sizeof(buf), fmt, ap);
     38e:	60 e5       	ldi	r22, 0x50	; 80
     390:	70 e0       	ldi	r23, 0x00	; 0
     392:	83 e2       	ldi	r24, 0x23	; 35
     394:	98 e3       	ldi	r25, 0x38	; 56
     396:	0e 94 39 14 	call	0x2872	; 0x2872 <vsnprintf>
        va_end(ap);
        buf[DIAG_BUFSIZE -1] = '\0'; // ensure null terminated
     39a:	10 92 72 38 	sts	0x3872, r1	; 0x803872 <buf+0x4f>
        diag_puts(buf);
     39e:	83 e2       	ldi	r24, 0x23	; 35
     3a0:	98 e3       	ldi	r25, 0x38	; 56
     3a2:	0e 94 b5 00 	call	0x16a	; 0x16a <diag_puts>
        diag_puts("\r\n");
     3a6:	87 e9       	ldi	r24, 0x97	; 151
     3a8:	91 eb       	ldi	r25, 0xB1	; 177
     3aa:	0e 94 b5 00 	call	0x16a	; 0x16a <diag_puts>
    }
     3ae:	df 91       	pop	r29
     3b0:	cf 91       	pop	r28
     3b2:	08 95       	ret

000003b4 <pin_check>:
#define F_CPU 10000000 /* 10MHz */
#include <util/delay.h>

static bool pin_check(char portname, PORT_t *port, uint8_t pin)
{
    uint8_t bm = 1<<pin;
     3b4:	21 e0       	ldi	r18, 0x01	; 1
     3b6:	30 e0       	ldi	r19, 0x00	; 0
     3b8:	04 2e       	mov	r0, r20
     3ba:	01 c0       	rjmp	.+2      	; 0x3be <pin_check+0xa>
     3bc:	22 0f       	add	r18, r18
     3be:	0a 94       	dec	r0
     3c0:	ea f7       	brpl	.-6      	; 0x3bc <pin_check+0x8>
    // Set the pin as an input
    port->DIRCLR = bm;
     3c2:	fb 01       	movw	r30, r22
     3c4:	22 83       	std	Z+2, r18	; 0x02
     3c6:	e3 ec       	ldi	r30, 0xC3	; 195
     3c8:	f9 e0       	ldi	r31, 0x09	; 9
     3ca:	31 97       	sbiw	r30, 0x01	; 1
     3cc:	f1 f7       	brne	.-4      	; 0x3ca <pin_check+0x16>
     3ce:	00 c0       	rjmp	.+0      	; 0x3d0 <pin_check+0x1c>
     3d0:	00 00       	nop
    // Wait a very tiny time
    _delay_ms(1);
    bool state = (port->IN & bm);
     3d2:	fb 01       	movw	r30, r22
     3d4:	90 85       	ldd	r25, Z+8	; 0x08
    if (state) {
     3d6:	29 23       	and	r18, r25
     3d8:	b1 f0       	breq	.+44     	; 0x406 <__LOCK_REGION_LENGTH__+0x6>
        // High!
        diag_println("motor pin_check FAIL: port %c %d stuck high",
     3da:	1f 92       	push	r1
     3dc:	4f 93       	push	r20
     3de:	28 2f       	mov	r18, r24
     3e0:	08 2e       	mov	r0, r24
     3e2:	00 0c       	add	r0, r0
     3e4:	33 0b       	sbc	r19, r19
     3e6:	3f 93       	push	r19
     3e8:	8f 93       	push	r24
     3ea:	82 ee       	ldi	r24, 0xE2	; 226
     3ec:	9e ea       	ldi	r25, 0xAE	; 174
     3ee:	9f 93       	push	r25
     3f0:	8f 93       	push	r24
     3f2:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
     3f6:	0f 90       	pop	r0
     3f8:	0f 90       	pop	r0
     3fa:	0f 90       	pop	r0
     3fc:	0f 90       	pop	r0
     3fe:	0f 90       	pop	r0
     400:	0f 90       	pop	r0
            portname, pin);
        return false;
     402:	80 e0       	ldi	r24, 0x00	; 0
     404:	08 95       	ret
    }
    return true;
     406:	81 e0       	ldi	r24, 0x01	; 1
}
     408:	08 95       	ret

0000040a <init_bind_mode>:
    radio_show_diagnostics(now);
}

static void init_bind_mode()
{
    diag_println("initialising bind mode");
     40a:	8e e0       	ldi	r24, 0x0E	; 14
     40c:	9f ea       	ldi	r25, 0xAF	; 175
     40e:	9f 93       	push	r25
     410:	8f 93       	push	r24
     412:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
    radio_state.state = RADIO_STATE_BIND;
     416:	10 92 bc 38 	sts	0x38BC, r1	; 0x8038bc <radio_state+0x3c>
     41a:	e8 e8       	ldi	r30, 0x88	; 136
     41c:	f8 e3       	ldi	r31, 0x38	; 56
     41e:	0f 90       	pop	r0
     420:	0f 90       	pop	r0
    // Set up the hop-table with the bind channels.
    for (uint8_t i=0; i< NR_HOP_CHANNELS; i++) {
     422:	80 e0       	ldi	r24, 0x00	; 0
        radio_state.hop_channels[i] = (i & 2) ? 0x0d : 0x8c;
     424:	81 fd       	sbrc	r24, 1
     426:	02 c0       	rjmp	.+4      	; 0x42c <init_bind_mode+0x22>
     428:	9c e8       	ldi	r25, 0x8C	; 140
     42a:	01 c0       	rjmp	.+2      	; 0x42e <init_bind_mode+0x24>
     42c:	9d e0       	ldi	r25, 0x0D	; 13
     42e:	91 93       	st	Z+, r25
static void init_bind_mode()
{
    diag_println("initialising bind mode");
    radio_state.state = RADIO_STATE_BIND;
    // Set up the hop-table with the bind channels.
    for (uint8_t i=0; i< NR_HOP_CHANNELS; i++) {
     430:	8f 5f       	subi	r24, 0xFF	; 255
     432:	80 31       	cpi	r24, 0x10	; 16
     434:	b9 f7       	brne	.-18     	; 0x424 <init_bind_mode+0x1a>
        radio_state.hop_channels[i] = (i & 2) ? 0x0d : 0x8c;
    }
#ifdef ENABLE_DIAG
    diag_puts("Bind mode hopping pattern: ");
     436:	85 e2       	ldi	r24, 0x25	; 37
     438:	9f ea       	ldi	r25, 0xAF	; 175
     43a:	0e 94 b5 00 	call	0x16a	; 0x16a <diag_puts>
    dump_buf(radio_state.hop_channels, NR_HOP_CHANNELS);
     43e:	60 e1       	ldi	r22, 0x10	; 16
     440:	88 e8       	ldi	r24, 0x88	; 136
     442:	98 e3       	ldi	r25, 0x38	; 56
     444:	0e 94 72 01 	call	0x2e4	; 0x2e4 <dump_buf>
    diag_println("tx_id_saved: ");
     448:	81 e4       	ldi	r24, 0x41	; 65
     44a:	9f ea       	ldi	r25, 0xAF	; 175
     44c:	9f 93       	push	r25
     44e:	8f 93       	push	r24
     450:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
    dump_buf(radio_state.tx_id_saved, 4);
     454:	0f 90       	pop	r0
     456:	0f 90       	pop	r0
     458:	64 e0       	ldi	r22, 0x04	; 4
     45a:	88 eb       	ldi	r24, 0xB8	; 184
     45c:	98 e3       	ldi	r25, 0x38	; 56
     45e:	0c 94 72 01 	jmp	0x2e4	; 0x2e4 <dump_buf>

00000462 <handle_bind_complete>:
    }
    diag_puts("\r\n");
}

static void handle_bind_complete()
{
     462:	cf 93       	push	r28
     464:	df 93       	push	r29
    diag_println("Bind completed.");
     466:	8f e4       	ldi	r24, 0x4F	; 79
     468:	9f ea       	ldi	r25, 0xAF	; 175
     46a:	9f 93       	push	r25
     46c:	8f 93       	push	r24
     46e:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
    diag_print("tx id: ");
     472:	80 ea       	ldi	r24, 0xA0	; 160
     474:	92 eb       	ldi	r25, 0xB2	; 178
     476:	9f 93       	push	r25
     478:	8f 93       	push	r24
     47a:	0e 94 58 01 	call	0x2b0	; 0x2b0 <diag_print>
    dump_buf(radio_state.tx_id, 4);
     47e:	64 e0       	ldi	r22, 0x04	; 4
     480:	80 e8       	ldi	r24, 0x80	; 128
     482:	98 e3       	ldi	r25, 0x38	; 56
     484:	0e 94 72 01 	call	0x2e4	; 0x2e4 <dump_buf>
    // copy the list of hopping channels.
    memcpy(radio_state.hop_channels, radio_state.hop_channels_new,
     488:	c0 e8       	ldi	r28, 0x80	; 128
     48a:	d8 e3       	ldi	r29, 0x38	; 56
     48c:	80 e1       	ldi	r24, 0x10	; 16
     48e:	e8 ea       	ldi	r30, 0xA8	; 168
     490:	f8 e3       	ldi	r31, 0x38	; 56
     492:	a8 e8       	ldi	r26, 0x88	; 136
     494:	b8 e3       	ldi	r27, 0x38	; 56
     496:	01 90       	ld	r0, Z+
     498:	0d 92       	st	X+, r0
     49a:	8a 95       	dec	r24
     49c:	e1 f7       	brne	.-8      	; 0x496 <handle_bind_complete+0x34>
        NR_HOP_CHANNELS);
    diag_print("hop: ");
     49e:	8f e5       	ldi	r24, 0x5F	; 95
     4a0:	9f ea       	ldi	r25, 0xAF	; 175
     4a2:	9f 93       	push	r25
     4a4:	8f 93       	push	r24
     4a6:	0e 94 58 01 	call	0x2b0	; 0x2b0 <diag_print>
    dump_buf(radio_state.hop_channels, NR_HOP_CHANNELS);
     4aa:	60 e1       	ldi	r22, 0x10	; 16
     4ac:	88 e8       	ldi	r24, 0x88	; 136
     4ae:	98 e3       	ldi	r25, 0x38	; 56
     4b0:	0e 94 72 01 	call	0x2e4	; 0x2e4 <dump_buf>
    radio_state.hop_index = 0;
     4b4:	1d ae       	std	Y+61, r1	; 0x3d
    radio_state.state = RADIO_STATE_HOPPING;
     4b6:	82 e0       	ldi	r24, 0x02	; 2
     4b8:	8c af       	std	Y+60, r24	; 0x3c
    // Save the transmitter id, etc, in nvram.
    nvconfig_save();
     4ba:	0f 90       	pop	r0
     4bc:	0f 90       	pop	r0
     4be:	0f 90       	pop	r0
     4c0:	0f 90       	pop	r0
     4c2:	0f 90       	pop	r0
     4c4:	0f 90       	pop	r0
}
     4c6:	df 91       	pop	r29
     4c8:	cf 91       	pop	r28
    diag_print("hop: ");
    dump_buf(radio_state.hop_channels, NR_HOP_CHANNELS);
    radio_state.hop_index = 0;
    radio_state.state = RADIO_STATE_HOPPING;
    // Save the transmitter id, etc, in nvram.
    nvconfig_save();
     4ca:	0c 94 17 01 	jmp	0x22e	; 0x22e <nvconfig_save>

000004ce <init_a7105_hardware>:
    // Reset to expected value.
    spi_write_byte(0xb, gio_setting);        
}

static void init_a7105_hardware()
{
     4ce:	cf 92       	push	r12
     4d0:	df 92       	push	r13
     4d2:	ef 92       	push	r14
     4d4:	ff 92       	push	r15
     4d6:	0f 93       	push	r16
     4d8:	1f 93       	push	r17
     4da:	cf 93       	push	r28
     4dc:	df 93       	push	r29
     4de:	00 d0       	rcall	.+0      	; 0x4e0 <init_a7105_hardware+0x12>
     4e0:	00 d0       	rcall	.+0      	; 0x4e2 <init_a7105_hardware+0x14>
     4e2:	cd b7       	in	r28, 0x3d	; 61
     4e4:	de b7       	in	r29, 0x3e	; 62
    // Assume spi is initialised.
    diag_println("Resetting the a7105");
     4e6:	85 e6       	ldi	r24, 0x65	; 101
     4e8:	9f ea       	ldi	r25, 0xAF	; 175
     4ea:	9f 93       	push	r25
     4ec:	8f 93       	push	r24
     4ee:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
     4f2:	83 e2       	ldi	r24, 0x23	; 35
     4f4:	94 ef       	ldi	r25, 0xF4	; 244
     4f6:	01 97       	sbiw	r24, 0x01	; 1
     4f8:	f1 f7       	brne	.-4      	; 0x4f6 <init_a7105_hardware+0x28>
     4fa:	00 c0       	rjmp	.+0      	; 0x4fc <init_a7105_hardware+0x2e>
     4fc:	00 00       	nop
    _delay_ms(25); // Wait for it to be ready, in case we just powered on.
    spi_write_byte(0, 0x00); // Zero - reset register.
     4fe:	60 e0       	ldi	r22, 0x00	; 0
     500:	80 e0       	ldi	r24, 0x00	; 0
     502:	0e 94 a7 05 	call	0xb4e	; 0xb4e <spi_write_byte>
     506:	9f e9       	ldi	r25, 0x9F	; 159
     508:	e6 e8       	ldi	r30, 0x86	; 134
     50a:	f1 e0       	ldi	r31, 0x01	; 1
     50c:	91 50       	subi	r25, 0x01	; 1
     50e:	e0 40       	sbci	r30, 0x00	; 0
     510:	f0 40       	sbci	r31, 0x00	; 0
     512:	e1 f7       	brne	.-8      	; 0x50c <init_a7105_hardware+0x3e>
     514:	00 c0       	rjmp	.+0      	; 0x516 <init_a7105_hardware+0x48>
     516:	00 00       	nop
    _delay_ms(50);
    // Write the ID
    diag_println("Writing 4-byte ID");
     518:	89 e7       	ldi	r24, 0x79	; 121
     51a:	9f ea       	ldi	r25, 0xAF	; 175
     51c:	9f 93       	push	r25
     51e:	8f 93       	push	r24
     520:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
    spi_write_block(0x6, radio_id, 4);
     524:	44 e0       	ldi	r20, 0x04	; 4
     526:	64 e8       	ldi	r22, 0x84	; 132
     528:	7e ea       	ldi	r23, 0xAE	; 174
     52a:	86 e0       	ldi	r24, 0x06	; 6
     52c:	0e 94 5a 06 	call	0xcb4	; 0xcb4 <spi_write_block>
     530:	22 e5       	ldi	r18, 0x52	; 82
     532:	e2 2e       	mov	r14, r18
     534:	2e ea       	ldi	r18, 0xAE	; 174
     536:	f2 2e       	mov	r15, r18
     538:	0f 90       	pop	r0
     53a:	0f 90       	pop	r0
     53c:	0f 90       	pop	r0
     53e:	0f 90       	pop	r0
    0x01, 0x0f // 30 - 31
};

static void program_config()
{
    for (uint8_t addr =0; addr < sizeof(reg_init_values); addr ++) {
     540:	10 e0       	ldi	r17, 0x00	; 0
        uint8_t v = reg_init_values[addr];
     542:	f7 01       	movw	r30, r14
     544:	61 91       	ld	r22, Z+
     546:	7f 01       	movw	r14, r30
        if (v != 0xff) {
     548:	6f 3f       	cpi	r22, 0xFF	; 255
     54a:	19 f0       	breq	.+6      	; 0x552 <init_a7105_hardware+0x84>
            spi_write_byte(addr, v);
     54c:	81 2f       	mov	r24, r17
     54e:	0e 94 a7 05 	call	0xb4e	; 0xb4e <spi_write_byte>
    0x01, 0x0f // 30 - 31
};

static void program_config()
{
    for (uint8_t addr =0; addr < sizeof(reg_init_values); addr ++) {
     552:	1f 5f       	subi	r17, 0xFF	; 255
     554:	12 33       	cpi	r17, 0x32	; 50
     556:	a9 f7       	brne	.-22     	; 0x542 <init_a7105_hardware+0x74>
    0x54, 0x75, 0xc5, 0x2a
    };

static void init_gio1_pin()
{
    diag_println("Configuring GIO1 pin...");
     558:	8b e8       	ldi	r24, 0x8B	; 139
     55a:	9f ea       	ldi	r25, 0xAF	; 175
     55c:	9f 93       	push	r25
     55e:	8f 93       	push	r24
     560:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
    // Bit 1= invert
    // Bits 2-5 = select mode (0= WTR wait until ready, 0xc = inhibit)
    // We should initially have no received data, so it
    // Should go low  as soon as we enable.
    uint8_t gio_setting = 0x1; // This is what we want to program.   
    spi_write_byte(0xb, gio_setting);    
     564:	61 e0       	ldi	r22, 0x01	; 1
     566:	8b e0       	ldi	r24, 0x0B	; 11
     568:	0e 94 a7 05 	call	0xb4e	; 0xb4e <spi_write_byte>
    uint8_t in0 = (GIO1_PORT->IN & GIO1_bm);
     56c:	00 91 08 04 	lds	r16, 0x0408	; 0x800408 <CSWTCH.12+0x7f5571>
     570:	04 70       	andi	r16, 0x04	; 4
    spi_write_byte(0xb, gio_setting | 0x2); // Enable invert bit    
     572:	63 e0       	ldi	r22, 0x03	; 3
     574:	8b e0       	ldi	r24, 0x0B	; 11
     576:	0e 94 a7 05 	call	0xb4e	; 0xb4e <spi_write_byte>
    uint8_t in1 = (GIO1_PORT->IN & GIO1_bm);
     57a:	10 91 08 04 	lds	r17, 0x0408	; 0x800408 <CSWTCH.12+0x7f5571>
     57e:	14 70       	andi	r17, 0x04	; 4
    diag_println(" in0=%02x in1=%02x", (int) in0, (int) in1);
     580:	1f 92       	push	r1
     582:	1f 93       	push	r17
     584:	1f 92       	push	r1
     586:	0f 93       	push	r16
     588:	83 ea       	ldi	r24, 0xA3	; 163
     58a:	9f ea       	ldi	r25, 0xAF	; 175
     58c:	9f 93       	push	r25
     58e:	8f 93       	push	r24
     590:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
    if (in0 == in1) {
     594:	cd bf       	out	0x3d, r28	; 61
     596:	de bf       	out	0x3e, r29	; 62
     598:	01 13       	cpse	r16, r17
     59a:	0a c0       	rjmp	.+20     	; 0x5b0 <init_a7105_hardware+0xe2>
        // This should really not happen
        diag_println("GIO1 pin does not appear to work");
     59c:	86 eb       	ldi	r24, 0xB6	; 182
     59e:	9f ea       	ldi	r25, 0xAF	; 175
     5a0:	9f 93       	push	r25
     5a2:	8f 93       	push	r24
     5a4:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
        epic_fail("GIO1 pin fail");        
     5a8:	87 ed       	ldi	r24, 0xD7	; 215
     5aa:	9f ea       	ldi	r25, 0xAF	; 175
     5ac:	0e 94 d0 00 	call	0x1a0	; 0x1a0 <epic_fail>
    }
    // Reset to expected value.
    spi_write_byte(0xb, gio_setting);        
     5b0:	61 e0       	ldi	r22, 0x01	; 1
     5b2:	8b e0       	ldi	r24, 0x0B	; 11
     5b4:	0e 94 a7 05 	call	0xb4e	; 0xb4e <spi_write_byte>
    // diag_println("Register dump after reset");
    // register_dump();
    // program config registers
    program_config();
    init_gio1_pin();
    diag_println("Register dump after programming");
     5b8:	85 ee       	ldi	r24, 0xE5	; 229
     5ba:	9f ea       	ldi	r25, 0xAF	; 175
     5bc:	9f 93       	push	r25
     5be:	8f 93       	push	r24
     5c0:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
    register_dump();
     5c4:	0e 94 97 01 	call	0x32e	; 0x32e <register_dump>
    spi_strobe(STROBE_STANDBY);
     5c8:	80 ea       	ldi	r24, 0xA0	; 160
     5ca:	0e 94 d5 06 	call	0xdaa	; 0xdaa <spi_strobe>
    diag_println("IF filter bank calibration");
     5ce:	85 e0       	ldi	r24, 0x05	; 5
     5d0:	90 eb       	ldi	r25, 0xB0	; 176
     5d2:	9f 93       	push	r25
     5d4:	8f 93       	push	r24
     5d6:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
    spi_write_byte(0x02, 0x01);
     5da:	61 e0       	ldi	r22, 0x01	; 1
     5dc:	82 e0       	ldi	r24, 0x02	; 2
     5de:	0e 94 a7 05 	call	0xb4e	; 0xb4e <spi_write_byte>
    // Wait for register to auto clear.
    wait_auto_clear(0x02, 0x01);
     5e2:	81 e0       	ldi	r24, 0x01	; 1
     5e4:	0e 94 ef 00 	call	0x1de	; 0x1de <wait_auto_clear.constprop.1>
    diag_println("VCO Current Calibration");
     5e8:	80 e2       	ldi	r24, 0x20	; 32
     5ea:	90 eb       	ldi	r25, 0xB0	; 176
     5ec:	9f 93       	push	r25
     5ee:	8f 93       	push	r24
     5f0:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
    spi_write_byte(0x24, 0x13); //Recomended calibration from A7105 Datasheet
     5f4:	63 e1       	ldi	r22, 0x13	; 19
     5f6:	84 e2       	ldi	r24, 0x24	; 36
     5f8:	0e 94 a7 05 	call	0xb4e	; 0xb4e <spi_write_byte>
    diag_println("VCO bank calibration");
     5fc:	88 e3       	ldi	r24, 0x38	; 56
     5fe:	90 eb       	ldi	r25, 0xB0	; 176
     600:	9f 93       	push	r25
     602:	8f 93       	push	r24
     604:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
	spi_write_byte(0x26, 0x3b);
     608:	6b e3       	ldi	r22, 0x3B	; 59
     60a:	86 e2       	ldi	r24, 0x26	; 38
     60c:	0e 94 a7 05 	call	0xb4e	; 0xb4e <spi_write_byte>
    diag_println("VCO Bank Calibrate channel 0");
     610:	8d e4       	ldi	r24, 0x4D	; 77
     612:	90 eb       	ldi	r25, 0xB0	; 176
     614:	9f 93       	push	r25
     616:	8f 93       	push	r24
     618:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
    spi_write_byte(0x0f, 0); // set channel
     61c:	60 e0       	ldi	r22, 0x00	; 0
     61e:	8f e0       	ldi	r24, 0x0F	; 15
     620:	0e 94 a7 05 	call	0xb4e	; 0xb4e <spi_write_byte>
    spi_write_byte(0x02, 0x02);
     624:	62 e0       	ldi	r22, 0x02	; 2
     626:	82 e0       	ldi	r24, 0x02	; 2
     628:	0e 94 a7 05 	call	0xb4e	; 0xb4e <spi_write_byte>
    wait_auto_clear(0x02, 0x02); 
     62c:	82 e0       	ldi	r24, 0x02	; 2
     62e:	0e 94 ef 00 	call	0x1de	; 0x1de <wait_auto_clear.constprop.1>
    uint8_t cal0 = spi_read_byte(0x25);
     632:	85 e2       	ldi	r24, 0x25	; 37
     634:	0e 94 a5 07 	call	0xf4a	; 0xf4a <spi_read_byte>
    if (cal0 & 0x08) 
     638:	cd bf       	out	0x3d, r28	; 61
     63a:	de bf       	out	0x3e, r29	; 62
     63c:	83 ff       	sbrs	r24, 3
     63e:	08 c0       	rjmp	.+16     	; 0x650 <init_a7105_hardware+0x182>
        diag_println("!!! VCO Calibration fail");
     640:	8a e6       	ldi	r24, 0x6A	; 106
     642:	90 eb       	ldi	r25, 0xB0	; 176
     644:	9f 93       	push	r25
     646:	8f 93       	push	r24
     648:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
     64c:	0f 90       	pop	r0
     64e:	0f 90       	pop	r0
    diag_println("VCO Bank Calibrate channel 0xa0");
     650:	83 e8       	ldi	r24, 0x83	; 131
     652:	90 eb       	ldi	r25, 0xB0	; 176
     654:	9f 93       	push	r25
     656:	8f 93       	push	r24
     658:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
    spi_write_byte(0x0f, 0xa0); // set channel
     65c:	60 ea       	ldi	r22, 0xA0	; 160
     65e:	8f e0       	ldi	r24, 0x0F	; 15
     660:	0e 94 a7 05 	call	0xb4e	; 0xb4e <spi_write_byte>
    spi_write_byte(0x02, 0x02);
     664:	62 e0       	ldi	r22, 0x02	; 2
     666:	82 e0       	ldi	r24, 0x02	; 2
     668:	0e 94 a7 05 	call	0xb4e	; 0xb4e <spi_write_byte>
    wait_auto_clear(0x02, 0x02); 
     66c:	82 e0       	ldi	r24, 0x02	; 2
     66e:	0e 94 ef 00 	call	0x1de	; 0x1de <wait_auto_clear.constprop.1>
    cal0 = spi_read_byte(0x25);
     672:	85 e2       	ldi	r24, 0x25	; 37
     674:	0e 94 a5 07 	call	0xf4a	; 0xf4a <spi_read_byte>
     678:	18 2f       	mov	r17, r24
    diag_println("vco cal a0=%02x", (int) cal0);
     67a:	1f 92       	push	r1
     67c:	8f 93       	push	r24
     67e:	83 ea       	ldi	r24, 0xA3	; 163
     680:	90 eb       	ldi	r25, 0xB0	; 176
     682:	9f 93       	push	r25
     684:	8f 93       	push	r24
     686:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
    if (cal0 & 0x08) 
     68a:	0f 90       	pop	r0
     68c:	0f 90       	pop	r0
     68e:	0f 90       	pop	r0
     690:	0f 90       	pop	r0
     692:	0f 90       	pop	r0
     694:	0f 90       	pop	r0
     696:	13 ff       	sbrs	r17, 3
     698:	08 c0       	rjmp	.+16     	; 0x6aa <init_a7105_hardware+0x1dc>
        diag_println("!!! VCO Calibration fail");
     69a:	8a e6       	ldi	r24, 0x6A	; 106
     69c:	90 eb       	ldi	r25, 0xB0	; 176
     69e:	9f 93       	push	r25
     6a0:	8f 93       	push	r24
     6a2:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
     6a6:	0f 90       	pop	r0
     6a8:	0f 90       	pop	r0
    diag_println("Reset VCO band calibration");
     6aa:	83 eb       	ldi	r24, 0xB3	; 179
     6ac:	90 eb       	ldi	r25, 0xB0	; 176
     6ae:	9f 93       	push	r25
     6b0:	8f 93       	push	r24
     6b2:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
    spi_write_byte( 0x25, 0x08 );
     6b6:	68 e0       	ldi	r22, 0x08	; 8
     6b8:	85 e2       	ldi	r24, 0x25	; 37
     6ba:	0e 94 a7 05 	call	0xb4e	; 0xb4e <spi_write_byte>

    diag_println("Strobe standby");
     6be:	8e ec       	ldi	r24, 0xCE	; 206
     6c0:	90 eb       	ldi	r25, 0xB0	; 176
     6c2:	9f 93       	push	r25
     6c4:	8f 93       	push	r24
     6c6:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
    spi_strobe(STROBE_STANDBY);
     6ca:	80 ea       	ldi	r24, 0xA0	; 160
     6cc:	0e 94 d5 06 	call	0xdaa	; 0xdaa <spi_strobe>
    diag_println("Final register dump");
     6d0:	8d ed       	ldi	r24, 0xDD	; 221
     6d2:	90 eb       	ldi	r25, 0xB0	; 176
     6d4:	9f 93       	push	r25
     6d6:	8f 93       	push	r24
     6d8:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
    register_dump();
     6dc:	0e 94 97 01 	call	0x32e	; 0x32e <register_dump>
    uint8_t id_readback[4];
    spi_read_block(0x06, id_readback,4);
     6e0:	44 e0       	ldi	r20, 0x04	; 4
     6e2:	be 01       	movw	r22, r28
     6e4:	6f 5f       	subi	r22, 0xFF	; 255
     6e6:	7f 4f       	sbci	r23, 0xFF	; 255
     6e8:	86 e0       	ldi	r24, 0x06	; 6
     6ea:	0e 94 48 08 	call	0x1090	; 0x1090 <spi_read_block>
     6ee:	9e 01       	movw	r18, r28
     6f0:	2f 5f       	subi	r18, 0xFF	; 255
     6f2:	3f 4f       	sbci	r19, 0xFF	; 255
     6f4:	69 01       	movw	r12, r18
     6f6:	0f 90       	pop	r0
     6f8:	0f 90       	pop	r0
     6fa:	0f 90       	pop	r0
     6fc:	0f 90       	pop	r0
     6fe:	0f 90       	pop	r0
     700:	0f 90       	pop	r0
    for (int i=0; i<4; i++) {
     702:	00 e0       	ldi	r16, 0x00	; 0
     704:	10 e0       	ldi	r17, 0x00	; 0
        diag_println("id_readback[%d]=%02x", i, id_readback[i]);
     706:	91 ef       	ldi	r25, 0xF1	; 241
     708:	e9 2e       	mov	r14, r25
     70a:	90 eb       	ldi	r25, 0xB0	; 176
     70c:	f9 2e       	mov	r15, r25
     70e:	f6 01       	movw	r30, r12
     710:	81 91       	ld	r24, Z+
     712:	6f 01       	movw	r12, r30
     714:	1f 92       	push	r1
     716:	8f 93       	push	r24
     718:	1f 93       	push	r17
     71a:	0f 93       	push	r16
     71c:	ff 92       	push	r15
     71e:	ef 92       	push	r14
     720:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
    spi_strobe(STROBE_STANDBY);
    diag_println("Final register dump");
    register_dump();
    uint8_t id_readback[4];
    spi_read_block(0x06, id_readback,4);
    for (int i=0; i<4; i++) {
     724:	0f 5f       	subi	r16, 0xFF	; 255
     726:	1f 4f       	sbci	r17, 0xFF	; 255
     728:	0f 90       	pop	r0
     72a:	0f 90       	pop	r0
     72c:	0f 90       	pop	r0
     72e:	0f 90       	pop	r0
     730:	0f 90       	pop	r0
     732:	0f 90       	pop	r0
     734:	04 30       	cpi	r16, 0x04	; 4
     736:	11 05       	cpc	r17, r1
     738:	51 f7       	brne	.-44     	; 0x70e <init_a7105_hardware+0x240>
        diag_println("id_readback[%d]=%02x", i, id_readback[i]);
    }
    
    if (memcmp(id_readback, radio_id,4) != 0) {
     73a:	44 e0       	ldi	r20, 0x04	; 4
     73c:	50 e0       	ldi	r21, 0x00	; 0
     73e:	64 e8       	ldi	r22, 0x84	; 132
     740:	7e ea       	ldi	r23, 0xAE	; 174
     742:	ce 01       	movw	r24, r28
     744:	01 96       	adiw	r24, 0x01	; 1
     746:	0e 94 1d 14 	call	0x283a	; 0x283a <memcmp>
     74a:	89 2b       	or	r24, r25
     74c:	21 f0       	breq	.+8      	; 0x756 <init_a7105_hardware+0x288>
        epic_fail("ERROR: Wrong ID readback");
     74e:	86 e0       	ldi	r24, 0x06	; 6
     750:	91 eb       	ldi	r25, 0xB1	; 177
     752:	0e 94 d0 00 	call	0x1a0	; 0x1a0 <epic_fail>
    }
    // Check channel is reading back.
    uint8_t b = spi_read_byte(0x0f);
     756:	8f e0       	ldi	r24, 0x0F	; 15
     758:	0e 94 a5 07 	call	0xf4a	; 0xf4a <spi_read_byte>
    if (b != 0xa0) {
     75c:	80 3a       	cpi	r24, 0xA0	; 160
     75e:	61 f0       	breq	.+24     	; 0x778 <init_a7105_hardware+0x2aa>
        diag_println("channel value %02x should be a0",
     760:	1f 92       	push	r1
     762:	8f 93       	push	r24
     764:	8f e1       	ldi	r24, 0x1F	; 31
     766:	91 eb       	ldi	r25, 0xB1	; 177
     768:	9f 93       	push	r25
     76a:	8f 93       	push	r24
     76c:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
            b);
        epic_fail("Fail to read channel back");
     770:	8f e3       	ldi	r24, 0x3F	; 63
     772:	91 eb       	ldi	r25, 0xB1	; 177
     774:	0e 94 d0 00 	call	0x1a0	; 0x1a0 <epic_fail>
    }
    // Init send buffer with all 0xff
    // For sending telemetry - make sure the unused parts of the
    // telemetry packet are 0xff so they do not confuse the tx
    spi_strobe(STROBE_WRITE_PTR_RESET);
     778:	80 ee       	ldi	r24, 0xE0	; 224
     77a:	0e 94 d5 06 	call	0xdaa	; 0xdaa <spi_strobe>
     77e:	09 ef       	ldi	r16, 0xF9	; 249
     780:	18 e3       	ldi	r17, 0x38	; 56
     782:	8e e1       	ldi	r24, 0x1E	; 30
     784:	e8 2e       	mov	r14, r24
     786:	89 e3       	ldi	r24, 0x39	; 57
     788:	f8 2e       	mov	r15, r24
    for (uint8_t j=0; j<RADIO_PACKET_LEN; j++) {
        spi_write_byte(0x5, 0xff);
     78a:	6f ef       	ldi	r22, 0xFF	; 255
     78c:	85 e0       	ldi	r24, 0x05	; 5
     78e:	0e 94 a7 05 	call	0xb4e	; 0xb4e <spi_write_byte>
        // Also init telemetry packet in state
        radio_state.telemetry_packet[j] = 0xff;
     792:	8f ef       	ldi	r24, 0xFF	; 255
     794:	f8 01       	movw	r30, r16
     796:	81 93       	st	Z+, r24
     798:	8f 01       	movw	r16, r30
    }
    // Init send buffer with all 0xff
    // For sending telemetry - make sure the unused parts of the
    // telemetry packet are 0xff so they do not confuse the tx
    spi_strobe(STROBE_WRITE_PTR_RESET);
    for (uint8_t j=0; j<RADIO_PACKET_LEN; j++) {
     79a:	ee 16       	cp	r14, r30
     79c:	ff 06       	cpc	r15, r31
     79e:	a9 f7       	brne	.-22     	; 0x78a <init_a7105_hardware+0x2bc>
        spi_write_byte(0x5, 0xff);
        // Also init telemetry packet in state
        radio_state.telemetry_packet[j] = 0xff;
    }    
}
     7a0:	24 96       	adiw	r28, 0x04	; 4
     7a2:	cd bf       	out	0x3d, r28	; 61
     7a4:	de bf       	out	0x3e, r29	; 62
     7a6:	df 91       	pop	r29
     7a8:	cf 91       	pop	r28
     7aa:	1f 91       	pop	r17
     7ac:	0f 91       	pop	r16
     7ae:	ff 90       	pop	r15
     7b0:	ef 90       	pop	r14
     7b2:	df 90       	pop	r13
     7b4:	cf 90       	pop	r12
     7b6:	08 95       	ret

000007b8 <init_interrupts>:
    
    // Timer will run at CLK_PER (10mhz) / 2
    // So 5mhz.
    const uint16_t timeout_ms = ((3800 * 5) / 4 );
    
    diag_println("Initialising interrupts");
     7b8:	89 e5       	ldi	r24, 0x59	; 89
     7ba:	91 eb       	ldi	r25, 0xB1	; 177
     7bc:	9f 93       	push	r25
     7be:	8f 93       	push	r24
     7c0:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
    memset(&radio_counters, 0, sizeof(radio_counters));
     7c4:	88 e0       	ldi	r24, 0x08	; 8
     7c6:	e8 e7       	ldi	r30, 0x78	; 120
     7c8:	f8 e3       	ldi	r31, 0x38	; 56
     7ca:	df 01       	movw	r26, r30
     7cc:	1d 92       	st	X+, r1
     7ce:	8a 95       	dec	r24
     7d0:	e9 f7       	brne	.-6      	; 0x7cc <init_interrupts+0x14>
    uint16_t compare_value = timeout_ms * 5 ; // Must not overflow 16-bit int.
    TCB0.CCMP = compare_value;
     7d2:	e0 e4       	ldi	r30, 0x40	; 64
     7d4:	fa e0       	ldi	r31, 0x0A	; 10
     7d6:	86 ec       	ldi	r24, 0xC6	; 198
     7d8:	9c e5       	ldi	r25, 0x5C	; 92
     7da:	84 87       	std	Z+12, r24	; 0x0c
     7dc:	95 87       	std	Z+13, r25	; 0x0d
    TCB0.INTCTRL = TCB_CAPT_bm; // Turn on irq
     7de:	81 e0       	ldi	r24, 0x01	; 1
     7e0:	85 83       	std	Z+5, r24	; 0x05
    // CTRLB bits 0-2 are the mode, which by default
    // 000 is "periodic interrupt" -which is correct
    TCB0.CTRLB = 0;
     7e2:	11 82       	std	Z+1, r1	; 0x01
    TCB0.CNT = 0;
     7e4:	12 86       	std	Z+10, r1	; 0x0a
     7e6:	13 86       	std	Z+11, r1	; 0x0b
    // CTRLA- select CLK_PER/2 and enable.
    TCB0.CTRLA = TCB_ENABLE_bm | TCB_CLKSEL_CLKDIV2_gc;
     7e8:	83 e0       	ldi	r24, 0x03	; 3
     7ea:	80 83       	st	Z, r24
    /*
     * RX packet interrupt: this should fire on the LOW edge of
     * GIO1 pin
     * assume GIO1_PORT = PORTA.
     */
    PORTA.PIN2CTRL = PORT_ISC_FALLING_gc;    
     7ec:	80 93 12 04 	sts	0x0412, r24	; 0x800412 <CSWTCH.12+0x7f557b>
     7f0:	0f 90       	pop	r0
     7f2:	0f 90       	pop	r0
     7f4:	08 95       	ret

000007f6 <__vector_3>:
        radio_state.e_good_count = 0;
    }
}

ISR(PORTA_PORT_vect)
{
     7f6:	1f 92       	push	r1
     7f8:	0f 92       	push	r0
     7fa:	0f b6       	in	r0, 0x3f	; 63
     7fc:	0f 92       	push	r0
     7fe:	11 24       	eor	r1, r1
     800:	ef 92       	push	r14
     802:	ff 92       	push	r15
     804:	0f 93       	push	r16
     806:	1f 93       	push	r17
     808:	2f 93       	push	r18
     80a:	3f 93       	push	r19
     80c:	4f 93       	push	r20
     80e:	5f 93       	push	r21
     810:	6f 93       	push	r22
     812:	7f 93       	push	r23
     814:	8f 93       	push	r24
     816:	9f 93       	push	r25
     818:	af 93       	push	r26
     81a:	bf 93       	push	r27
     81c:	ef 93       	push	r30
     81e:	ff 93       	push	r31
     820:	cf 93       	push	r28
     822:	df 93       	push	r29
     824:	cd b7       	in	r28, 0x3d	; 61
     826:	de b7       	in	r29, 0x3e	; 62
     828:	a5 97       	sbiw	r28, 0x25	; 37
     82a:	cd bf       	out	0x3d, r28	; 61
     82c:	de bf       	out	0x3e, r29	; 62
    
    // Check the flag on the port - if it is low, then check for reset.
    // pin could legitimately be high, if the interrupt arrived while
    // we were processing a timeout interrupt, in which case, it's
    // too late and we missed it.
    uint8_t bit = PORTA.IN & GIO1_bm;
     82e:	80 91 08 04 	lds	r24, 0x0408	; 0x800408 <CSWTCH.12+0x7f5571>
    if (! bit) {
     832:	82 fd       	sbrc	r24, 2
     834:	b6 c0       	rjmp	.+364    	; 0x9a2 <__DATA_REGION_LENGTH__+0x1a2>
        if (radio_state.tx_active) {
     836:	80 91 21 39 	lds	r24, 0x3921	; 0x803921 <radio_state+0xa1>
     83a:	88 23       	and	r24, r24
     83c:	31 f0       	breq	.+12     	; 0x84a <__DATA_REGION_LENGTH__+0x4a>
 
static void maybe_diag_putc(char c)
{
    // Write character to tx for diag, only if enabled.
#if 1
    USART0.TXDATAL = c;
     83e:	84 e5       	ldi	r24, 0x54	; 84
     840:	80 93 02 08 	sts	0x0802, r24	; 0x800802 <CSWTCH.12+0x7f596b>

static void do_tx_complete()
{
    maybe_diag_putc('T');
    // reactivate the receiver 
    enable_rx();
     844:	0e 94 4e 01 	call	0x29c	; 0x29c <enable_rx>
     848:	ac c0       	rjmp	.+344    	; 0x9a2 <__DATA_REGION_LENGTH__+0x1a2>
{
    // We received something, check what it is,
    // is it a packet we care about?
    uint8_t buf[RADIO_PACKET_LEN];
    // Get the flags
    uint8_t modeflags = spi_read_byte(0);
     84a:	80 e0       	ldi	r24, 0x00	; 0
     84c:	0e 94 a5 07 	call	0xf4a	; 0xf4a <spi_read_byte>
    // Check packet type.
    uint8_t packet_type = buf[0];
    uint8_t state = radio_state.state;
    bool ok = false;
    bool do_hop = false;
    if ((modeflags & errflags)) {
     850:	80 76       	andi	r24, 0x60	; 96
     852:	29 f0       	breq	.+10     	; 0x85e <__DATA_REGION_LENGTH__+0x5e>
 
static void maybe_diag_putc(char c)
{
    // Write character to tx for diag, only if enabled.
#if 1
    USART0.TXDATAL = c;
     854:	85 e6       	ldi	r24, 0x65	; 101
     856:	80 93 02 08 	sts	0x0802, r24	; 0x800802 <CSWTCH.12+0x7f596b>
    uint8_t state = radio_state.state;
    bool ok = false;
    bool do_hop = false;
    if ((modeflags & errflags)) {
        maybe_diag_putc('e');
        do_hop = true; // Assume that the error packet was for us.
     85a:	81 e0       	ldi	r24, 0x01	; 1
     85c:	2d c0       	rjmp	.+90     	; 0x8b8 <__DATA_REGION_LENGTH__+0xb8>
    // I think flag 0x01 (bit 0) is the "read data ready" flag, active low,doc is not clear about this.
    // bits 5 and 6 are read error flags.
    uint8_t errflags = (1 << 6) | (1 << 5);

    // Check packet type.
    uint8_t packet_type = buf[0];
     85e:	19 81       	ldd	r17, Y+1	; 0x01
    uint8_t state = radio_state.state;
     860:	00 91 bc 38 	lds	r16, 0x38BC	; 0x8038bc <radio_state+0x3c>
    bool do_hop = false;
    if ((modeflags & errflags)) {
        maybe_diag_putc('e');
        do_hop = true; // Assume that the error packet was for us.
    } else {
        spi_strobe_then_read_block(STROBE_READ_PTR_RESET,
     864:	2b e1       	ldi	r18, 0x1B	; 27
     866:	ae 01       	movw	r20, r28
     868:	4f 5f       	subi	r20, 0xFF	; 255
     86a:	5f 4f       	sbci	r21, 0xFF	; 255
     86c:	65 e0       	ldi	r22, 0x05	; 5
     86e:	80 ef       	ldi	r24, 0xF0	; 240
     870:	0e 94 0b 08 	call	0x1016	; 0x1016 <spi_strobe_then_read_block>
            0x5, // address to read packet data.
            buf, RADIO_PACKET_SIGNIFICANT_LEN);
        // If it has our tx_id, it's always important.
        // Packet type is checked in main receive function
        if (memcmp(& (buf[1]), radio_state.tx_id, 4) == 0) {
     874:	44 e0       	ldi	r20, 0x04	; 4
     876:	50 e0       	ldi	r21, 0x00	; 0
     878:	60 e8       	ldi	r22, 0x80	; 128
     87a:	78 e3       	ldi	r23, 0x38	; 56
     87c:	ce 01       	movw	r24, r28
     87e:	02 96       	adiw	r24, 0x02	; 2
     880:	0e 94 1d 14 	call	0x283a	; 0x283a <memcmp>
     884:	7c 01       	movw	r14, r24
            do_hop = true;
        }
        
        // If we are in bind mode, bind packets are important, 
        // But so are sticks packets.
        if (state == RADIO_STATE_BIND) {
     886:	01 11       	cpse	r16, r1
     888:	11 c0       	rjmp	.+34     	; 0x8ac <__DATA_REGION_LENGTH__+0xac>
            if ((packet_type == PACKET_TYPE_BIND1) || (packet_type == PACKET_TYPE_BIND1) || 
     88a:	1b 3b       	cpi	r17, 0xBB	; 187
     88c:	b9 f0       	breq	.+46     	; 0x8bc <__DATA_REGION_LENGTH__+0xbc>
     88e:	18 35       	cpi	r17, 0x58	; 88
     890:	a9 f0       	breq	.+42     	; 0x8bc <__DATA_REGION_LENGTH__+0xbc>
                ok = true;
                do_hop = true;
            }
        }
        // Do this *in* the interrupt so we can send a response asap.
        if ((state == RADIO_STATE_BIND) && (packet_type == PACKET_TYPE_BIND2)) {
     892:	1c 3b       	cpi	r17, 0xBC	; 188
     894:	59 f4       	brne	.+22     	; 0x8ac <__DATA_REGION_LENGTH__+0xac>
    // Example stage 2: BC 44 2A 37 77 25 31 91 41 02 00 FF
    uint8_t b9 = buf[9];
    uint8_t response = 0;
    // Check we actually have the tx id saved.
    // Do not send responses too soon.
    if (memcmp(buf+1, radio_state.tx_id, 4) != 0) {
     896:	44 e0       	ldi	r20, 0x04	; 4
     898:	50 e0       	ldi	r21, 0x00	; 0
     89a:	60 e8       	ldi	r22, 0x80	; 128
     89c:	78 e3       	ldi	r23, 0x38	; 56
     89e:	ce 01       	movw	r24, r28
     8a0:	02 96       	adiw	r24, 0x02	; 2
     8a2:	0e 94 1d 14 	call	0x283a	; 0x283a <memcmp>
     8a6:	89 2b       	or	r24, r25
     8a8:	09 f4       	brne	.+2      	; 0x8ac <__DATA_REGION_LENGTH__+0xac>
     8aa:	98 c0       	rjmp	.+304    	; 0x9dc <__DATA_REGION_LENGTH__+0x1dc>
        }
        // Do this *in* the interrupt so we can send a response asap.
        if ((state == RADIO_STATE_BIND) && (packet_type == PACKET_TYPE_BIND2)) {
            irq_prepare_bind_response(buf);
        }
        if (!ok) maybe_diag_putc('0');
     8ac:	ef 28       	or	r14, r15
     8ae:	31 f0       	breq	.+12     	; 0x8bc <__DATA_REGION_LENGTH__+0xbc>
 
static void maybe_diag_putc(char c)
{
    // Write character to tx for diag, only if enabled.
#if 1
    USART0.TXDATAL = c;
     8b0:	80 e3       	ldi	r24, 0x30	; 48
     8b2:	80 93 02 08 	sts	0x0802, r24	; 0x800802 <CSWTCH.12+0x7f596b>
     8b6:	80 e0       	ldi	r24, 0x00	; 0
     8b8:	10 e0       	ldi	r17, 0x00	; 0
     8ba:	02 c0       	rjmp	.+4      	; 0x8c0 <__DATA_REGION_LENGTH__+0xc0>
        }
        // Do this *in* the interrupt so we can send a response asap.
        if ((state == RADIO_STATE_BIND) && (packet_type == PACKET_TYPE_BIND2)) {
            irq_prepare_bind_response(buf);
        }
        if (!ok) maybe_diag_putc('0');
     8bc:	81 e0       	ldi	r24, 0x01	; 1
     8be:	11 e0       	ldi	r17, 0x01	; 1
    }
    uint8_t rx_channel = radio_state.current_channel;
     8c0:	00 91 bf 38 	lds	r16, 0x38BF	; 0x8038bf <radio_state+0x3f>
    if (do_hop) {
     8c4:	88 23       	and	r24, r24
     8c6:	b1 f0       	breq	.+44     	; 0x8f4 <__DATA_REGION_LENGTH__+0xf4>
        // GOOD packet.
        hop_to_next_channel(1);
     8c8:	81 e0       	ldi	r24, 0x01	; 1
     8ca:	0e 94 9e 00 	call	0x13c	; 0x13c <hop_to_next_channel>
        radio_counters.rx += 1;
     8ce:	80 91 78 38 	lds	r24, 0x3878	; 0x803878 <radio_counters>
     8d2:	90 91 79 38 	lds	r25, 0x3879	; 0x803879 <radio_counters+0x1>
     8d6:	01 96       	adiw	r24, 0x01	; 1
     8d8:	80 93 78 38 	sts	0x3878, r24	; 0x803878 <radio_counters>
     8dc:	90 93 79 38 	sts	0x3879, r25	; 0x803879 <radio_counters+0x1>
static void reset_timeout()
{
    // Reset the counter AND clear the irq flag
    // So that a pending interrupt won't trigger until the timeout
    // expires again
    TCB0.CNT = 0;
     8e0:	10 92 4a 0a 	sts	0x0A4A, r1	; 0x800a4a <CSWTCH.12+0x7f5bb3>
     8e4:	10 92 4b 0a 	sts	0x0A4B, r1	; 0x800a4b <CSWTCH.12+0x7f5bb4>
    TCB0.INTFLAGS |= TCB_CAPT_bm;
     8e8:	80 91 46 0a 	lds	r24, 0x0A46	; 0x800a46 <CSWTCH.12+0x7f5baf>
     8ec:	81 60       	ori	r24, 0x01	; 1
     8ee:	80 93 46 0a 	sts	0x0A46, r24	; 0x800a46 <CSWTCH.12+0x7f5baf>
     8f2:	03 c0       	rjmp	.+6      	; 0x8fa <__DATA_REGION_LENGTH__+0xfa>
        hop_to_next_channel(1);
        radio_counters.rx += 1;
        reset_timeout();         
    } else {
        // BAD packet; stay on the same channel, do not reset timer.
        hop_to_next_channel(0);
     8f4:	80 e0       	ldi	r24, 0x00	; 0
     8f6:	0e 94 9e 00 	call	0x13c	; 0x13c <hop_to_next_channel>
    }
    // If we have any telemetry to send, do it now.
    if (radio_state.telemetry_packet_is_valid) {
     8fa:	80 91 1e 39 	lds	r24, 0x391E	; 0x80391e <radio_state+0x9e>
     8fe:	88 23       	and	r24, r24
     900:	d1 f0       	breq	.+52     	; 0x936 <__DATA_REGION_LENGTH__+0x136>
}

static void do_tx(uint8_t channel)
{
    // Transmit packet in radio_state.telemetry_packet
    spi_strobe(STROBE_STANDBY);
     902:	80 ea       	ldi	r24, 0xA0	; 160
     904:	0e 94 d5 06 	call	0xdaa	; 0xdaa <spi_strobe>
    // Write data
    spi_strobe_then_write_block(STROBE_WRITE_PTR_RESET,
     908:	26 e1       	ldi	r18, 0x16	; 22
     90a:	49 ef       	ldi	r20, 0xF9	; 249
     90c:	58 e3       	ldi	r21, 0x38	; 56
     90e:	65 e0       	ldi	r22, 0x05	; 5
     910:	80 ee       	ldi	r24, 0xE0	; 224
     912:	0e 94 1d 06 	call	0xc3a	; 0xc3a <spi_strobe_then_write_block>
        0x5, radio_state.telemetry_packet, RADIO_TELEMETRY_SIGNIFICANT_LEN);
    // Set tx channel
    spi_write_byte(0x0f, channel);
     916:	60 2f       	mov	r22, r16
     918:	8f e0       	ldi	r24, 0x0F	; 15
     91a:	0e 94 a7 05 	call	0xb4e	; 0xb4e <spi_write_byte>
    spi_strobe(STROBE_TX);
     91e:	80 ed       	ldi	r24, 0xD0	; 208
     920:	0e 94 d5 06 	call	0xdaa	; 0xdaa <spi_strobe>
    radio_state.tx_active = true;
     924:	81 e0       	ldi	r24, 0x01	; 1
     926:	80 93 21 39 	sts	0x3921, r24	; 0x803921 <radio_state+0xa1>
    radio_state.telemetry_packet_is_valid = false; // consumed.
     92a:	10 92 1e 39 	sts	0x391E, r1	; 0x80391e <radio_state+0x9e>
 
static void maybe_diag_putc(char c)
{
    // Write character to tx for diag, only if enabled.
#if 1
    USART0.TXDATAL = c;
     92e:	84 e7       	ldi	r24, 0x74	; 116
     930:	80 93 02 08 	sts	0x0802, r24	; 0x800802 <CSWTCH.12+0x7f596b>
     934:	02 c0       	rjmp	.+4      	; 0x93a <__DATA_REGION_LENGTH__+0x13a>
    }
    // If we have any telemetry to send, do it now.
    if (radio_state.telemetry_packet_is_valid) {
        do_tx(rx_channel);
    } else {
        enable_rx();
     936:	0e 94 4e 01 	call	0x29c	; 0x29c <enable_rx>
    }
    
    if (ok) {
     93a:	11 23       	and	r17, r17
     93c:	e1 f0       	breq	.+56     	; 0x976 <__DATA_REGION_LENGTH__+0x176>
        // If radio_state.packet does not already contain a packet,
        // then copy the packet there, otherwise, drop packet.
        if (! radio_state.packet_is_valid) {
     93e:	80 91 ed 38 	lds	r24, 0x38ED	; 0x8038ed <radio_state+0x6d>
     942:	81 11       	cpse	r24, r1
     944:	0e c0       	rjmp	.+28     	; 0x962 <__DATA_REGION_LENGTH__+0x162>
            // Copy packet into buffer for the main loop.
            memcpy(radio_state.packet, buf, RADIO_PACKET_SIGNIFICANT_LEN);
     946:	8b e1       	ldi	r24, 0x1B	; 27
     948:	fe 01       	movw	r30, r28
     94a:	31 96       	adiw	r30, 0x01	; 1
     94c:	a8 ec       	ldi	r26, 0xC8	; 200
     94e:	b8 e3       	ldi	r27, 0x38	; 56
     950:	01 90       	ld	r0, Z+
     952:	0d 92       	st	X+, r0
     954:	8a 95       	dec	r24
     956:	e1 f7       	brne	.-8      	; 0x950 <__DATA_REGION_LENGTH__+0x150>
            radio_state.packet_is_valid = true;
     958:	81 e0       	ldi	r24, 0x01	; 1
     95a:	80 93 ed 38 	sts	0x38ED, r24	; 0x8038ed <radio_state+0x6d>
            radio_state.packet_channel = rx_channel;
     95e:	00 93 c0 38 	sts	0x38C0, r16	; 0x8038c0 <radio_state+0x40>
        } else {
            // Drop the packet contents, but still hop to next channel
        }
        radio_state.missed_packet_count = 0; // successive missed packets.
     962:	10 92 c1 38 	sts	0x38C1, r1	; 0x8038c1 <radio_state+0x41>
 
static void maybe_diag_putc(char c)
{
    // Write character to tx for diag, only if enabled.
#if 1
    USART0.TXDATAL = c;
     966:	81 e3       	ldi	r24, 0x31	; 49
     968:	80 93 02 08 	sts	0x0802, r24	; 0x800802 <CSWTCH.12+0x7f596b>
        } else {
            // Drop the packet contents, but still hop to next channel
        }
        radio_state.missed_packet_count = 0; // successive missed packets.
        maybe_diag_putc('1');
        ++ radio_state.e_good_count;
     96c:	80 91 23 39 	lds	r24, 0x3923	; 0x803923 <radio_state+0xa3>
     970:	8f 5f       	subi	r24, 0xFF	; 255
     972:	80 93 23 39 	sts	0x3923, r24	; 0x803923 <radio_state+0xa3>
    }
    
    update_led();
     976:	0e 94 96 00 	call	0x12c	; 0x12c <update_led>
    master_state.radio_interrupt_ok = 1; // for watchdog
     97a:	81 e0       	ldi	r24, 0x01	; 1
     97c:	80 93 77 38 	sts	0x3877, r24	; 0x803877 <master_state+0x4>
    // Measure error rate for telemetry
    ++ radio_state.e_packet_count;
     980:	80 91 22 39 	lds	r24, 0x3922	; 0x803922 <radio_state+0xa2>
     984:	8f 5f       	subi	r24, 0xFF	; 255
     986:	80 93 22 39 	sts	0x3922, r24	; 0x803922 <radio_state+0xa2>
    if (radio_state.e_packet_count >= 100) {
     98a:	84 36       	cpi	r24, 0x64	; 100
     98c:	50 f0       	brcs	.+20     	; 0x9a2 <__DATA_REGION_LENGTH__+0x1a2>
        // Store error rate.
        radio_state.e_error_rate = 100 - radio_state.e_good_count;
     98e:	90 91 23 39 	lds	r25, 0x3923	; 0x803923 <radio_state+0xa3>
     992:	84 e6       	ldi	r24, 0x64	; 100
     994:	89 1b       	sub	r24, r25
     996:	80 93 24 39 	sts	0x3924, r24	; 0x803924 <radio_state+0xa4>
        // Restart counters.
        radio_state.e_packet_count = 0;
     99a:	10 92 22 39 	sts	0x3922, r1	; 0x803922 <radio_state+0xa2>
        radio_state.e_good_count = 0;
     99e:	10 92 23 39 	sts	0x3923, r1	; 0x803923 <radio_state+0xa3>
            // RX packet.
            do_rx();
        }
    }
    // clear the irq
    PORTA.INTFLAGS = GIO1_bm;
     9a2:	84 e0       	ldi	r24, 0x04	; 4
     9a4:	80 93 09 04 	sts	0x0409, r24	; 0x800409 <CSWTCH.12+0x7f5572>
}
     9a8:	a5 96       	adiw	r28, 0x25	; 37
     9aa:	cd bf       	out	0x3d, r28	; 61
     9ac:	de bf       	out	0x3e, r29	; 62
     9ae:	df 91       	pop	r29
     9b0:	cf 91       	pop	r28
     9b2:	ff 91       	pop	r31
     9b4:	ef 91       	pop	r30
     9b6:	bf 91       	pop	r27
     9b8:	af 91       	pop	r26
     9ba:	9f 91       	pop	r25
     9bc:	8f 91       	pop	r24
     9be:	7f 91       	pop	r23
     9c0:	6f 91       	pop	r22
     9c2:	5f 91       	pop	r21
     9c4:	4f 91       	pop	r20
     9c6:	3f 91       	pop	r19
     9c8:	2f 91       	pop	r18
     9ca:	1f 91       	pop	r17
     9cc:	0f 91       	pop	r16
     9ce:	ff 90       	pop	r15
     9d0:	ef 90       	pop	r14
     9d2:	0f 90       	pop	r0
     9d4:	0f be       	out	0x3f, r0	; 63
     9d6:	0f 90       	pop	r0
     9d8:	1f 90       	pop	r1
     9da:	18 95       	reti
    // BC 44 2A 37 77 FF FF FF FF 00 00 
    // Example stage 1 response: BC 44 2A 37 77 25 31 91 41 01 00 FF
    // Example stage 2 bind packet:
    // BC 44 2A 37 77 25 31 91 41 02 00
    // Example stage 2: BC 44 2A 37 77 25 31 91 41 02 00 FF
    uint8_t b9 = buf[9];
     9dc:	8a 85       	ldd	r24, Y+10	; 0x0a
    // Do not send responses too soon.
    if (memcmp(buf+1, radio_state.tx_id, 4) != 0) {
        // Not saved yet.
        return;
    }
    if (b9 == 0) {
     9de:	81 11       	cpse	r24, r1
     9e0:	27 c0       	rjmp	.+78     	; 0xa30 <__DATA_REGION_LENGTH__+0x230>
        // Send stage 1 response
        response = 1; 
     9e2:	81 e0       	ldi	r24, 0x01	; 1
        response = 2;
    }
    // Build this packet as quickly as we can.
    if (response) {
        // First 5 bytes are identical to the request.
        memcpy(radio_state.telemetry_packet, buf, 5);
     9e4:	95 e0       	ldi	r25, 0x05	; 5
     9e6:	fe 01       	movw	r30, r28
     9e8:	31 96       	adiw	r30, 0x01	; 1
     9ea:	a9 ef       	ldi	r26, 0xF9	; 249
     9ec:	b8 e3       	ldi	r27, 0x38	; 56
     9ee:	01 90       	ld	r0, Z+
     9f0:	0d 92       	st	X+, r0
     9f2:	9a 95       	dec	r25
     9f4:	e1 f7       	brne	.-8      	; 0x9ee <__DATA_REGION_LENGTH__+0x1ee>
        // Add our rx id.
        memcpy(radio_state.telemetry_packet+5, radio_state.rx_id, 4);
     9f6:	40 91 84 38 	lds	r20, 0x3884	; 0x803884 <radio_state+0x4>
     9fa:	50 91 85 38 	lds	r21, 0x3885	; 0x803885 <radio_state+0x5>
     9fe:	60 91 86 38 	lds	r22, 0x3886	; 0x803886 <radio_state+0x6>
     a02:	70 91 87 38 	lds	r23, 0x3887	; 0x803887 <radio_state+0x7>
     a06:	40 93 fe 38 	sts	0x38FE, r20	; 0x8038fe <radio_state+0x7e>
     a0a:	50 93 ff 38 	sts	0x38FF, r21	; 0x8038ff <radio_state+0x7f>
     a0e:	60 93 00 39 	sts	0x3900, r22	; 0x803900 <radio_state+0x80>
     a12:	70 93 01 39 	sts	0x3901, r23	; 0x803901 <radio_state+0x81>
        // Then the "response" byte
        radio_state.telemetry_packet[9] = response;
     a16:	80 93 02 39 	sts	0x3902, r24	; 0x803902 <radio_state+0x82>
        radio_state.telemetry_packet[10] = 0;
     a1a:	10 92 03 39 	sts	0x3903, r1	; 0x803903 <radio_state+0x83>
        // then some ff
        radio_state.telemetry_packet[11] = 0xff;
     a1e:	8f ef       	ldi	r24, 0xFF	; 255
     a20:	80 93 04 39 	sts	0x3904, r24	; 0x803904 <radio_state+0x84>
        radio_state.telemetry_packet[12] = 0xff;
     a24:	80 93 05 39 	sts	0x3905, r24	; 0x803905 <radio_state+0x85>
        
        radio_state.telemetry_packet_is_valid = true;
     a28:	81 e0       	ldi	r24, 0x01	; 1
     a2a:	80 93 1e 39 	sts	0x391E, r24	; 0x80391e <radio_state+0x9e>
     a2e:	3e cf       	rjmp	.-388    	; 0x8ac <__DATA_REGION_LENGTH__+0xac>
    }
    if (b9 == 0) {
        // Send stage 1 response
        response = 1; 
    }
    if ((b9 == 2) && (memcmp(buf+5, radio_state.rx_id, 4) == 0)) {
     a30:	82 30       	cpi	r24, 0x02	; 2
     a32:	09 f0       	breq	.+2      	; 0xa36 <__DATA_REGION_LENGTH__+0x236>
     a34:	3b cf       	rjmp	.-394    	; 0x8ac <__DATA_REGION_LENGTH__+0xac>
     a36:	44 e0       	ldi	r20, 0x04	; 4
     a38:	50 e0       	ldi	r21, 0x00	; 0
     a3a:	64 e8       	ldi	r22, 0x84	; 132
     a3c:	78 e3       	ldi	r23, 0x38	; 56
     a3e:	ce 01       	movw	r24, r28
     a40:	06 96       	adiw	r24, 0x06	; 6
     a42:	0e 94 1d 14 	call	0x283a	; 0x283a <memcmp>
     a46:	89 2b       	or	r24, r25
     a48:	09 f0       	breq	.+2      	; 0xa4c <__DATA_REGION_LENGTH__+0x24c>
     a4a:	30 cf       	rjmp	.-416    	; 0x8ac <__DATA_REGION_LENGTH__+0xac>
        // Send stage 2 response.
        response = 2;
     a4c:	82 e0       	ldi	r24, 0x02	; 2
     a4e:	ca cf       	rjmp	.-108    	; 0x9e4 <__DATA_REGION_LENGTH__+0x1e4>

00000a50 <__vector_13>:
        LED_VPORT->OUT &= ~LED_PIN_bm; // turn off micro gpio
    }
} 

ISR(TCB0_INT_vect)
{
     a50:	1f 92       	push	r1
     a52:	0f 92       	push	r0
     a54:	0f b6       	in	r0, 0x3f	; 63
     a56:	0f 92       	push	r0
     a58:	11 24       	eor	r1, r1
     a5a:	2f 93       	push	r18
     a5c:	3f 93       	push	r19
     a5e:	4f 93       	push	r20
     a60:	5f 93       	push	r21
     a62:	6f 93       	push	r22
     a64:	7f 93       	push	r23
     a66:	8f 93       	push	r24
     a68:	9f 93       	push	r25
     a6a:	af 93       	push	r26
     a6c:	bf 93       	push	r27
     a6e:	ef 93       	push	r30
     a70:	ff 93       	push	r31
    // Handle rx timeout channel hopping.
    // The timer should have its CNT reset to 0 every time we get a
    // real packet, to suppress the timeout
    // Check the INTFLAGS, because it might have been cancelled after
    // the irq was generated (if do_rx was in progress during timeout)
    if (TCB0.INTFLAGS & TCB_CAPT_bm) {
     a72:	80 91 46 0a 	lds	r24, 0x0A46	; 0x800a46 <CSWTCH.12+0x7f5baf>
     a76:	80 ff       	sbrs	r24, 0
     a78:	31 c0       	rjmp	.+98     	; 0xadc <__vector_13+0x8c>
        TCB0.INTFLAGS |= TCB_CAPT_bm; //clear the interrupt flag(to reset TCB0.CNT)
     a7a:	80 91 46 0a 	lds	r24, 0x0A46	; 0x800a46 <CSWTCH.12+0x7f5baf>
     a7e:	81 60       	ori	r24, 0x01	; 1
     a80:	80 93 46 0a 	sts	0x0A46, r24	; 0x800a46 <CSWTCH.12+0x7f5baf>
        radio_counters.missed += 1;
     a84:	80 91 7a 38 	lds	r24, 0x387A	; 0x80387a <radio_counters+0x2>
     a88:	90 91 7b 38 	lds	r25, 0x387B	; 0x80387b <radio_counters+0x3>
     a8c:	01 96       	adiw	r24, 0x01	; 1
     a8e:	80 93 7a 38 	sts	0x387A, r24	; 0x80387a <radio_counters+0x2>
     a92:	90 93 7b 38 	sts	0x387B, r25	; 0x80387b <radio_counters+0x3>
        if ((radio_state.missed_packet_count < 5) || (radio_state.state==RADIO_STATE_BIND)) {
     a96:	80 91 c1 38 	lds	r24, 0x38C1	; 0x8038c1 <radio_state+0x41>
     a9a:	85 30       	cpi	r24, 0x05	; 5
     a9c:	20 f0       	brcs	.+8      	; 0xaa6 <__vector_13+0x56>
     a9e:	80 91 bc 38 	lds	r24, 0x38BC	; 0x8038bc <radio_state+0x3c>
     aa2:	81 11       	cpse	r24, r1
     aa4:	09 c0       	rjmp	.+18     	; 0xab8 <__vector_13+0x68>
            // Try to hop to catch up.
            // Always hop in bind mode.
            hop_to_next_channel(1);
     aa6:	81 e0       	ldi	r24, 0x01	; 1
     aa8:	0e 94 9e 00 	call	0x13c	; 0x13c <hop_to_next_channel>
            radio_state.missed_packet_count += 1; // successive missed packets.
     aac:	80 91 c1 38 	lds	r24, 0x38C1	; 0x8038c1 <radio_state+0x41>
     ab0:	8f 5f       	subi	r24, 0xFF	; 255
     ab2:	80 93 c1 38 	sts	0x38C1, r24	; 0x8038c1 <radio_state+0x41>
     ab6:	03 c0       	rjmp	.+6      	; 0xabe <__vector_13+0x6e>
        } else {
            // Too out of sync, stay on same channel and wait for
            // it to come around again.
            hop_to_next_channel(0);
     ab8:	80 e0       	ldi	r24, 0x00	; 0
     aba:	0e 94 9e 00 	call	0x13c	; 0x13c <hop_to_next_channel>
        }
        enable_rx();    
     abe:	0e 94 4e 01 	call	0x29c	; 0x29c <enable_rx>
 
static void maybe_diag_putc(char c)
{
    // Write character to tx for diag, only if enabled.
#if 1
    USART0.TXDATAL = c;
     ac2:	8e e2       	ldi	r24, 0x2E	; 46
     ac4:	80 93 02 08 	sts	0x0802, r24	; 0x800802 <CSWTCH.12+0x7f596b>
            // it to come around again.
            hop_to_next_channel(0);
        }
        enable_rx();    
        maybe_diag_putc('.');
        update_led();
     ac8:	0e 94 96 00 	call	0x12c	; 0x12c <update_led>
        master_state.radio_interrupt_ok = 1; // for watchdog
     acc:	81 e0       	ldi	r24, 0x01	; 1
     ace:	80 93 77 38 	sts	0x3877, r24	; 0x803877 <master_state+0x4>
        ++ radio_state.e_packet_count; // count mised packets as errors.
     ad2:	80 91 22 39 	lds	r24, 0x3922	; 0x803922 <radio_state+0xa2>
     ad6:	8f 5f       	subi	r24, 0xFF	; 255
     ad8:	80 93 22 39 	sts	0x3922, r24	; 0x803922 <radio_state+0xa2>
    }
}
     adc:	ff 91       	pop	r31
     ade:	ef 91       	pop	r30
     ae0:	bf 91       	pop	r27
     ae2:	af 91       	pop	r26
     ae4:	9f 91       	pop	r25
     ae6:	8f 91       	pop	r24
     ae8:	7f 91       	pop	r23
     aea:	6f 91       	pop	r22
     aec:	5f 91       	pop	r21
     aee:	4f 91       	pop	r20
     af0:	3f 91       	pop	r19
     af2:	2f 91       	pop	r18
     af4:	0f 90       	pop	r0
     af6:	0f be       	out	0x3f, r0	; 63
     af8:	0f 90       	pop	r0
     afa:	1f 90       	pop	r1
     afc:	18 95       	reti

00000afe <__vector_15>:

    master_state.tickcount = 0;
}

ISR(TCD0_OVF_vect)
{
     afe:	1f 92       	push	r1
     b00:	0f 92       	push	r0
     b02:	0f b6       	in	r0, 0x3f	; 63
     b04:	0f 92       	push	r0
     b06:	11 24       	eor	r1, r1
     b08:	8f 93       	push	r24
     b0a:	9f 93       	push	r25
     b0c:	af 93       	push	r26
     b0e:	bf 93       	push	r27
     b10:	ef 93       	push	r30
     b12:	ff 93       	push	r31
    // TCD0 will overflow every 20 ms
    master_state.tickcount += 2;
     b14:	e3 e7       	ldi	r30, 0x73	; 115
     b16:	f8 e3       	ldi	r31, 0x38	; 56
     b18:	80 81       	ld	r24, Z
     b1a:	91 81       	ldd	r25, Z+1	; 0x01
     b1c:	a2 81       	ldd	r26, Z+2	; 0x02
     b1e:	b3 81       	ldd	r27, Z+3	; 0x03
     b20:	02 96       	adiw	r24, 0x02	; 2
     b22:	a1 1d       	adc	r26, r1
     b24:	b1 1d       	adc	r27, r1
     b26:	80 83       	st	Z, r24
     b28:	91 83       	std	Z+1, r25	; 0x01
     b2a:	a2 83       	std	Z+2, r26	; 0x02
     b2c:	b3 83       	std	Z+3, r27	; 0x03
    TCD0.INTFLAGS |= TCD_OVF_bm; //clear the interrupt flag
     b2e:	e0 e8       	ldi	r30, 0x80	; 128
     b30:	fa e0       	ldi	r31, 0x0A	; 10
     b32:	85 85       	ldd	r24, Z+13	; 0x0d
     b34:	81 60       	ori	r24, 0x01	; 1
     b36:	85 87       	std	Z+13, r24	; 0x0d
}
     b38:	ff 91       	pop	r31
     b3a:	ef 91       	pop	r30
     b3c:	bf 91       	pop	r27
     b3e:	af 91       	pop	r26
     b40:	9f 91       	pop	r25
     b42:	8f 91       	pop	r24
     b44:	0f 90       	pop	r0
     b46:	0f be       	out	0x3f, r0	; 63
     b48:	0f 90       	pop	r0
     b4a:	1f 90       	pop	r1
     b4c:	18 95       	reti

00000b4e <spi_write_byte>:
     b4e:	2b 98       	cbi	0x05, 3	; 5
     b50:	06 9a       	sbi	0x00, 6	; 0
     b52:	87 fd       	sbrc	r24, 7
     b54:	0e 9a       	sbi	0x01, 6	; 1
     b56:	87 ff       	sbrs	r24, 7
     b58:	0e 98       	cbi	0x01, 6	; 1
     b5a:	0f 9a       	sbi	0x01, 7	; 1
     b5c:	0f 98       	cbi	0x01, 7	; 1
     b5e:	88 0f       	add	r24, r24
     b60:	87 fd       	sbrc	r24, 7
     b62:	0e 9a       	sbi	0x01, 6	; 1
     b64:	87 ff       	sbrs	r24, 7
     b66:	0e 98       	cbi	0x01, 6	; 1
     b68:	0f 9a       	sbi	0x01, 7	; 1
     b6a:	0f 98       	cbi	0x01, 7	; 1
     b6c:	88 0f       	add	r24, r24
     b6e:	87 fd       	sbrc	r24, 7
     b70:	0e 9a       	sbi	0x01, 6	; 1
     b72:	87 ff       	sbrs	r24, 7
     b74:	0e 98       	cbi	0x01, 6	; 1
     b76:	0f 9a       	sbi	0x01, 7	; 1
     b78:	0f 98       	cbi	0x01, 7	; 1
     b7a:	88 0f       	add	r24, r24
     b7c:	87 fd       	sbrc	r24, 7
     b7e:	0e 9a       	sbi	0x01, 6	; 1
     b80:	87 ff       	sbrs	r24, 7
     b82:	0e 98       	cbi	0x01, 6	; 1
     b84:	0f 9a       	sbi	0x01, 7	; 1
     b86:	0f 98       	cbi	0x01, 7	; 1
     b88:	88 0f       	add	r24, r24
     b8a:	87 fd       	sbrc	r24, 7
     b8c:	0e 9a       	sbi	0x01, 6	; 1
     b8e:	87 ff       	sbrs	r24, 7
     b90:	0e 98       	cbi	0x01, 6	; 1
     b92:	0f 9a       	sbi	0x01, 7	; 1
     b94:	0f 98       	cbi	0x01, 7	; 1
     b96:	88 0f       	add	r24, r24
     b98:	87 fd       	sbrc	r24, 7
     b9a:	0e 9a       	sbi	0x01, 6	; 1
     b9c:	87 ff       	sbrs	r24, 7
     b9e:	0e 98       	cbi	0x01, 6	; 1
     ba0:	0f 9a       	sbi	0x01, 7	; 1
     ba2:	0f 98       	cbi	0x01, 7	; 1
     ba4:	88 0f       	add	r24, r24
     ba6:	87 fd       	sbrc	r24, 7
     ba8:	0e 9a       	sbi	0x01, 6	; 1
     baa:	87 ff       	sbrs	r24, 7
     bac:	0e 98       	cbi	0x01, 6	; 1
     bae:	0f 9a       	sbi	0x01, 7	; 1
     bb0:	0f 98       	cbi	0x01, 7	; 1
     bb2:	88 0f       	add	r24, r24
     bb4:	87 fd       	sbrc	r24, 7
     bb6:	0e 9a       	sbi	0x01, 6	; 1
     bb8:	87 ff       	sbrs	r24, 7
     bba:	0e 98       	cbi	0x01, 6	; 1
     bbc:	0f 9a       	sbi	0x01, 7	; 1
     bbe:	0f 98       	cbi	0x01, 7	; 1
     bc0:	88 0f       	add	r24, r24
     bc2:	86 2f       	mov	r24, r22
     bc4:	87 fd       	sbrc	r24, 7
     bc6:	0e 9a       	sbi	0x01, 6	; 1
     bc8:	87 ff       	sbrs	r24, 7
     bca:	0e 98       	cbi	0x01, 6	; 1
     bcc:	0f 9a       	sbi	0x01, 7	; 1
     bce:	0f 98       	cbi	0x01, 7	; 1
     bd0:	88 0f       	add	r24, r24
     bd2:	87 fd       	sbrc	r24, 7
     bd4:	0e 9a       	sbi	0x01, 6	; 1
     bd6:	87 ff       	sbrs	r24, 7
     bd8:	0e 98       	cbi	0x01, 6	; 1
     bda:	0f 9a       	sbi	0x01, 7	; 1
     bdc:	0f 98       	cbi	0x01, 7	; 1
     bde:	88 0f       	add	r24, r24
     be0:	87 fd       	sbrc	r24, 7
     be2:	0e 9a       	sbi	0x01, 6	; 1
     be4:	87 ff       	sbrs	r24, 7
     be6:	0e 98       	cbi	0x01, 6	; 1
     be8:	0f 9a       	sbi	0x01, 7	; 1
     bea:	0f 98       	cbi	0x01, 7	; 1
     bec:	88 0f       	add	r24, r24
     bee:	87 fd       	sbrc	r24, 7
     bf0:	0e 9a       	sbi	0x01, 6	; 1
     bf2:	87 ff       	sbrs	r24, 7
     bf4:	0e 98       	cbi	0x01, 6	; 1
     bf6:	0f 9a       	sbi	0x01, 7	; 1
     bf8:	0f 98       	cbi	0x01, 7	; 1
     bfa:	88 0f       	add	r24, r24
     bfc:	87 fd       	sbrc	r24, 7
     bfe:	0e 9a       	sbi	0x01, 6	; 1
     c00:	87 ff       	sbrs	r24, 7
     c02:	0e 98       	cbi	0x01, 6	; 1
     c04:	0f 9a       	sbi	0x01, 7	; 1
     c06:	0f 98       	cbi	0x01, 7	; 1
     c08:	88 0f       	add	r24, r24
     c0a:	87 fd       	sbrc	r24, 7
     c0c:	0e 9a       	sbi	0x01, 6	; 1
     c0e:	87 ff       	sbrs	r24, 7
     c10:	0e 98       	cbi	0x01, 6	; 1
     c12:	0f 9a       	sbi	0x01, 7	; 1
     c14:	0f 98       	cbi	0x01, 7	; 1
     c16:	88 0f       	add	r24, r24
     c18:	87 fd       	sbrc	r24, 7
     c1a:	0e 9a       	sbi	0x01, 6	; 1
     c1c:	87 ff       	sbrs	r24, 7
     c1e:	0e 98       	cbi	0x01, 6	; 1
     c20:	0f 9a       	sbi	0x01, 7	; 1
     c22:	0f 98       	cbi	0x01, 7	; 1
     c24:	88 0f       	add	r24, r24
     c26:	87 fd       	sbrc	r24, 7
     c28:	0e 9a       	sbi	0x01, 6	; 1
     c2a:	87 ff       	sbrs	r24, 7
     c2c:	0e 98       	cbi	0x01, 6	; 1
     c2e:	0f 9a       	sbi	0x01, 7	; 1
     c30:	0f 98       	cbi	0x01, 7	; 1
     c32:	88 0f       	add	r24, r24
     c34:	06 98       	cbi	0x00, 6	; 0
     c36:	2b 9a       	sbi	0x05, 3	; 5
     c38:	08 95       	ret

00000c3a <spi_strobe_then_write_block>:
     c3a:	2b 98       	cbi	0x05, 3	; 5
     c3c:	06 9a       	sbi	0x00, 6	; 0
     c3e:	87 fd       	sbrc	r24, 7
     c40:	0e 9a       	sbi	0x01, 6	; 1
     c42:	87 ff       	sbrs	r24, 7
     c44:	0e 98       	cbi	0x01, 6	; 1
     c46:	0f 9a       	sbi	0x01, 7	; 1
     c48:	0f 98       	cbi	0x01, 7	; 1
     c4a:	88 0f       	add	r24, r24
     c4c:	87 fd       	sbrc	r24, 7
     c4e:	0e 9a       	sbi	0x01, 6	; 1
     c50:	87 ff       	sbrs	r24, 7
     c52:	0e 98       	cbi	0x01, 6	; 1
     c54:	0f 9a       	sbi	0x01, 7	; 1
     c56:	0f 98       	cbi	0x01, 7	; 1
     c58:	88 0f       	add	r24, r24
     c5a:	87 fd       	sbrc	r24, 7
     c5c:	0e 9a       	sbi	0x01, 6	; 1
     c5e:	87 ff       	sbrs	r24, 7
     c60:	0e 98       	cbi	0x01, 6	; 1
     c62:	0f 9a       	sbi	0x01, 7	; 1
     c64:	0f 98       	cbi	0x01, 7	; 1
     c66:	88 0f       	add	r24, r24
     c68:	87 fd       	sbrc	r24, 7
     c6a:	0e 9a       	sbi	0x01, 6	; 1
     c6c:	87 ff       	sbrs	r24, 7
     c6e:	0e 98       	cbi	0x01, 6	; 1
     c70:	0f 9a       	sbi	0x01, 7	; 1
     c72:	0f 98       	cbi	0x01, 7	; 1
     c74:	88 0f       	add	r24, r24
     c76:	87 fd       	sbrc	r24, 7
     c78:	0e 9a       	sbi	0x01, 6	; 1
     c7a:	87 ff       	sbrs	r24, 7
     c7c:	0e 98       	cbi	0x01, 6	; 1
     c7e:	0f 9a       	sbi	0x01, 7	; 1
     c80:	0f 98       	cbi	0x01, 7	; 1
     c82:	88 0f       	add	r24, r24
     c84:	87 fd       	sbrc	r24, 7
     c86:	0e 9a       	sbi	0x01, 6	; 1
     c88:	87 ff       	sbrs	r24, 7
     c8a:	0e 98       	cbi	0x01, 6	; 1
     c8c:	0f 9a       	sbi	0x01, 7	; 1
     c8e:	0f 98       	cbi	0x01, 7	; 1
     c90:	88 0f       	add	r24, r24
     c92:	87 fd       	sbrc	r24, 7
     c94:	0e 9a       	sbi	0x01, 6	; 1
     c96:	87 ff       	sbrs	r24, 7
     c98:	0e 98       	cbi	0x01, 6	; 1
     c9a:	0f 9a       	sbi	0x01, 7	; 1
     c9c:	0f 98       	cbi	0x01, 7	; 1
     c9e:	88 0f       	add	r24, r24
     ca0:	87 fd       	sbrc	r24, 7
     ca2:	0e 9a       	sbi	0x01, 6	; 1
     ca4:	87 ff       	sbrs	r24, 7
     ca6:	0e 98       	cbi	0x01, 6	; 1
     ca8:	0f 9a       	sbi	0x01, 7	; 1
     caa:	0f 98       	cbi	0x01, 7	; 1
     cac:	88 0f       	add	r24, r24
     cae:	86 2f       	mov	r24, r22
     cb0:	ba 01       	movw	r22, r20
     cb2:	42 2f       	mov	r20, r18

00000cb4 <spi_write_block>:
     cb4:	2b 98       	cbi	0x05, 3	; 5
     cb6:	06 9a       	sbi	0x00, 6	; 0
     cb8:	87 fd       	sbrc	r24, 7
     cba:	0e 9a       	sbi	0x01, 6	; 1
     cbc:	87 ff       	sbrs	r24, 7
     cbe:	0e 98       	cbi	0x01, 6	; 1
     cc0:	0f 9a       	sbi	0x01, 7	; 1
     cc2:	0f 98       	cbi	0x01, 7	; 1
     cc4:	88 0f       	add	r24, r24
     cc6:	87 fd       	sbrc	r24, 7
     cc8:	0e 9a       	sbi	0x01, 6	; 1
     cca:	87 ff       	sbrs	r24, 7
     ccc:	0e 98       	cbi	0x01, 6	; 1
     cce:	0f 9a       	sbi	0x01, 7	; 1
     cd0:	0f 98       	cbi	0x01, 7	; 1
     cd2:	88 0f       	add	r24, r24
     cd4:	87 fd       	sbrc	r24, 7
     cd6:	0e 9a       	sbi	0x01, 6	; 1
     cd8:	87 ff       	sbrs	r24, 7
     cda:	0e 98       	cbi	0x01, 6	; 1
     cdc:	0f 9a       	sbi	0x01, 7	; 1
     cde:	0f 98       	cbi	0x01, 7	; 1
     ce0:	88 0f       	add	r24, r24
     ce2:	87 fd       	sbrc	r24, 7
     ce4:	0e 9a       	sbi	0x01, 6	; 1
     ce6:	87 ff       	sbrs	r24, 7
     ce8:	0e 98       	cbi	0x01, 6	; 1
     cea:	0f 9a       	sbi	0x01, 7	; 1
     cec:	0f 98       	cbi	0x01, 7	; 1
     cee:	88 0f       	add	r24, r24
     cf0:	87 fd       	sbrc	r24, 7
     cf2:	0e 9a       	sbi	0x01, 6	; 1
     cf4:	87 ff       	sbrs	r24, 7
     cf6:	0e 98       	cbi	0x01, 6	; 1
     cf8:	0f 9a       	sbi	0x01, 7	; 1
     cfa:	0f 98       	cbi	0x01, 7	; 1
     cfc:	88 0f       	add	r24, r24
     cfe:	87 fd       	sbrc	r24, 7
     d00:	0e 9a       	sbi	0x01, 6	; 1
     d02:	87 ff       	sbrs	r24, 7
     d04:	0e 98       	cbi	0x01, 6	; 1
     d06:	0f 9a       	sbi	0x01, 7	; 1
     d08:	0f 98       	cbi	0x01, 7	; 1
     d0a:	88 0f       	add	r24, r24
     d0c:	87 fd       	sbrc	r24, 7
     d0e:	0e 9a       	sbi	0x01, 6	; 1
     d10:	87 ff       	sbrs	r24, 7
     d12:	0e 98       	cbi	0x01, 6	; 1
     d14:	0f 9a       	sbi	0x01, 7	; 1
     d16:	0f 98       	cbi	0x01, 7	; 1
     d18:	88 0f       	add	r24, r24
     d1a:	87 fd       	sbrc	r24, 7
     d1c:	0e 9a       	sbi	0x01, 6	; 1
     d1e:	87 ff       	sbrs	r24, 7
     d20:	0e 98       	cbi	0x01, 6	; 1
     d22:	0f 9a       	sbi	0x01, 7	; 1
     d24:	0f 98       	cbi	0x01, 7	; 1
     d26:	88 0f       	add	r24, r24
     d28:	db 01       	movw	r26, r22

00000d2a <wbloop>:
     d2a:	44 23       	and	r20, r20
     d2c:	d9 f1       	breq	.+118    	; 0xda4 <wbfinished>
     d2e:	8d 91       	ld	r24, X+
     d30:	87 fd       	sbrc	r24, 7
     d32:	0e 9a       	sbi	0x01, 6	; 1
     d34:	87 ff       	sbrs	r24, 7
     d36:	0e 98       	cbi	0x01, 6	; 1
     d38:	0f 9a       	sbi	0x01, 7	; 1
     d3a:	0f 98       	cbi	0x01, 7	; 1
     d3c:	88 0f       	add	r24, r24
     d3e:	87 fd       	sbrc	r24, 7
     d40:	0e 9a       	sbi	0x01, 6	; 1
     d42:	87 ff       	sbrs	r24, 7
     d44:	0e 98       	cbi	0x01, 6	; 1
     d46:	0f 9a       	sbi	0x01, 7	; 1
     d48:	0f 98       	cbi	0x01, 7	; 1
     d4a:	88 0f       	add	r24, r24
     d4c:	87 fd       	sbrc	r24, 7
     d4e:	0e 9a       	sbi	0x01, 6	; 1
     d50:	87 ff       	sbrs	r24, 7
     d52:	0e 98       	cbi	0x01, 6	; 1
     d54:	0f 9a       	sbi	0x01, 7	; 1
     d56:	0f 98       	cbi	0x01, 7	; 1
     d58:	88 0f       	add	r24, r24
     d5a:	87 fd       	sbrc	r24, 7
     d5c:	0e 9a       	sbi	0x01, 6	; 1
     d5e:	87 ff       	sbrs	r24, 7
     d60:	0e 98       	cbi	0x01, 6	; 1
     d62:	0f 9a       	sbi	0x01, 7	; 1
     d64:	0f 98       	cbi	0x01, 7	; 1
     d66:	88 0f       	add	r24, r24
     d68:	87 fd       	sbrc	r24, 7
     d6a:	0e 9a       	sbi	0x01, 6	; 1
     d6c:	87 ff       	sbrs	r24, 7
     d6e:	0e 98       	cbi	0x01, 6	; 1
     d70:	0f 9a       	sbi	0x01, 7	; 1
     d72:	0f 98       	cbi	0x01, 7	; 1
     d74:	88 0f       	add	r24, r24
     d76:	87 fd       	sbrc	r24, 7
     d78:	0e 9a       	sbi	0x01, 6	; 1
     d7a:	87 ff       	sbrs	r24, 7
     d7c:	0e 98       	cbi	0x01, 6	; 1
     d7e:	0f 9a       	sbi	0x01, 7	; 1
     d80:	0f 98       	cbi	0x01, 7	; 1
     d82:	88 0f       	add	r24, r24
     d84:	87 fd       	sbrc	r24, 7
     d86:	0e 9a       	sbi	0x01, 6	; 1
     d88:	87 ff       	sbrs	r24, 7
     d8a:	0e 98       	cbi	0x01, 6	; 1
     d8c:	0f 9a       	sbi	0x01, 7	; 1
     d8e:	0f 98       	cbi	0x01, 7	; 1
     d90:	88 0f       	add	r24, r24
     d92:	87 fd       	sbrc	r24, 7
     d94:	0e 9a       	sbi	0x01, 6	; 1
     d96:	87 ff       	sbrs	r24, 7
     d98:	0e 98       	cbi	0x01, 6	; 1
     d9a:	0f 9a       	sbi	0x01, 7	; 1
     d9c:	0f 98       	cbi	0x01, 7	; 1
     d9e:	88 0f       	add	r24, r24
     da0:	4a 95       	dec	r20
     da2:	c3 cf       	rjmp	.-122    	; 0xd2a <wbloop>

00000da4 <wbfinished>:
     da4:	06 98       	cbi	0x00, 6	; 0
     da6:	2b 9a       	sbi	0x05, 3	; 5
     da8:	08 95       	ret

00000daa <spi_strobe>:
     daa:	2b 98       	cbi	0x05, 3	; 5
     dac:	06 9a       	sbi	0x00, 6	; 0
     dae:	87 fd       	sbrc	r24, 7
     db0:	0e 9a       	sbi	0x01, 6	; 1
     db2:	87 ff       	sbrs	r24, 7
     db4:	0e 98       	cbi	0x01, 6	; 1
     db6:	0f 9a       	sbi	0x01, 7	; 1
     db8:	0f 98       	cbi	0x01, 7	; 1
     dba:	88 0f       	add	r24, r24
     dbc:	87 fd       	sbrc	r24, 7
     dbe:	0e 9a       	sbi	0x01, 6	; 1
     dc0:	87 ff       	sbrs	r24, 7
     dc2:	0e 98       	cbi	0x01, 6	; 1
     dc4:	0f 9a       	sbi	0x01, 7	; 1
     dc6:	0f 98       	cbi	0x01, 7	; 1
     dc8:	88 0f       	add	r24, r24
     dca:	87 fd       	sbrc	r24, 7
     dcc:	0e 9a       	sbi	0x01, 6	; 1
     dce:	87 ff       	sbrs	r24, 7
     dd0:	0e 98       	cbi	0x01, 6	; 1
     dd2:	0f 9a       	sbi	0x01, 7	; 1
     dd4:	0f 98       	cbi	0x01, 7	; 1
     dd6:	88 0f       	add	r24, r24
     dd8:	87 fd       	sbrc	r24, 7
     dda:	0e 9a       	sbi	0x01, 6	; 1
     ddc:	87 ff       	sbrs	r24, 7
     dde:	0e 98       	cbi	0x01, 6	; 1
     de0:	0f 9a       	sbi	0x01, 7	; 1
     de2:	0f 98       	cbi	0x01, 7	; 1
     de4:	88 0f       	add	r24, r24
     de6:	06 98       	cbi	0x00, 6	; 0
     de8:	2b 9a       	sbi	0x05, 3	; 5
     dea:	08 95       	ret

00000dec <spi_strobe3>:
     dec:	2b 98       	cbi	0x05, 3	; 5
     dee:	06 9a       	sbi	0x00, 6	; 0
     df0:	87 fd       	sbrc	r24, 7
     df2:	0e 9a       	sbi	0x01, 6	; 1
     df4:	87 ff       	sbrs	r24, 7
     df6:	0e 98       	cbi	0x01, 6	; 1
     df8:	0f 9a       	sbi	0x01, 7	; 1
     dfa:	0f 98       	cbi	0x01, 7	; 1
     dfc:	88 0f       	add	r24, r24
     dfe:	87 fd       	sbrc	r24, 7
     e00:	0e 9a       	sbi	0x01, 6	; 1
     e02:	87 ff       	sbrs	r24, 7
     e04:	0e 98       	cbi	0x01, 6	; 1
     e06:	0f 9a       	sbi	0x01, 7	; 1
     e08:	0f 98       	cbi	0x01, 7	; 1
     e0a:	88 0f       	add	r24, r24
     e0c:	87 fd       	sbrc	r24, 7
     e0e:	0e 9a       	sbi	0x01, 6	; 1
     e10:	87 ff       	sbrs	r24, 7
     e12:	0e 98       	cbi	0x01, 6	; 1
     e14:	0f 9a       	sbi	0x01, 7	; 1
     e16:	0f 98       	cbi	0x01, 7	; 1
     e18:	88 0f       	add	r24, r24
     e1a:	87 fd       	sbrc	r24, 7
     e1c:	0e 9a       	sbi	0x01, 6	; 1
     e1e:	87 ff       	sbrs	r24, 7
     e20:	0e 98       	cbi	0x01, 6	; 1
     e22:	0f 9a       	sbi	0x01, 7	; 1
     e24:	0f 98       	cbi	0x01, 7	; 1
     e26:	88 0f       	add	r24, r24
     e28:	87 fd       	sbrc	r24, 7
     e2a:	0e 9a       	sbi	0x01, 6	; 1
     e2c:	87 ff       	sbrs	r24, 7
     e2e:	0e 98       	cbi	0x01, 6	; 1
     e30:	0f 9a       	sbi	0x01, 7	; 1
     e32:	0f 98       	cbi	0x01, 7	; 1
     e34:	88 0f       	add	r24, r24
     e36:	87 fd       	sbrc	r24, 7
     e38:	0e 9a       	sbi	0x01, 6	; 1
     e3a:	87 ff       	sbrs	r24, 7
     e3c:	0e 98       	cbi	0x01, 6	; 1
     e3e:	0f 9a       	sbi	0x01, 7	; 1
     e40:	0f 98       	cbi	0x01, 7	; 1
     e42:	88 0f       	add	r24, r24
     e44:	87 fd       	sbrc	r24, 7
     e46:	0e 9a       	sbi	0x01, 6	; 1
     e48:	87 ff       	sbrs	r24, 7
     e4a:	0e 98       	cbi	0x01, 6	; 1
     e4c:	0f 9a       	sbi	0x01, 7	; 1
     e4e:	0f 98       	cbi	0x01, 7	; 1
     e50:	88 0f       	add	r24, r24
     e52:	87 fd       	sbrc	r24, 7
     e54:	0e 9a       	sbi	0x01, 6	; 1
     e56:	87 ff       	sbrs	r24, 7
     e58:	0e 98       	cbi	0x01, 6	; 1
     e5a:	0f 9a       	sbi	0x01, 7	; 1
     e5c:	0f 98       	cbi	0x01, 7	; 1
     e5e:	88 0f       	add	r24, r24
     e60:	86 2f       	mov	r24, r22
     e62:	87 fd       	sbrc	r24, 7
     e64:	0e 9a       	sbi	0x01, 6	; 1
     e66:	87 ff       	sbrs	r24, 7
     e68:	0e 98       	cbi	0x01, 6	; 1
     e6a:	0f 9a       	sbi	0x01, 7	; 1
     e6c:	0f 98       	cbi	0x01, 7	; 1
     e6e:	88 0f       	add	r24, r24
     e70:	87 fd       	sbrc	r24, 7
     e72:	0e 9a       	sbi	0x01, 6	; 1
     e74:	87 ff       	sbrs	r24, 7
     e76:	0e 98       	cbi	0x01, 6	; 1
     e78:	0f 9a       	sbi	0x01, 7	; 1
     e7a:	0f 98       	cbi	0x01, 7	; 1
     e7c:	88 0f       	add	r24, r24
     e7e:	87 fd       	sbrc	r24, 7
     e80:	0e 9a       	sbi	0x01, 6	; 1
     e82:	87 ff       	sbrs	r24, 7
     e84:	0e 98       	cbi	0x01, 6	; 1
     e86:	0f 9a       	sbi	0x01, 7	; 1
     e88:	0f 98       	cbi	0x01, 7	; 1
     e8a:	88 0f       	add	r24, r24
     e8c:	87 fd       	sbrc	r24, 7
     e8e:	0e 9a       	sbi	0x01, 6	; 1
     e90:	87 ff       	sbrs	r24, 7
     e92:	0e 98       	cbi	0x01, 6	; 1
     e94:	0f 9a       	sbi	0x01, 7	; 1
     e96:	0f 98       	cbi	0x01, 7	; 1
     e98:	88 0f       	add	r24, r24
     e9a:	87 fd       	sbrc	r24, 7
     e9c:	0e 9a       	sbi	0x01, 6	; 1
     e9e:	87 ff       	sbrs	r24, 7
     ea0:	0e 98       	cbi	0x01, 6	; 1
     ea2:	0f 9a       	sbi	0x01, 7	; 1
     ea4:	0f 98       	cbi	0x01, 7	; 1
     ea6:	88 0f       	add	r24, r24
     ea8:	87 fd       	sbrc	r24, 7
     eaa:	0e 9a       	sbi	0x01, 6	; 1
     eac:	87 ff       	sbrs	r24, 7
     eae:	0e 98       	cbi	0x01, 6	; 1
     eb0:	0f 9a       	sbi	0x01, 7	; 1
     eb2:	0f 98       	cbi	0x01, 7	; 1
     eb4:	88 0f       	add	r24, r24
     eb6:	87 fd       	sbrc	r24, 7
     eb8:	0e 9a       	sbi	0x01, 6	; 1
     eba:	87 ff       	sbrs	r24, 7
     ebc:	0e 98       	cbi	0x01, 6	; 1
     ebe:	0f 9a       	sbi	0x01, 7	; 1
     ec0:	0f 98       	cbi	0x01, 7	; 1
     ec2:	88 0f       	add	r24, r24
     ec4:	87 fd       	sbrc	r24, 7
     ec6:	0e 9a       	sbi	0x01, 6	; 1
     ec8:	87 ff       	sbrs	r24, 7
     eca:	0e 98       	cbi	0x01, 6	; 1
     ecc:	0f 9a       	sbi	0x01, 7	; 1
     ece:	0f 98       	cbi	0x01, 7	; 1
     ed0:	88 0f       	add	r24, r24
     ed2:	84 2f       	mov	r24, r20
     ed4:	87 fd       	sbrc	r24, 7
     ed6:	0e 9a       	sbi	0x01, 6	; 1
     ed8:	87 ff       	sbrs	r24, 7
     eda:	0e 98       	cbi	0x01, 6	; 1
     edc:	0f 9a       	sbi	0x01, 7	; 1
     ede:	0f 98       	cbi	0x01, 7	; 1
     ee0:	88 0f       	add	r24, r24
     ee2:	87 fd       	sbrc	r24, 7
     ee4:	0e 9a       	sbi	0x01, 6	; 1
     ee6:	87 ff       	sbrs	r24, 7
     ee8:	0e 98       	cbi	0x01, 6	; 1
     eea:	0f 9a       	sbi	0x01, 7	; 1
     eec:	0f 98       	cbi	0x01, 7	; 1
     eee:	88 0f       	add	r24, r24
     ef0:	87 fd       	sbrc	r24, 7
     ef2:	0e 9a       	sbi	0x01, 6	; 1
     ef4:	87 ff       	sbrs	r24, 7
     ef6:	0e 98       	cbi	0x01, 6	; 1
     ef8:	0f 9a       	sbi	0x01, 7	; 1
     efa:	0f 98       	cbi	0x01, 7	; 1
     efc:	88 0f       	add	r24, r24
     efe:	87 fd       	sbrc	r24, 7
     f00:	0e 9a       	sbi	0x01, 6	; 1
     f02:	87 ff       	sbrs	r24, 7
     f04:	0e 98       	cbi	0x01, 6	; 1
     f06:	0f 9a       	sbi	0x01, 7	; 1
     f08:	0f 98       	cbi	0x01, 7	; 1
     f0a:	88 0f       	add	r24, r24
     f0c:	87 fd       	sbrc	r24, 7
     f0e:	0e 9a       	sbi	0x01, 6	; 1
     f10:	87 ff       	sbrs	r24, 7
     f12:	0e 98       	cbi	0x01, 6	; 1
     f14:	0f 9a       	sbi	0x01, 7	; 1
     f16:	0f 98       	cbi	0x01, 7	; 1
     f18:	88 0f       	add	r24, r24
     f1a:	87 fd       	sbrc	r24, 7
     f1c:	0e 9a       	sbi	0x01, 6	; 1
     f1e:	87 ff       	sbrs	r24, 7
     f20:	0e 98       	cbi	0x01, 6	; 1
     f22:	0f 9a       	sbi	0x01, 7	; 1
     f24:	0f 98       	cbi	0x01, 7	; 1
     f26:	88 0f       	add	r24, r24
     f28:	87 fd       	sbrc	r24, 7
     f2a:	0e 9a       	sbi	0x01, 6	; 1
     f2c:	87 ff       	sbrs	r24, 7
     f2e:	0e 98       	cbi	0x01, 6	; 1
     f30:	0f 9a       	sbi	0x01, 7	; 1
     f32:	0f 98       	cbi	0x01, 7	; 1
     f34:	88 0f       	add	r24, r24
     f36:	87 fd       	sbrc	r24, 7
     f38:	0e 9a       	sbi	0x01, 6	; 1
     f3a:	87 ff       	sbrs	r24, 7
     f3c:	0e 98       	cbi	0x01, 6	; 1
     f3e:	0f 9a       	sbi	0x01, 7	; 1
     f40:	0f 98       	cbi	0x01, 7	; 1
     f42:	88 0f       	add	r24, r24
     f44:	06 98       	cbi	0x00, 6	; 0
     f46:	2b 9a       	sbi	0x05, 3	; 5
     f48:	08 95       	ret

00000f4a <spi_read_byte>:
     f4a:	80 64       	ori	r24, 0x40	; 64
     f4c:	2b 98       	cbi	0x05, 3	; 5
     f4e:	06 9a       	sbi	0x00, 6	; 0
     f50:	87 fd       	sbrc	r24, 7
     f52:	0e 9a       	sbi	0x01, 6	; 1
     f54:	87 ff       	sbrs	r24, 7
     f56:	0e 98       	cbi	0x01, 6	; 1
     f58:	0f 9a       	sbi	0x01, 7	; 1
     f5a:	0f 98       	cbi	0x01, 7	; 1
     f5c:	88 0f       	add	r24, r24
     f5e:	87 fd       	sbrc	r24, 7
     f60:	0e 9a       	sbi	0x01, 6	; 1
     f62:	87 ff       	sbrs	r24, 7
     f64:	0e 98       	cbi	0x01, 6	; 1
     f66:	0f 9a       	sbi	0x01, 7	; 1
     f68:	0f 98       	cbi	0x01, 7	; 1
     f6a:	88 0f       	add	r24, r24
     f6c:	87 fd       	sbrc	r24, 7
     f6e:	0e 9a       	sbi	0x01, 6	; 1
     f70:	87 ff       	sbrs	r24, 7
     f72:	0e 98       	cbi	0x01, 6	; 1
     f74:	0f 9a       	sbi	0x01, 7	; 1
     f76:	0f 98       	cbi	0x01, 7	; 1
     f78:	88 0f       	add	r24, r24
     f7a:	87 fd       	sbrc	r24, 7
     f7c:	0e 9a       	sbi	0x01, 6	; 1
     f7e:	87 ff       	sbrs	r24, 7
     f80:	0e 98       	cbi	0x01, 6	; 1
     f82:	0f 9a       	sbi	0x01, 7	; 1
     f84:	0f 98       	cbi	0x01, 7	; 1
     f86:	88 0f       	add	r24, r24
     f88:	87 fd       	sbrc	r24, 7
     f8a:	0e 9a       	sbi	0x01, 6	; 1
     f8c:	87 ff       	sbrs	r24, 7
     f8e:	0e 98       	cbi	0x01, 6	; 1
     f90:	0f 9a       	sbi	0x01, 7	; 1
     f92:	0f 98       	cbi	0x01, 7	; 1
     f94:	88 0f       	add	r24, r24
     f96:	87 fd       	sbrc	r24, 7
     f98:	0e 9a       	sbi	0x01, 6	; 1
     f9a:	87 ff       	sbrs	r24, 7
     f9c:	0e 98       	cbi	0x01, 6	; 1
     f9e:	0f 9a       	sbi	0x01, 7	; 1
     fa0:	0f 98       	cbi	0x01, 7	; 1
     fa2:	88 0f       	add	r24, r24
     fa4:	87 fd       	sbrc	r24, 7
     fa6:	0e 9a       	sbi	0x01, 6	; 1
     fa8:	87 ff       	sbrs	r24, 7
     faa:	0e 98       	cbi	0x01, 6	; 1
     fac:	0f 9a       	sbi	0x01, 7	; 1
     fae:	0f 98       	cbi	0x01, 7	; 1
     fb0:	88 0f       	add	r24, r24
     fb2:	87 fd       	sbrc	r24, 7
     fb4:	0e 9a       	sbi	0x01, 6	; 1
     fb6:	87 ff       	sbrs	r24, 7
     fb8:	0e 98       	cbi	0x01, 6	; 1
     fba:	0f 9a       	sbi	0x01, 7	; 1
     fbc:	0f 98       	cbi	0x01, 7	; 1
     fbe:	88 0f       	add	r24, r24
     fc0:	06 98       	cbi	0x00, 6	; 0
     fc2:	0f 9a       	sbi	0x01, 7	; 1
     fc4:	88 0f       	add	r24, r24
     fc6:	16 99       	sbic	0x02, 6	; 2
     fc8:	81 60       	ori	r24, 0x01	; 1
     fca:	0f 98       	cbi	0x01, 7	; 1
     fcc:	0f 9a       	sbi	0x01, 7	; 1
     fce:	88 0f       	add	r24, r24
     fd0:	16 99       	sbic	0x02, 6	; 2
     fd2:	81 60       	ori	r24, 0x01	; 1
     fd4:	0f 98       	cbi	0x01, 7	; 1
     fd6:	0f 9a       	sbi	0x01, 7	; 1
     fd8:	88 0f       	add	r24, r24
     fda:	16 99       	sbic	0x02, 6	; 2
     fdc:	81 60       	ori	r24, 0x01	; 1
     fde:	0f 98       	cbi	0x01, 7	; 1
     fe0:	0f 9a       	sbi	0x01, 7	; 1
     fe2:	88 0f       	add	r24, r24
     fe4:	16 99       	sbic	0x02, 6	; 2
     fe6:	81 60       	ori	r24, 0x01	; 1
     fe8:	0f 98       	cbi	0x01, 7	; 1
     fea:	0f 9a       	sbi	0x01, 7	; 1
     fec:	88 0f       	add	r24, r24
     fee:	16 99       	sbic	0x02, 6	; 2
     ff0:	81 60       	ori	r24, 0x01	; 1
     ff2:	0f 98       	cbi	0x01, 7	; 1
     ff4:	0f 9a       	sbi	0x01, 7	; 1
     ff6:	88 0f       	add	r24, r24
     ff8:	16 99       	sbic	0x02, 6	; 2
     ffa:	81 60       	ori	r24, 0x01	; 1
     ffc:	0f 98       	cbi	0x01, 7	; 1
     ffe:	0f 9a       	sbi	0x01, 7	; 1
    1000:	88 0f       	add	r24, r24
    1002:	16 99       	sbic	0x02, 6	; 2
    1004:	81 60       	ori	r24, 0x01	; 1
    1006:	0f 98       	cbi	0x01, 7	; 1
    1008:	0f 9a       	sbi	0x01, 7	; 1
    100a:	88 0f       	add	r24, r24
    100c:	16 99       	sbic	0x02, 6	; 2
    100e:	81 60       	ori	r24, 0x01	; 1
    1010:	0f 98       	cbi	0x01, 7	; 1
    1012:	2b 9a       	sbi	0x05, 3	; 5
    1014:	08 95       	ret

00001016 <spi_strobe_then_read_block>:
    1016:	2b 98       	cbi	0x05, 3	; 5
    1018:	06 9a       	sbi	0x00, 6	; 0
    101a:	87 fd       	sbrc	r24, 7
    101c:	0e 9a       	sbi	0x01, 6	; 1
    101e:	87 ff       	sbrs	r24, 7
    1020:	0e 98       	cbi	0x01, 6	; 1
    1022:	0f 9a       	sbi	0x01, 7	; 1
    1024:	0f 98       	cbi	0x01, 7	; 1
    1026:	88 0f       	add	r24, r24
    1028:	87 fd       	sbrc	r24, 7
    102a:	0e 9a       	sbi	0x01, 6	; 1
    102c:	87 ff       	sbrs	r24, 7
    102e:	0e 98       	cbi	0x01, 6	; 1
    1030:	0f 9a       	sbi	0x01, 7	; 1
    1032:	0f 98       	cbi	0x01, 7	; 1
    1034:	88 0f       	add	r24, r24
    1036:	87 fd       	sbrc	r24, 7
    1038:	0e 9a       	sbi	0x01, 6	; 1
    103a:	87 ff       	sbrs	r24, 7
    103c:	0e 98       	cbi	0x01, 6	; 1
    103e:	0f 9a       	sbi	0x01, 7	; 1
    1040:	0f 98       	cbi	0x01, 7	; 1
    1042:	88 0f       	add	r24, r24
    1044:	87 fd       	sbrc	r24, 7
    1046:	0e 9a       	sbi	0x01, 6	; 1
    1048:	87 ff       	sbrs	r24, 7
    104a:	0e 98       	cbi	0x01, 6	; 1
    104c:	0f 9a       	sbi	0x01, 7	; 1
    104e:	0f 98       	cbi	0x01, 7	; 1
    1050:	88 0f       	add	r24, r24
    1052:	87 fd       	sbrc	r24, 7
    1054:	0e 9a       	sbi	0x01, 6	; 1
    1056:	87 ff       	sbrs	r24, 7
    1058:	0e 98       	cbi	0x01, 6	; 1
    105a:	0f 9a       	sbi	0x01, 7	; 1
    105c:	0f 98       	cbi	0x01, 7	; 1
    105e:	88 0f       	add	r24, r24
    1060:	87 fd       	sbrc	r24, 7
    1062:	0e 9a       	sbi	0x01, 6	; 1
    1064:	87 ff       	sbrs	r24, 7
    1066:	0e 98       	cbi	0x01, 6	; 1
    1068:	0f 9a       	sbi	0x01, 7	; 1
    106a:	0f 98       	cbi	0x01, 7	; 1
    106c:	88 0f       	add	r24, r24
    106e:	87 fd       	sbrc	r24, 7
    1070:	0e 9a       	sbi	0x01, 6	; 1
    1072:	87 ff       	sbrs	r24, 7
    1074:	0e 98       	cbi	0x01, 6	; 1
    1076:	0f 9a       	sbi	0x01, 7	; 1
    1078:	0f 98       	cbi	0x01, 7	; 1
    107a:	88 0f       	add	r24, r24
    107c:	87 fd       	sbrc	r24, 7
    107e:	0e 9a       	sbi	0x01, 6	; 1
    1080:	87 ff       	sbrs	r24, 7
    1082:	0e 98       	cbi	0x01, 6	; 1
    1084:	0f 9a       	sbi	0x01, 7	; 1
    1086:	0f 98       	cbi	0x01, 7	; 1
    1088:	88 0f       	add	r24, r24
    108a:	86 2f       	mov	r24, r22
    108c:	ba 01       	movw	r22, r20
    108e:	42 2f       	mov	r20, r18

00001090 <spi_read_block>:
    1090:	80 64       	ori	r24, 0x40	; 64
    1092:	2b 98       	cbi	0x05, 3	; 5
    1094:	06 9a       	sbi	0x00, 6	; 0
    1096:	87 fd       	sbrc	r24, 7
    1098:	0e 9a       	sbi	0x01, 6	; 1
    109a:	87 ff       	sbrs	r24, 7
    109c:	0e 98       	cbi	0x01, 6	; 1
    109e:	0f 9a       	sbi	0x01, 7	; 1
    10a0:	0f 98       	cbi	0x01, 7	; 1
    10a2:	88 0f       	add	r24, r24
    10a4:	87 fd       	sbrc	r24, 7
    10a6:	0e 9a       	sbi	0x01, 6	; 1
    10a8:	87 ff       	sbrs	r24, 7
    10aa:	0e 98       	cbi	0x01, 6	; 1
    10ac:	0f 9a       	sbi	0x01, 7	; 1
    10ae:	0f 98       	cbi	0x01, 7	; 1
    10b0:	88 0f       	add	r24, r24
    10b2:	87 fd       	sbrc	r24, 7
    10b4:	0e 9a       	sbi	0x01, 6	; 1
    10b6:	87 ff       	sbrs	r24, 7
    10b8:	0e 98       	cbi	0x01, 6	; 1
    10ba:	0f 9a       	sbi	0x01, 7	; 1
    10bc:	0f 98       	cbi	0x01, 7	; 1
    10be:	88 0f       	add	r24, r24
    10c0:	87 fd       	sbrc	r24, 7
    10c2:	0e 9a       	sbi	0x01, 6	; 1
    10c4:	87 ff       	sbrs	r24, 7
    10c6:	0e 98       	cbi	0x01, 6	; 1
    10c8:	0f 9a       	sbi	0x01, 7	; 1
    10ca:	0f 98       	cbi	0x01, 7	; 1
    10cc:	88 0f       	add	r24, r24
    10ce:	87 fd       	sbrc	r24, 7
    10d0:	0e 9a       	sbi	0x01, 6	; 1
    10d2:	87 ff       	sbrs	r24, 7
    10d4:	0e 98       	cbi	0x01, 6	; 1
    10d6:	0f 9a       	sbi	0x01, 7	; 1
    10d8:	0f 98       	cbi	0x01, 7	; 1
    10da:	88 0f       	add	r24, r24
    10dc:	87 fd       	sbrc	r24, 7
    10de:	0e 9a       	sbi	0x01, 6	; 1
    10e0:	87 ff       	sbrs	r24, 7
    10e2:	0e 98       	cbi	0x01, 6	; 1
    10e4:	0f 9a       	sbi	0x01, 7	; 1
    10e6:	0f 98       	cbi	0x01, 7	; 1
    10e8:	88 0f       	add	r24, r24
    10ea:	87 fd       	sbrc	r24, 7
    10ec:	0e 9a       	sbi	0x01, 6	; 1
    10ee:	87 ff       	sbrs	r24, 7
    10f0:	0e 98       	cbi	0x01, 6	; 1
    10f2:	0f 9a       	sbi	0x01, 7	; 1
    10f4:	0f 98       	cbi	0x01, 7	; 1
    10f6:	88 0f       	add	r24, r24
    10f8:	87 fd       	sbrc	r24, 7
    10fa:	0e 9a       	sbi	0x01, 6	; 1
    10fc:	87 ff       	sbrs	r24, 7
    10fe:	0e 98       	cbi	0x01, 6	; 1
    1100:	0f 9a       	sbi	0x01, 7	; 1
    1102:	0f 98       	cbi	0x01, 7	; 1
    1104:	88 0f       	add	r24, r24
    1106:	06 98       	cbi	0x00, 6	; 0
    1108:	db 01       	movw	r26, r22

0000110a <rbloop>:
    110a:	0f 9a       	sbi	0x01, 7	; 1
    110c:	88 0f       	add	r24, r24
    110e:	16 99       	sbic	0x02, 6	; 2
    1110:	81 60       	ori	r24, 0x01	; 1
    1112:	0f 98       	cbi	0x01, 7	; 1
    1114:	0f 9a       	sbi	0x01, 7	; 1
    1116:	88 0f       	add	r24, r24
    1118:	16 99       	sbic	0x02, 6	; 2
    111a:	81 60       	ori	r24, 0x01	; 1
    111c:	0f 98       	cbi	0x01, 7	; 1
    111e:	0f 9a       	sbi	0x01, 7	; 1
    1120:	88 0f       	add	r24, r24
    1122:	16 99       	sbic	0x02, 6	; 2
    1124:	81 60       	ori	r24, 0x01	; 1
    1126:	0f 98       	cbi	0x01, 7	; 1
    1128:	0f 9a       	sbi	0x01, 7	; 1
    112a:	88 0f       	add	r24, r24
    112c:	16 99       	sbic	0x02, 6	; 2
    112e:	81 60       	ori	r24, 0x01	; 1
    1130:	0f 98       	cbi	0x01, 7	; 1
    1132:	0f 9a       	sbi	0x01, 7	; 1
    1134:	88 0f       	add	r24, r24
    1136:	16 99       	sbic	0x02, 6	; 2
    1138:	81 60       	ori	r24, 0x01	; 1
    113a:	0f 98       	cbi	0x01, 7	; 1
    113c:	0f 9a       	sbi	0x01, 7	; 1
    113e:	88 0f       	add	r24, r24
    1140:	16 99       	sbic	0x02, 6	; 2
    1142:	81 60       	ori	r24, 0x01	; 1
    1144:	0f 98       	cbi	0x01, 7	; 1
    1146:	0f 9a       	sbi	0x01, 7	; 1
    1148:	88 0f       	add	r24, r24
    114a:	16 99       	sbic	0x02, 6	; 2
    114c:	81 60       	ori	r24, 0x01	; 1
    114e:	0f 98       	cbi	0x01, 7	; 1
    1150:	0f 9a       	sbi	0x01, 7	; 1
    1152:	88 0f       	add	r24, r24
    1154:	16 99       	sbic	0x02, 6	; 2
    1156:	81 60       	ori	r24, 0x01	; 1
    1158:	0f 98       	cbi	0x01, 7	; 1
    115a:	8d 93       	st	X+, r24
    115c:	4a 95       	dec	r20
    115e:	a9 f6       	brne	.-86     	; 0x110a <rbloop>
    1160:	2b 9a       	sbi	0x05, 3	; 5
    1162:	08 95       	ret

00001164 <main>:
        master_state.radio_interrupt_ok = 0;
    }
}
 
int main(void)
{
    1164:	cf 93       	push	r28
    1166:	df 93       	push	r29
    1168:	cd b7       	in	r28, 0x3d	; 61
    116a:	de b7       	in	r29, 0x3e	; 62
    116c:	ac 97       	sbiw	r28, 0x2c	; 44
    116e:	cd bf       	out	0x3d, r28	; 61
    1170:	de bf       	out	0x3e, r29	; 62

static void init_clock()
{
    // This is where we change the cpu clock if required.
    uint8_t val = CLKCTRL_PDIV_2X_gc | 0x1;  // 0x1 = PEN enable prescaler.
    _PROTECTED_WRITE(CLKCTRL.MCLKCTRLB, val);
    1172:	81 e0       	ldi	r24, 0x01	; 1
    1174:	98 ed       	ldi	r25, 0xD8	; 216
    1176:	94 bf       	out	0x34, r25	; 52
    1178:	80 93 61 00 	sts	0x0061, r24	; 0x800061 <CSWTCH.12+0x7f51ca>
    117c:	e7 ea       	ldi	r30, 0xA7	; 167
    117e:	f1 e6       	ldi	r31, 0x61	; 97
    1180:	31 97       	sbiw	r30, 0x01	; 1
    1182:	f1 f7       	brne	.-4      	; 0x1180 <main+0x1c>
    1184:	00 c0       	rjmp	.+0      	; 0x1186 <main+0x22>
    1186:	00 00       	nop

static void init_serial()
{
    // UART0- need to use "alternate" pins 
    // This puts TxD and RxD on PA1 and PA2
    PORTMUX.CTRLB = PORTMUX_USART0_ALTERNATE_gc; 
    1188:	80 93 01 02 	sts	0x0201, r24	; 0x800201 <CSWTCH.12+0x7f536a>
    // Diagnostic uart output       
    // TxD pin PA1 is used for diag, should be an output
    // And set it initially high
    PORTA.OUTSET = 1 << 1;
    118c:	82 e0       	ldi	r24, 0x02	; 2
    118e:	80 93 05 04 	sts	0x0405, r24	; 0x800405 <CSWTCH.12+0x7f556e>
    PORTA.DIRSET = 1 << 1;
    1192:	80 93 01 04 	sts	0x0401, r24	; 0x800401 <CSWTCH.12+0x7f556a>
    
    uint32_t want_baud_hz = 230400; // Baud rate (was 115200)
    uint32_t clk_per_hz = F_CPU; // CLK_PER after prescaler in hz
    uint16_t baud_param = (64 * clk_per_hz) / (16 * want_baud_hz);
    USART0.BAUD = baud_param;
    1196:	8d ea       	ldi	r24, 0xAD	; 173
    1198:	90 e0       	ldi	r25, 0x00	; 0
    119a:	80 93 08 08 	sts	0x0808, r24	; 0x800808 <CSWTCH.12+0x7f5971>
    119e:	90 93 09 08 	sts	0x0809, r25	; 0x800809 <CSWTCH.12+0x7f5972>
    USART0.CTRLB = 
    11a2:	80 ec       	ldi	r24, 0xC0	; 192
    11a4:	80 93 06 08 	sts	0x0806, r24	; 0x800806 <CSWTCH.12+0x7f596f>
int main(void)
{
    init_clock();
    init_serial();
    // Write the greeting message as soon as possible.
    diag_puts("\r\nMalenki-Nano 2023B"
    11a8:	81 e7       	ldi	r24, 0x71	; 113
    11aa:	91 eb       	ldi	r25, 0xB1	; 177
    11ac:	0e 94 b5 00 	call	0x16a	; 0x16a <diag_puts>
 */

static void watchdog_early_init()
{
    // Tell the developers that the dog was triggered.
    if (RSTCTRL.RSTFR & RSTCTRL_WDRF_bm) {
    11b0:	80 91 40 00 	lds	r24, 0x0040	; 0x800040 <CSWTCH.12+0x7f51a9>
    11b4:	83 ff       	sbrs	r24, 3
    11b6:	04 c0       	rjmp	.+8      	; 0x11c0 <main+0x5c>
        diag_puts("wdog fired\r\n");
    11b8:	8a e9       	ldi	r24, 0x9A	; 154
    11ba:	91 eb       	ldi	r25, 0xB1	; 177
    11bc:	0e 94 b5 00 	call	0x16a	; 0x16a <diag_puts>
    }
    // reset the flag or it stays across other types of reset.
    RSTCTRL.RSTFR = RSTCTRL_WDRF_bm; 
    11c0:	88 e0       	ldi	r24, 0x08	; 8
    11c2:	80 93 40 00 	sts	0x0040, r24	; 0x800040 <CSWTCH.12+0x7f51a9>
static void init_timer()
{
    // This uses TCD0 for timer interrupts.
    // weapons.c sets TCD0 to overflow every 20ms,
    
    TCD0.INTCTRL = TCD_OVF_bm;
    11c6:	11 e0       	ldi	r17, 0x01	; 1
    11c8:	10 93 8c 0a 	sts	0x0A8C, r17	; 0x800a8c <CSWTCH.12+0x7f5bf5>

    master_state.tickcount = 0;
    11cc:	10 92 73 38 	sts	0x3873, r1	; 0x803873 <master_state>
    11d0:	10 92 74 38 	sts	0x3874, r1	; 0x803874 <master_state+0x1>
    11d4:	10 92 75 38 	sts	0x3875, r1	; 0x803875 <master_state+0x2>
    11d8:	10 92 76 38 	sts	0x3876, r1	; 0x803876 <master_state+0x3>
#endif    
        "\r\n"
    );
    watchdog_early_init();
    init_timer();
    sei(); // interrupts on
    11dc:	78 94       	sei
    }
}

void weapons_init() 
{
    diag_println("Initialising extra weapons!");
    11de:	87 ea       	ldi	r24, 0xA7	; 167
    11e0:	91 eb       	ldi	r25, 0xB1	; 177
    11e2:	9f 93       	push	r25
    11e4:	8f 93       	push	r24
    11e6:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
     * Use ports PORTC 0 and 1
     */


    // Initially disable tcd outputs.
    _PROTECTED_WRITE(TCD0.FAULTCTRL, 0);
    11ea:	90 e0       	ldi	r25, 0x00	; 0
    11ec:	88 ed       	ldi	r24, 0xD8	; 216
    11ee:	84 bf       	out	0x34, r24	; 52
    11f0:	90 93 92 0a 	sts	0x0A92, r25	; 0x800a92 <CSWTCH.12+0x7f5bfb>
    // And disable TCD
    TCD0.CTRLA = 0;
    11f4:	10 92 80 0a 	sts	0x0A80, r1	; 0x800a80 <CSWTCH.12+0x7f5be9>
     * This allows the builder to solder a single wire across both
     * pads, which is much easier than just connecting weapon2.
     * 
     * e.g. for only one pwm weapon.
     */
    diag_println("checking weapon 3");
    11f8:	83 ec       	ldi	r24, 0xC3	; 195
    11fa:	91 eb       	ldi	r25, 0xB1	; 177
    11fc:	9f 93       	push	r25
    11fe:	8f 93       	push	r24
    1200:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
    uint8_t weapon3_bm = 1 << 1;
    uint8_t weapon2_bm = 1 << 0;
    uint8_t both = weapon2_bm | weapon3_bm;
    // Set both low, and wait long enough for any residual charge
    // to drain away.
    PORTC.OUTCLR = both;
    1204:	83 e0       	ldi	r24, 0x03	; 3
    1206:	80 93 46 04 	sts	0x0446, r24	; 0x800446 <CSWTCH.12+0x7f55af>
    PORTC.DIRSET = both;
    120a:	80 93 41 04 	sts	0x0441, r24	; 0x800441 <CSWTCH.12+0x7f55aa>
	#else
		//round up by default
		__ticks_dc = (uint32_t)(ceil(fabs(__tmp)));
	#endif

	__builtin_avr_delay_cycles(__ticks_dc);
    120e:	83 ec       	ldi	r24, 0xC3	; 195
    1210:	99 e0       	ldi	r25, 0x09	; 9
    1212:	01 97       	sbiw	r24, 0x01	; 1
    1214:	f1 f7       	brne	.-4      	; 0x1212 <main+0xae>
    1216:	00 c0       	rjmp	.+0      	; 0x1218 <main+0xb4>
    1218:	00 00       	nop
    _delay_us(1000);
    // Now set weapon3 as input,see if it can detect a high
    // on weapon2.
    PORTC.DIRCLR = weapon3_bm;
    121a:	52 e0       	ldi	r21, 0x02	; 2
    121c:	f5 2e       	mov	r15, r21
    121e:	f0 92 42 04 	sts	0x0442, r15	; 0x800442 <CSWTCH.12+0x7f55ab>
    PORTC.OUTSET = weapon2_bm;
    1222:	10 93 45 04 	sts	0x0445, r17	; 0x800445 <CSWTCH.12+0x7f55ae>
    1226:	96 ea       	ldi	r25, 0xA6	; 166
    1228:	9a 95       	dec	r25
    122a:	f1 f7       	brne	.-4      	; 0x1228 <main+0xc4>
    122c:	00 c0       	rjmp	.+0      	; 0x122e <main+0xca>
    _delay_us(50);
    uint8_t in0 = PORTC.IN;
    122e:	00 91 48 04 	lds	r16, 0x0448	; 0x800448 <CSWTCH.12+0x7f55b1>
    PORTC.OUTCLR = weapon2_bm;
    1232:	10 93 46 04 	sts	0x0446, r17	; 0x800446 <CSWTCH.12+0x7f55af>
    1236:	e6 ea       	ldi	r30, 0xA6	; 166
    1238:	ea 95       	dec	r30
    123a:	f1 f7       	brne	.-4      	; 0x1238 <main+0xd4>
    123c:	00 c0       	rjmp	.+0      	; 0x123e <main+0xda>
    _delay_us(50);
    uint8_t in1 = PORTC.IN;
    123e:	10 91 48 04 	lds	r17, 0x0448	; 0x800448 <CSWTCH.12+0x7f55b1>

    diag_println("in0=%02x in1=%02x", in0, in1);
    1242:	1f 92       	push	r1
    1244:	1f 93       	push	r17
    1246:	1f 92       	push	r1
    1248:	0f 93       	push	r16
    124a:	84 ea       	ldi	r24, 0xA4	; 164
    124c:	9f ea       	ldi	r25, 0xAF	; 175
    124e:	9f 93       	push	r25
    1250:	8f 93       	push	r24
    1252:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
    bool v0 = in0 & weapon3_bm;
    bool v1 = in1 & weapon3_bm;
    // If we saw the other pin pulse too, then they are
    // presumably shorted.
    if (v1 != v0) {
    1256:	06 95       	lsr	r16
    1258:	01 70       	andi	r16, 0x01	; 1
    125a:	16 95       	lsr	r17
    125c:	11 70       	andi	r17, 0x01	; 1
    125e:	cd bf       	out	0x3d, r28	; 61
    1260:	de bf       	out	0x3e, r29	; 62
    1262:	01 17       	cp	r16, r17
    1264:	39 f0       	breq	.+14     	; 0x1274 <main+0x110>
        diag_println("Weapon3 appears shorted to weapon2");
    1266:	85 ed       	ldi	r24, 0xD5	; 213
    1268:	91 eb       	ldi	r25, 0xB1	; 177
    126a:	9f 93       	push	r25
    126c:	8f 93       	push	r24
    126e:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
    1272:	08 c0       	rjmp	.+16     	; 0x1284 <main+0x120>
        // Do not activate. It can stay as an input.
    } else {
        diag_println("Weapon3 ok.");
    1274:	88 ef       	ldi	r24, 0xF8	; 248
    1276:	91 eb       	ldi	r25, 0xB1	; 177
    1278:	9f 93       	push	r25
    127a:	8f 93       	push	r24
    127c:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
        // Activate it.
        PORTC.DIRSET = weapon3_bm;
    1280:	f0 92 41 04 	sts	0x0441, r15	; 0x800441 <CSWTCH.12+0x7f55aa>
    1284:	0f 90       	pop	r0
    1286:	0f 90       	pop	r0
    _PROTECTED_WRITE(TCD0.FAULTCTRL, 0);
    // And disable TCD
    TCD0.CTRLA = 0;

    weapon3_init();
    PORTC.DIRSET = 1 << 0;
    1288:	81 e0       	ldi	r24, 0x01	; 1
    128a:	80 93 41 04 	sts	0x0441, r24	; 0x800441 <CSWTCH.12+0x7f55aa>
    
    // " The two additional outputs WOC and WOD can be configured by 
    // software to be connected to either WOA or WOB by writing the
    //  Compare C/D Output Select bits (CMPCSEL and CMPDSEL) in
    //  the Control C register (TCDn.CTRLC)" (datasheet)
    TCD0.CTRLC |= TCD_CMPDSEL_bm;
    128e:	80 91 82 0a 	lds	r24, 0x0A82	; 0x800a82 <CSWTCH.12+0x7f5beb>
    1292:	80 68       	ori	r24, 0x80	; 128
    1294:	80 93 82 0a 	sts	0x0A82, r24	; 0x800a82 <CSWTCH.12+0x7f5beb>
    
    // enable WOA
    // enable WOB
    // Enable A and B comparator
    // And enable WOC and WOD
    _PROTECTED_WRITE(TCD0.FAULTCTRL, 
    1298:	20 ec       	ldi	r18, 0xC0	; 192
    129a:	30 e0       	ldi	r19, 0x00	; 0
    129c:	88 ed       	ldi	r24, 0xD8	; 216
    129e:	84 bf       	out	0x34, r24	; 52
    12a0:	20 93 92 0a 	sts	0x0A92, r18	; 0x800a92 <CSWTCH.12+0x7f5bfb>
    // Divider will be 64, 
    // clock rate is 10mhz / 64 = 
    // clock len = 6.4 us
    // We want to make servo pulses every 20ms,
    // So we need to count to ~ 3125
    TCD0.CMPACLR = max_count; // reset time
    12a4:	85 e3       	ldi	r24, 0x35	; 53
    12a6:	9c e0       	ldi	r25, 0x0C	; 12
    12a8:	80 93 aa 0a 	sts	0x0AAA, r24	; 0x800aaa <CSWTCH.12+0x7f5c13>
    12ac:	90 93 ab 0a 	sts	0x0AAB, r25	; 0x800aab <CSWTCH.12+0x7f5c14>
    TCD0.CMPBCLR = max_count; // reset time
    12b0:	80 93 ae 0a 	sts	0x0AAE, r24	; 0x800aae <CSWTCH.12+0x7f5c17>
    12b4:	90 93 af 0a 	sts	0x0AAF, r25	; 0x800aaf <CSWTCH.12+0x7f5c18>
    // To generate pulses, we reduce CMPASET to lower values, then
    // it creates a positive pulse 
    TCD0.CMPASET = max_count;
    12b8:	80 93 a8 0a 	sts	0x0AA8, r24	; 0x800aa8 <CSWTCH.12+0x7f5c11>
    12bc:	90 93 a9 0a 	sts	0x0AA9, r25	; 0x800aa9 <CSWTCH.12+0x7f5c12>
    TCD0.CMPBSET = max_count;
    12c0:	80 93 ac 0a 	sts	0x0AAC, r24	; 0x800aac <CSWTCH.12+0x7f5c15>
    12c4:	90 93 ad 0a 	sts	0x0AAD, r25	; 0x800aad <CSWTCH.12+0x7f5c16>
    
    // Finally turn the thing on.
    TCD0.CTRLA = TCD_ENABLE_bm |
    12c8:	83 e7       	ldi	r24, 0x73	; 115
    12ca:	80 93 80 0a 	sts	0x0A80, r24	; 0x800a80 <CSWTCH.12+0x7f5be9>
{
#ifdef ENABLE_DIAG
    diag_println("device id=%02x %02x %02x",
        (int) SIGROW.DEVICEID0,
        (int) SIGROW.DEVICEID1,
        (int) SIGROW.DEVICEID2);
    12ce:	20 91 02 11 	lds	r18, 0x1102	; 0x801102 <CSWTCH.12+0x7f626b>
static void show_device_info()
{
#ifdef ENABLE_DIAG
    diag_println("device id=%02x %02x %02x",
        (int) SIGROW.DEVICEID0,
        (int) SIGROW.DEVICEID1,
    12d2:	90 91 01 11 	lds	r25, 0x1101	; 0x801101 <CSWTCH.12+0x7f626a>
 
static void show_device_info()
{
#ifdef ENABLE_DIAG
    diag_println("device id=%02x %02x %02x",
        (int) SIGROW.DEVICEID0,
    12d6:	80 91 00 11 	lds	r24, 0x1100	; 0x801100 <CSWTCH.12+0x7f6269>
 */
 
static void show_device_info()
{
#ifdef ENABLE_DIAG
    diag_println("device id=%02x %02x %02x",
    12da:	1f 92       	push	r1
    12dc:	2f 93       	push	r18
    12de:	1f 92       	push	r1
    12e0:	9f 93       	push	r25
    12e2:	1f 92       	push	r1
    12e4:	8f 93       	push	r24
    12e6:	84 e0       	ldi	r24, 0x04	; 4
    12e8:	92 eb       	ldi	r25, 0xB2	; 178
    12ea:	9f 93       	push	r25
    12ec:	8f 93       	push	r24
    12ee:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
        (int) SIGROW.DEVICEID0,
        (int) SIGROW.DEVICEID1,
        (int) SIGROW.DEVICEID2);
    diag_print("serial number: ");
    12f2:	8d e1       	ldi	r24, 0x1D	; 29
    12f4:	92 eb       	ldi	r25, 0xB2	; 178
    12f6:	9f 93       	push	r25
    12f8:	8f 93       	push	r24
    12fa:	0e 94 58 01 	call	0x2b0	; 0x2b0 <diag_print>
    12fe:	cd bf       	out	0x3d, r28	; 61
    1300:	de bf       	out	0x3e, r29	; 62
    1302:	03 e0       	ldi	r16, 0x03	; 3
    1304:	11 e1       	ldi	r17, 0x11	; 17
    uint8_t * serialnum = (uint8_t *) & (SIGROW.SERNUM0);
    for (uint8_t i=0; i<10; i++) {
        diag_print("%02x ", (int) serialnum[i]);
    1306:	4c ed       	ldi	r20, 0xDC	; 220
    1308:	e4 2e       	mov	r14, r20
    130a:	4e ea       	ldi	r20, 0xAE	; 174
    130c:	f4 2e       	mov	r15, r20
    130e:	f8 01       	movw	r30, r16
    1310:	81 91       	ld	r24, Z+
    1312:	8f 01       	movw	r16, r30
    1314:	1f 92       	push	r1
    1316:	8f 93       	push	r24
    1318:	ff 92       	push	r15
    131a:	ef 92       	push	r14
    131c:	0e 94 58 01 	call	0x2b0	; 0x2b0 <diag_print>
        (int) SIGROW.DEVICEID0,
        (int) SIGROW.DEVICEID1,
        (int) SIGROW.DEVICEID2);
    diag_print("serial number: ");
    uint8_t * serialnum = (uint8_t *) & (SIGROW.SERNUM0);
    for (uint8_t i=0; i<10; i++) {
    1320:	0f 90       	pop	r0
    1322:	0f 90       	pop	r0
    1324:	0f 90       	pop	r0
    1326:	0f 90       	pop	r0
    1328:	0d 30       	cpi	r16, 0x0D	; 13
    132a:	f1 e1       	ldi	r31, 0x11	; 17
    132c:	1f 07       	cpc	r17, r31
    132e:	79 f7       	brne	.-34     	; 0x130e <main+0x1aa>
        diag_print("%02x ", (int) serialnum[i]);
    }
    diag_puts("\r\n");
    1330:	87 e9       	ldi	r24, 0x97	; 151
    1332:	91 eb       	ldi	r25, 0xB1	; 177
    1334:	0e 94 b5 00 	call	0x16a	; 0x16a <diag_puts>
    char buf[20];
    strncpy(buf, (char *) serialnum, 10);
    1338:	4a e0       	ldi	r20, 0x0A	; 10
    133a:	50 e0       	ldi	r21, 0x00	; 0
    133c:	63 e0       	ldi	r22, 0x03	; 3
    133e:	71 e1       	ldi	r23, 0x11	; 17
    1340:	8e 01       	movw	r16, r28
    1342:	0f 5f       	subi	r16, 0xFF	; 255
    1344:	1f 4f       	sbci	r17, 0xFF	; 255
    1346:	c8 01       	movw	r24, r16
    1348:	0e 94 2a 14 	call	0x2854	; 0x2854 <strncpy>
    buf[10] = '\0';
    134c:	1b 86       	std	Y+11, r1	; 0x0b
    diag_println("serial number (ascii) is:%s", buf);
    134e:	1f 93       	push	r17
    1350:	0f 93       	push	r16
    1352:	8d e2       	ldi	r24, 0x2D	; 45
    1354:	92 eb       	ldi	r25, 0xB2	; 178
    1356:	9f 93       	push	r25
    1358:	8f 93       	push	r24
    135a:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
 *
 */

void spi_init() {
    // SCS must be set as an output and initially high
    SCS_VPORT->DIR |= 1 << SCS_PIN;
    135e:	23 9a       	sbi	0x04, 3	; 4
    SCS_VPORT->OUT |= 1 << SCS_PIN;
    1360:	2b 9a       	sbi	0x05, 3	; 5
    // SCK must be set as an output and initially low
    SCK_VPORT->DIR |= 1 << SCK_PIN;
    1362:	07 9a       	sbi	0x00, 7	; 0
    // SDIO must be set as an input
    SDIO_VPORT->DIR &= ~(1 << SDIO_PIN);
    1364:	06 98       	cbi	0x00, 6	; 0
    // Check that all of our motor lines are working
    // The driver chips should hold the control lines all low.
    // If any are high, it is an error.
	// motor pwm outputs = PB0,1,2 and PA3,4,5
    bool ok = true;
    ok = ok && pin_check('A', &PORTA,3);
    1366:	43 e0       	ldi	r20, 0x03	; 3
    1368:	60 e0       	ldi	r22, 0x00	; 0
    136a:	74 e0       	ldi	r23, 0x04	; 4
    136c:	81 e4       	ldi	r24, 0x41	; 65
    136e:	0e 94 da 01 	call	0x3b4	; 0x3b4 <pin_check>
    ok = ok && pin_check('A', &PORTA,4);
    1372:	0f 90       	pop	r0
    1374:	0f 90       	pop	r0
    1376:	0f 90       	pop	r0
    1378:	0f 90       	pop	r0
    137a:	88 23       	and	r24, r24
    137c:	39 f0       	breq	.+14     	; 0x138c <main+0x228>
    137e:	44 e0       	ldi	r20, 0x04	; 4
    1380:	60 e0       	ldi	r22, 0x00	; 0
    1382:	74 e0       	ldi	r23, 0x04	; 4
    1384:	81 e4       	ldi	r24, 0x41	; 65
    1386:	0e 94 da 01 	call	0x3b4	; 0x3b4 <pin_check>
    138a:	02 c0       	rjmp	.+4      	; 0x1390 <main+0x22c>
    138c:	80 e0       	ldi	r24, 0x00	; 0
    138e:	90 e0       	ldi	r25, 0x00	; 0
    ok = ok && pin_check('A', &PORTA,5);
    1390:	80 ff       	sbrs	r24, 0
    1392:	07 c0       	rjmp	.+14     	; 0x13a2 <main+0x23e>
    1394:	45 e0       	ldi	r20, 0x05	; 5
    1396:	60 e0       	ldi	r22, 0x00	; 0
    1398:	74 e0       	ldi	r23, 0x04	; 4
    139a:	81 e4       	ldi	r24, 0x41	; 65
    139c:	0e 94 da 01 	call	0x3b4	; 0x3b4 <pin_check>
    13a0:	02 c0       	rjmp	.+4      	; 0x13a6 <main+0x242>
    13a2:	80 e0       	ldi	r24, 0x00	; 0
    13a4:	90 e0       	ldi	r25, 0x00	; 0
    ok = ok && pin_check('B', &PORTB,0);
    13a6:	80 ff       	sbrs	r24, 0
    13a8:	07 c0       	rjmp	.+14     	; 0x13b8 <main+0x254>
    13aa:	40 e0       	ldi	r20, 0x00	; 0
    13ac:	60 e2       	ldi	r22, 0x20	; 32
    13ae:	74 e0       	ldi	r23, 0x04	; 4
    13b0:	82 e4       	ldi	r24, 0x42	; 66
    13b2:	0e 94 da 01 	call	0x3b4	; 0x3b4 <pin_check>
    13b6:	02 c0       	rjmp	.+4      	; 0x13bc <main+0x258>
    13b8:	80 e0       	ldi	r24, 0x00	; 0
    13ba:	90 e0       	ldi	r25, 0x00	; 0
    ok = ok && pin_check('B', &PORTB,1);
    13bc:	80 ff       	sbrs	r24, 0
    13be:	07 c0       	rjmp	.+14     	; 0x13ce <main+0x26a>
    13c0:	41 e0       	ldi	r20, 0x01	; 1
    13c2:	60 e2       	ldi	r22, 0x20	; 32
    13c4:	74 e0       	ldi	r23, 0x04	; 4
    13c6:	82 e4       	ldi	r24, 0x42	; 66
    13c8:	0e 94 da 01 	call	0x3b4	; 0x3b4 <pin_check>
    13cc:	02 c0       	rjmp	.+4      	; 0x13d2 <main+0x26e>
    13ce:	80 e0       	ldi	r24, 0x00	; 0
    13d0:	90 e0       	ldi	r25, 0x00	; 0
    ok = ok && pin_check('B', &PORTB,2);
    13d2:	80 ff       	sbrs	r24, 0
    13d4:	07 c0       	rjmp	.+14     	; 0x13e4 <main+0x280>
    13d6:	42 e0       	ldi	r20, 0x02	; 2
    13d8:	60 e2       	ldi	r22, 0x20	; 32
    13da:	74 e0       	ldi	r23, 0x04	; 4
    13dc:	82 e4       	ldi	r24, 0x42	; 66
    13de:	0e 94 da 01 	call	0x3b4	; 0x3b4 <pin_check>
    13e2:	02 c0       	rjmp	.+4      	; 0x13e8 <main+0x284>
    13e4:	80 e0       	ldi	r24, 0x00	; 0
    13e6:	90 e0       	ldi	r25, 0x00	; 0
    if (! ok) {
    13e8:	80 fd       	sbrc	r24, 0
    13ea:	10 c0       	rjmp	.+32     	; 0x140c <main+0x2a8>
        diag_println("Motor pin stuck high"); // never returns
    13ec:	89 e4       	ldi	r24, 0x49	; 73
    13ee:	92 eb       	ldi	r25, 0xB2	; 178
    13f0:	9f 93       	push	r25
    13f2:	8f 93       	push	r24
    13f4:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
        diag_println("Continuing anyway");
    13f8:	8e e5       	ldi	r24, 0x5E	; 94
    13fa:	92 eb       	ldi	r25, 0xB2	; 178
    13fc:	9f 93       	push	r25
    13fe:	8f 93       	push	r24
    1400:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
    1404:	0f 90       	pop	r0
    1406:	0f 90       	pop	r0
    1408:	0f 90       	pop	r0
    140a:	0f 90       	pop	r0
	// Set all the ports which need to be outputs, to be outputs.
	// should all be low initially.
	// motor pwm outputs = PB0,1,2 and PA3,4,5
	// PB0, PB1, PB2
	// clear initial output
	PORTB.OUTCLR = 1 << 0;
    140c:	81 e0       	ldi	r24, 0x01	; 1
    140e:	80 93 26 04 	sts	0x0426, r24	; 0x800426 <CSWTCH.12+0x7f558f>
	PORTB.OUTCLR = 1 << 1;
    1412:	52 e0       	ldi	r21, 0x02	; 2
    1414:	50 93 26 04 	sts	0x0426, r21	; 0x800426 <CSWTCH.12+0x7f558f>
	PORTB.OUTCLR = 1 << 2;
    1418:	44 e0       	ldi	r20, 0x04	; 4
    141a:	40 93 26 04 	sts	0x0426, r20	; 0x800426 <CSWTCH.12+0x7f558f>
	PORTA.OUTCLR = 1 << 3;
    141e:	38 e0       	ldi	r19, 0x08	; 8
    1420:	30 93 06 04 	sts	0x0406, r19	; 0x800406 <CSWTCH.12+0x7f556f>
	PORTA.OUTCLR = 1 << 4;
    1424:	20 e1       	ldi	r18, 0x10	; 16
    1426:	20 93 06 04 	sts	0x0406, r18	; 0x800406 <CSWTCH.12+0x7f556f>
	PORTA.OUTCLR = 1 << 5;
    142a:	90 e2       	ldi	r25, 0x20	; 32
    142c:	90 93 06 04 	sts	0x0406, r25	; 0x800406 <CSWTCH.12+0x7f556f>
	// set directions to out
	PORTB.DIRSET = 1 << 0;
    1430:	80 93 21 04 	sts	0x0421, r24	; 0x800421 <CSWTCH.12+0x7f558a>
	PORTB.DIRSET = 1 << 1;
    1434:	50 93 21 04 	sts	0x0421, r21	; 0x800421 <CSWTCH.12+0x7f558a>
	PORTB.DIRSET = 1 << 2;
    1438:	40 93 21 04 	sts	0x0421, r20	; 0x800421 <CSWTCH.12+0x7f558a>
	PORTA.DIRSET = 1 << 3;
    143c:	30 93 01 04 	sts	0x0401, r19	; 0x800401 <CSWTCH.12+0x7f556a>
	PORTA.DIRSET = 1 << 4;
    1440:	20 93 01 04 	sts	0x0401, r18	; 0x800401 <CSWTCH.12+0x7f556a>
	PORTA.DIRSET = 1 << 5;
    1444:	90 93 01 04 	sts	0x0401, r25	; 0x800401 <CSWTCH.12+0x7f556a>
	//
	// We can count to 200 because it's a more "round" number.
	// that gives us 200 PWM levels
	uint8_t period_val = DUTY_MAX;
	// Enable split mode
	TCA0.SPLIT.CTRLD = TCA_SPLIT_SPLITM_bm;
    1448:	80 93 03 0a 	sts	0x0A03, r24	; 0x800a03 <CSWTCH.12+0x7f5b6c>
	// Enable all comparators in split mode
	TCA0.SPLIT.CTRLB = 
    144c:	87 e7       	ldi	r24, 0x77	; 119
    144e:	80 93 01 0a 	sts	0x0A01, r24	; 0x800a01 <CSWTCH.12+0x7f5b6a>
		TCA_SPLIT_LCMP2EN_bm |
		TCA_SPLIT_HCMP0EN_bm |
		TCA_SPLIT_HCMP1EN_bm |
		TCA_SPLIT_HCMP2EN_bm;
	// Set the period - use the same period for both halves.
	TCA0.SPLIT.HPER = period_val;
    1452:	88 ec       	ldi	r24, 0xC8	; 200
    1454:	80 93 27 0a 	sts	0x0A27, r24	; 0x800a27 <CSWTCH.12+0x7f5b90>
	TCA0.SPLIT.LPER = period_val;
    1458:	80 93 26 0a 	sts	0x0A26, r24	; 0x800a26 <CSWTCH.12+0x7f5b8f>
	// Set the halves to be "out of sync"
	TCA0.SPLIT.HCNT = period_val /2;
    145c:	84 e6       	ldi	r24, 0x64	; 100
    145e:	80 93 21 0a 	sts	0x0A21, r24	; 0x800a21 <CSWTCH.12+0x7f5b8a>
	// Finally, turn the timer on.
    // Divide by 64, 3.333mhz / 64 =~ 52khz
    // 52khz / period_val =~ 260hz = PWM frequency.
	TCA0.SPLIT.CTRLA = 
    1462:	8b e0       	ldi	r24, 0x0B	; 11
    1464:	80 93 00 0a 	sts	0x0A00, r24	; 0x800a00 <CSWTCH.12+0x7f5b69>
    weapons_init();
    show_device_info();
    // test_get_micros();
    spi_init();
    motors_init();
    mixing_init(); // reset default config
    1468:	0e 94 0a 01 	call	0x214	; 0x214 <mixing_init>

void nvconfig_load()
{
    nvconfig_layout nvdata;

    eeprom_read_block((void *) &nvdata, eeprom_addr, sizeof(nvdata));
    146c:	4f e1       	ldi	r20, 0x1F	; 31
    146e:	50 e0       	ldi	r21, 0x00	; 0
    1470:	60 e0       	ldi	r22, 0x00	; 0
    1472:	70 e0       	ldi	r23, 0x00	; 0
    1474:	c8 01       	movw	r24, r16
    1476:	0e 94 5f 11 	call	0x22be	; 0x22be <eeprom_read_block>
    if (nvdata.magic == NVCONFIG_MAGIC) {
    147a:	89 81       	ldd	r24, Y+1	; 0x01
    147c:	9a 81       	ldd	r25, Y+2	; 0x02
    147e:	8a 32       	cpi	r24, 0x2A	; 42
    1480:	94 44       	sbci	r25, 0x44	; 68
    1482:	f1 f4       	brne	.+60     	; 0x14c0 <main+0x35c>
        // Great.
        // Copy the config data.
        memcpy(radio_state.tx_id, nvdata.tx_id, 4);
    1484:	8b 81       	ldd	r24, Y+3	; 0x03
    1486:	9c 81       	ldd	r25, Y+4	; 0x04
    1488:	ad 81       	ldd	r26, Y+5	; 0x05
    148a:	be 81       	ldd	r27, Y+6	; 0x06
    148c:	80 93 80 38 	sts	0x3880, r24	; 0x803880 <radio_state>
    1490:	90 93 81 38 	sts	0x3881, r25	; 0x803881 <radio_state+0x1>
    1494:	a0 93 82 38 	sts	0x3882, r26	; 0x803882 <radio_state+0x2>
    1498:	b0 93 83 38 	sts	0x3883, r27	; 0x803883 <radio_state+0x3>
        memcpy(radio_state.hop_channels, nvdata.hop_channels, NR_HOP_CHANNELS);
    149c:	80 e1       	ldi	r24, 0x10	; 16
    149e:	fe 01       	movw	r30, r28
    14a0:	37 96       	adiw	r30, 0x07	; 7
    14a2:	a8 e8       	ldi	r26, 0x88	; 136
    14a4:	b8 e3       	ldi	r27, 0x38	; 56
    14a6:	01 90       	ld	r0, Z+
    14a8:	0d 92       	st	X+, r0
    14aa:	8a 95       	dec	r24
    14ac:	e1 f7       	brne	.-8      	; 0x14a6 <main+0x342>
        memcpy(&mixing_state, &nvdata.mixing_state, sizeof(mixing_state));
    14ae:	89 e0       	ldi	r24, 0x09	; 9
    14b0:	fe 01       	movw	r30, r28
    14b2:	77 96       	adiw	r30, 0x17	; 23
    14b4:	a5 e2       	ldi	r26, 0x25	; 37
    14b6:	b9 e3       	ldi	r27, 0x39	; 57
    14b8:	01 90       	ld	r0, Z+
    14ba:	0d 92       	st	X+, r0
    14bc:	8a 95       	dec	r24
    14be:	e1 f7       	brne	.-8      	; 0x14b8 <main+0x354>

static void vsense_hw_init()
{
    // NB: input voltage to mcu should be 3.3
    // Set voltage reference to 2.5v (highest which is guaranteed lower than input)
    VREF.CTRLA = VREF_ADC0REFSEL_2V5_gc;
    14c0:	80 e2       	ldi	r24, 0x20	; 32
    14c2:	80 93 a0 00 	sts	0x00A0, r24	; 0x8000a0 <CSWTCH.12+0x7f5209>
    // We use pin PC2 as analogue input (on attiny1617).
    // Disable the digital input.
    PORTC.PIN2CTRL &= ~PORT_ISC_gm;
    14c6:	80 91 52 04 	lds	r24, 0x0452	; 0x800452 <CSWTCH.12+0x7f55bb>
    14ca:	88 7f       	andi	r24, 0xF8	; 248
    14cc:	80 93 52 04 	sts	0x0452, r24	; 0x800452 <CSWTCH.12+0x7f55bb>
    PORTC.PIN2CTRL |= PORT_ISC_INPUT_DISABLE_gc;
    14d0:	80 91 52 04 	lds	r24, 0x0452	; 0x800452 <CSWTCH.12+0x7f55bb>
    14d4:	84 60       	ori	r24, 0x04	; 4
    14d6:	80 93 52 04 	sts	0x0452, r24	; 0x800452 <CSWTCH.12+0x7f55bb>
    // We use pin PB5 as analogue input on attiny817
    // disable its digital input.
    PORTB.PIN5CTRL &= ~PORT_ISC_gm;
    14da:	80 91 35 04 	lds	r24, 0x0435	; 0x800435 <CSWTCH.12+0x7f559e>
    14de:	88 7f       	andi	r24, 0xF8	; 248
    14e0:	80 93 35 04 	sts	0x0435, r24	; 0x800435 <CSWTCH.12+0x7f559e>
    PORTB.PIN5CTRL |= PORT_ISC_INPUT_DISABLE_gc;
    14e4:	80 91 35 04 	lds	r24, 0x0435	; 0x800435 <CSWTCH.12+0x7f559e>
    14e8:	84 60       	ori	r24, 0x04	; 4
    14ea:	80 93 35 04 	sts	0x0435, r24	; 0x800435 <CSWTCH.12+0x7f559e>
               | ADC_RESSEL_10BIT_gc;   /* 10-bit mode */
    
    ADC1.MUXPOS  = ADC_MUXPOS_AIN8_gc; // ADC1 muxpos 8 = PC2
#else
    // Attiny817, 1616 and maybe others that use PB5
    ADC0.CTRLC = ADC_PRESC_DIV16_gc      /* CLK_PER divider */
    14ee:	83 e0       	ldi	r24, 0x03	; 3
    14f0:	80 93 02 06 	sts	0x0602, r24	; 0x800602 <CSWTCH.12+0x7f576b>
               | ADC_REFSEL_INTREF_gc;  /* Internal reference */
    
    ADC0.CTRLA = ADC_ENABLE_bm          /* ADC Enable: enabled */
    14f4:	91 e0       	ldi	r25, 0x01	; 1
    14f6:	90 93 00 06 	sts	0x0600, r25	; 0x800600 <CSWTCH.12+0x7f5769>
               | ADC_RESSEL_10BIT_gc;   /* 10-bit mode */
    
    /* Select ADC channel */
    ADC0.MUXPOS  = ADC_MUXPOS_AIN8_gc; // ADC0.AIN8 == Pin PB5
    14fa:	88 e0       	ldi	r24, 0x08	; 8
    14fc:	80 93 06 06 	sts	0x0606, r24	; 0x800606 <CSWTCH.12+0x7f576f>
#endif

    /* Enable FreeRun mode */
    ADC_VSENSE.CTRLA |= ADC_FREERUN_bm;
    1500:	80 91 00 06 	lds	r24, 0x0600	; 0x800600 <CSWTCH.12+0x7f5769>
    1504:	82 60       	ori	r24, 0x02	; 2
    1506:	80 93 00 06 	sts	0x0600, r24	; 0x800600 <CSWTCH.12+0x7f5769>

    // Start the first conversion.
    ADC_VSENSE.COMMAND = ADC_STCONV_bm;    
    150a:	90 93 08 06 	sts	0x0608, r25	; 0x800608 <CSWTCH.12+0x7f5771>
#endif
}

void radio_init()
{
    diag_println("Begin radio_init");
    150e:	80 e7       	ldi	r24, 0x70	; 112
    1510:	92 eb       	ldi	r25, 0xB2	; 178
    1512:	9f 93       	push	r25
    1514:	8f 93       	push	r24
    1516:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
}

static void radio_init_rx_id()
{
    // Real rx gives: 9c fb 96 41
    radio_state.rx_id[0] = 0x2a;
    151a:	8a e2       	ldi	r24, 0x2A	; 42
    151c:	80 93 84 38 	sts	0x3884, r24	; 0x803884 <radio_state+0x4>
    1520:	0f 90       	pop	r0
    1522:	0f 90       	pop	r0
    1524:	a3 e0       	ldi	r26, 0x03	; 3
    1526:	b1 e1       	ldi	r27, 0x11	; 17
    // Mix the device serial number into the rx id.
    // serial number is 10 bytes.
    uint8_t * serialnum = (uint8_t *) & (SIGROW.SERNUM0);
    for (uint8_t i=0; i<10; i++) {
        radio_state.rx_id[i % 4] ^= serialnum[i];
    1528:	ed ef       	ldi	r30, 0xFD	; 253
    152a:	ea 0f       	add	r30, r26
    152c:	e3 70       	andi	r30, 0x03	; 3
    152e:	f0 e0       	ldi	r31, 0x00	; 0
    1530:	8d 91       	ld	r24, X+
    1532:	e0 58       	subi	r30, 0x80	; 128
    1534:	f7 4c       	sbci	r31, 0xC7	; 199
    1536:	94 81       	ldd	r25, Z+4	; 0x04
    1538:	89 27       	eor	r24, r25
    153a:	84 83       	std	Z+4, r24	; 0x04
    // Real rx gives: 9c fb 96 41
    radio_state.rx_id[0] = 0x2a;
    // Mix the device serial number into the rx id.
    // serial number is 10 bytes.
    uint8_t * serialnum = (uint8_t *) & (SIGROW.SERNUM0);
    for (uint8_t i=0; i<10; i++) {
    153c:	ad 30       	cpi	r26, 0x0D	; 13
    153e:	11 e1       	ldi	r17, 0x11	; 17
    1540:	b1 07       	cpc	r27, r17
    1542:	91 f7       	brne	.-28     	; 0x1528 <main+0x3c4>
        radio_state.rx_id[i % 4] ^= serialnum[i];
    }
#ifdef ENABLE_DIAG
    diag_puts("rx_id=");
    1544:	81 e8       	ldi	r24, 0x81	; 129
    1546:	92 eb       	ldi	r25, 0xB2	; 178
    1548:	0e 94 b5 00 	call	0x16a	; 0x16a <diag_puts>
    dump_buf(radio_state.rx_id, 4);
    154c:	64 e0       	ldi	r22, 0x04	; 4
    154e:	84 e8       	ldi	r24, 0x84	; 132
    1550:	98 e3       	ldi	r25, 0x38	; 56
    1552:	0e 94 72 01 	call	0x2e4	; 0x2e4 <dump_buf>

void radio_init()
{
    diag_println("Begin radio_init");
    radio_init_rx_id();
    init_a7105_hardware();
    1556:	0e 94 67 02 	call	0x4ce	; 0x4ce <init_a7105_hardware>

static bool is_all_zeros(const uint8_t *buf, uint8_t len)
{
    uint8_t acc = 0;
    for (uint8_t i=0; i<len; i++) {
        acc |= buf[i];
    155a:	90 91 81 38 	lds	r25, 0x3881	; 0x803881 <radio_state+0x1>
    155e:	80 91 80 38 	lds	r24, 0x3880	; 0x803880 <radio_state>
    1562:	89 2b       	or	r24, r25
    1564:	90 91 82 38 	lds	r25, 0x3882	; 0x803882 <radio_state+0x2>
    1568:	89 2b       	or	r24, r25
    init_a7105_hardware();

    /* Determine whether we have any tx info loaded from nvram.
     */
    // If there are no data loaded, tx_id will be all zeros
    if (is_all_zeros(radio_state.tx_id, sizeof(radio_state.tx_id))) {
    156a:	90 91 83 38 	lds	r25, 0x3883	; 0x803883 <radio_state+0x3>
    156e:	89 2b       	or	r24, r25
    1570:	19 f4       	brne	.+6      	; 0x1578 <main+0x414>
        init_bind_mode();
    1572:	0e 94 05 02 	call	0x40a	; 0x40a <init_bind_mode>
    1576:	36 c0       	rjmp	.+108    	; 0x15e4 <main+0x480>
    } else {
        diag_println("initialising from saved tx id: ");
    1578:	88 e8       	ldi	r24, 0x88	; 136
    157a:	92 eb       	ldi	r25, 0xB2	; 178
    157c:	9f 93       	push	r25
    157e:	8f 93       	push	r24
    1580:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
        dump_buf(radio_state.tx_id,  4);
    1584:	64 e0       	ldi	r22, 0x04	; 4
    1586:	80 e8       	ldi	r24, 0x80	; 128
    1588:	98 e3       	ldi	r25, 0x38	; 56
    158a:	0e 94 72 01 	call	0x2e4	; 0x2e4 <dump_buf>
        radio_state.state = RADIO_STATE_HOPPING;
    158e:	82 e0       	ldi	r24, 0x02	; 2
    1590:	80 93 bc 38 	sts	0x38BC, r24	; 0x8038bc <radio_state+0x3c>
        // Save the hopping channels in case we need them later.
        memcpy(radio_state.hop_channels_saved, radio_state.hop_channels,
    1594:	80 e1       	ldi	r24, 0x10	; 16
    1596:	e8 e8       	ldi	r30, 0x88	; 136
    1598:	f8 e3       	ldi	r31, 0x38	; 56
    159a:	a8 e9       	ldi	r26, 0x98	; 152
    159c:	b8 e3       	ldi	r27, 0x38	; 56
    159e:	01 90       	ld	r0, Z+
    15a0:	0d 92       	st	X+, r0
    15a2:	8a 95       	dec	r24
    15a4:	e1 f7       	brne	.-8      	; 0x159e <main+0x43a>
            NR_HOP_CHANNELS);
        // Save previous tx id.
        memcpy(radio_state.tx_id_saved, radio_state.tx_id,
    15a6:	80 91 80 38 	lds	r24, 0x3880	; 0x803880 <radio_state>
    15aa:	90 91 81 38 	lds	r25, 0x3881	; 0x803881 <radio_state+0x1>
    15ae:	a0 91 82 38 	lds	r26, 0x3882	; 0x803882 <radio_state+0x2>
    15b2:	b0 91 83 38 	lds	r27, 0x3883	; 0x803883 <radio_state+0x3>
    15b6:	80 93 b8 38 	sts	0x38B8, r24	; 0x8038b8 <radio_state+0x38>
    15ba:	90 93 b9 38 	sts	0x38B9, r25	; 0x8038b9 <radio_state+0x39>
    15be:	a0 93 ba 38 	sts	0x38BA, r26	; 0x8038ba <radio_state+0x3a>
    15c2:	b0 93 bb 38 	sts	0x38BB, r27	; 0x8038bb <radio_state+0x3b>
            sizeof(radio_state.tx_id_saved));
        diag_println("Hop channels: ");
    15c6:	88 ea       	ldi	r24, 0xA8	; 168
    15c8:	92 eb       	ldi	r25, 0xB2	; 178
    15ca:	9f 93       	push	r25
    15cc:	8f 93       	push	r24
    15ce:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
        dump_buf(radio_state.hop_channels, NR_HOP_CHANNELS);
    15d2:	60 e1       	ldi	r22, 0x10	; 16
    15d4:	88 e8       	ldi	r24, 0x88	; 136
    15d6:	98 e3       	ldi	r25, 0x38	; 56
    15d8:	0e 94 72 01 	call	0x2e4	; 0x2e4 <dump_buf>
    15dc:	0f 90       	pop	r0
    15de:	0f 90       	pop	r0
    15e0:	0f 90       	pop	r0
    15e2:	0f 90       	pop	r0
    }

    // Init led BLINKY gpio - set it as output.
    LED_VPORT->DIR |= LED_PIN_bm;
    15e4:	24 9a       	sbi	0x04, 4	; 4
    
    init_interrupts();
    15e6:	0e 94 dc 03 	call	0x7b8	; 0x7b8 <init_interrupts>
    diag_println("End radio_init");
    15ea:	87 eb       	ldi	r24, 0xB7	; 183
    15ec:	92 eb       	ldi	r25, 0xB2	; 178
    15ee:	9f 93       	push	r25
    15f0:	8f 93       	push	r24
    15f2:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>

static void watchdog_init()
{
    // WDT_PERIOD_256CLK_gc = (0x06<<0), approx 0.25s
    uint8_t wdt_ctrla = WDT_PERIOD_256CLK_gc; 
    _PROTECTED_WRITE(WDT.CTRLA, wdt_ctrla);    
    15f6:	96 e0       	ldi	r25, 0x06	; 6
    15f8:	88 ed       	ldi	r24, 0xD8	; 216
    15fa:	84 bf       	out	0x34, r24	; 52
    15fc:	90 93 00 01 	sts	0x0100, r25	; 0x800100 <CSWTCH.12+0x7f5269>
    1600:	0f 90       	pop	r0
    1602:	0f 90       	pop	r0
    1604:	8e 01       	movw	r16, r28
    1606:	0f 5e       	subi	r16, 0xEF	; 239
    1608:	1f 4f       	sbci	r17, 0xFF	; 255
    160a:	08 a3       	std	Y+32, r16	; 0x20
    160c:	19 a3       	std	Y+33, r17	; 0x21
}

uint32_t get_tickcount()
{
    uint32_t tc;
    cli(); // disable irq
    160e:	f8 94       	cli
    tc = master_state.tickcount;
    1610:	80 90 73 38 	lds	r8, 0x3873	; 0x803873 <master_state>
    1614:	90 90 74 38 	lds	r9, 0x3874	; 0x803874 <master_state+0x1>
    1618:	a0 90 75 38 	lds	r10, 0x3875	; 0x803875 <master_state+0x2>
    161c:	b0 90 76 38 	lds	r11, 0x3876	; 0x803876 <master_state+0x3>
    sei(); // enable irq
    1620:	78 94       	sei
// Transmitter transmits one channel number higher?
// So we need to subtract one from every channel no?
void radio_loop()
{
    uint32_t now = get_tickcount();
    if (radio_state.packet_is_valid) {
    1622:	90 91 ed 38 	lds	r25, 0x38ED	; 0x8038ed <radio_state+0x6d>
    1626:	80 91 bc 38 	lds	r24, 0x38BC	; 0x8038bc <radio_state+0x3c>
    162a:	99 23       	and	r25, r25
    162c:	09 f4       	brne	.+2      	; 0x1630 <main+0x4cc>
    162e:	13 c4       	rjmp	.+2086   	; 0x1e56 <main+0xcf2>
        if (radio_state.state == RADIO_STATE_BIND) {
    1630:	81 11       	cpse	r24, r1
    1632:	99 c0       	rjmp	.+306    	; 0x1766 <main+0x602>
{
    // packet is in radio_state.packet.
    uint8_t *bind_tx_id = radio_state.packet + 1;
    // Check for a packet from our *old* saved transmitter, 
    // This is a normal situation and we should immediately resume operation.
    if (memcmp(bind_tx_id, radio_state.tx_id_saved, 4) == 0) {
    1634:	44 e0       	ldi	r20, 0x04	; 4
    1636:	50 e0       	ldi	r21, 0x00	; 0
    1638:	68 eb       	ldi	r22, 0xB8	; 184
    163a:	78 e3       	ldi	r23, 0x38	; 56
    163c:	89 ec       	ldi	r24, 0xC9	; 201
    163e:	98 e3       	ldi	r25, 0x38	; 56
    1640:	0e 94 1d 14 	call	0x283a	; 0x283a <memcmp>
    1644:	89 2b       	or	r24, r25
    1646:	31 f5       	brne	.+76     	; 0x1694 <main+0x530>
        // Old transmitter came back!
        diag_println("Old transmitter reappeared, will use old settings");
    1648:	86 ec       	ldi	r24, 0xC6	; 198
    164a:	92 eb       	ldi	r25, 0xB2	; 178
    164c:	9f 93       	push	r25
    164e:	8f 93       	push	r24
    1650:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
        memcpy(radio_state.tx_id, radio_state.tx_id_saved, 
    1654:	80 91 b8 38 	lds	r24, 0x38B8	; 0x8038b8 <radio_state+0x38>
    1658:	90 91 b9 38 	lds	r25, 0x38B9	; 0x8038b9 <radio_state+0x39>
    165c:	a0 91 ba 38 	lds	r26, 0x38BA	; 0x8038ba <radio_state+0x3a>
    1660:	b0 91 bb 38 	lds	r27, 0x38BB	; 0x8038bb <radio_state+0x3b>
    1664:	80 93 80 38 	sts	0x3880, r24	; 0x803880 <radio_state>
    1668:	90 93 81 38 	sts	0x3881, r25	; 0x803881 <radio_state+0x1>
    166c:	a0 93 82 38 	sts	0x3882, r26	; 0x803882 <radio_state+0x2>
    1670:	b0 93 83 38 	sts	0x3883, r27	; 0x803883 <radio_state+0x3>
            sizeof(radio_state.tx_id));
        memcpy(radio_state.hop_channels, radio_state.hop_channels_saved, 
    1674:	80 e1       	ldi	r24, 0x10	; 16
    1676:	e8 e9       	ldi	r30, 0x98	; 152
    1678:	f8 e3       	ldi	r31, 0x38	; 56
    167a:	a8 e8       	ldi	r26, 0x88	; 136
    167c:	b8 e3       	ldi	r27, 0x38	; 56
    167e:	01 90       	ld	r0, Z+
    1680:	0d 92       	st	X+, r0
    1682:	8a 95       	dec	r24
    1684:	e1 f7       	brne	.-8      	; 0x167e <main+0x51a>
            sizeof(radio_state.hop_channels));
        radio_state.hop_index = 0;
    1686:	10 92 bd 38 	sts	0x38BD, r1	; 0x8038bd <radio_state+0x3d>
        radio_state.state = RADIO_STATE_HOPPING;
    168a:	82 e0       	ldi	r24, 0x02	; 2
    168c:	80 93 bc 38 	sts	0x38BC, r24	; 0x8038bc <radio_state+0x3c>
    1690:	0f 90       	pop	r0
    1692:	0f 90       	pop	r0
    }
    // Check if a lot of repeated bind packets appear.
    // (This is for non-telemetry transmitters)
    if (memcmp(bind_tx_id, radio_state.tx_id, 4) == 0) {
    1694:	44 e0       	ldi	r20, 0x04	; 4
    1696:	50 e0       	ldi	r21, 0x00	; 0
    1698:	60 e8       	ldi	r22, 0x80	; 128
    169a:	78 e3       	ldi	r23, 0x38	; 56
    169c:	89 ec       	ldi	r24, 0xC9	; 201
    169e:	98 e3       	ldi	r25, 0x38	; 56
    16a0:	0e 94 1d 14 	call	0x283a	; 0x283a <memcmp>
    16a4:	89 2b       	or	r24, r25
    16a6:	99 f5       	brne	.+102    	; 0x170e <main+0x5aa>
        // Repeated bind packet.
        radio_state.bind_packet_count += 1;
    16a8:	80 91 c2 38 	lds	r24, 0x38C2	; 0x8038c2 <radio_state+0x42>
    16ac:	90 91 c3 38 	lds	r25, 0x38C3	; 0x8038c3 <radio_state+0x43>
    16b0:	01 96       	adiw	r24, 0x01	; 1
    16b2:	80 93 c2 38 	sts	0x38C2, r24	; 0x8038c2 <radio_state+0x42>
    16b6:	90 93 c3 38 	sts	0x38C3, r25	; 0x8038c3 <radio_state+0x43>
        if (radio_state.bind_packet_count >= 100) {
    16ba:	84 36       	cpi	r24, 0x64	; 100
    16bc:	91 05       	cpc	r25, r1
    16be:	18 f0       	brcs	.+6      	; 0x16c6 <main+0x562>
            // Excellent, done.
            handle_bind_complete();
    16c0:	0e 94 31 02 	call	0x462	; 0x462 <handle_bind_complete>
    16c4:	c2 c3       	rjmp	.+1924   	; 0x1e4a <main+0xce6>
        }

        // For telemetry transmitters, which heard our responses,
        // Check for a "BIND2" type
        // Which should contain our rx id.
        if (radio_state.packet[9] == 2) {
    16c6:	80 91 d1 38 	lds	r24, 0x38D1	; 0x8038d1 <radio_state+0x51>
    16ca:	82 30       	cpi	r24, 0x02	; 2
    16cc:	09 f0       	breq	.+2      	; 0x16d0 <main+0x56c>
    16ce:	bd c3       	rjmp	.+1914   	; 0x1e4a <main+0xce6>
            if (memcmp(radio_state.packet + 5, radio_state.rx_id, 4) == 0) {
    16d0:	44 e0       	ldi	r20, 0x04	; 4
    16d2:	50 e0       	ldi	r21, 0x00	; 0
    16d4:	64 e8       	ldi	r22, 0x84	; 132
    16d6:	78 e3       	ldi	r23, 0x38	; 56
    16d8:	8d ec       	ldi	r24, 0xCD	; 205
    16da:	98 e3       	ldi	r25, 0x38	; 56
    16dc:	0e 94 1d 14 	call	0x283a	; 0x283a <memcmp>
    16e0:	89 2b       	or	r24, r25
    16e2:	09 f0       	breq	.+2      	; 0x16e6 <main+0x582>
    16e4:	b2 c3       	rjmp	.+1892   	; 0x1e4a <main+0xce6>
                // Yeah!
                diag_println("Bind2 detected");
    16e6:	88 ef       	ldi	r24, 0xF8	; 248
    16e8:	92 eb       	ldi	r25, 0xB2	; 178
    16ea:	9f 93       	push	r25
    16ec:	8f 93       	push	r24
    16ee:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
                // handle_bind_complete();
                radio_state.bind_complete_time = now + 50;
    16f2:	d5 01       	movw	r26, r10
    16f4:	c4 01       	movw	r24, r8
    16f6:	c2 96       	adiw	r24, 0x32	; 50
    16f8:	a1 1d       	adc	r26, r1
    16fa:	b1 1d       	adc	r27, r1
    16fc:	80 93 c4 38 	sts	0x38C4, r24	; 0x8038c4 <radio_state+0x44>
    1700:	90 93 c5 38 	sts	0x38C5, r25	; 0x8038c5 <radio_state+0x45>
    1704:	a0 93 c6 38 	sts	0x38C6, r26	; 0x8038c6 <radio_state+0x46>
    1708:	b0 93 c7 38 	sts	0x38C7, r27	; 0x8038c7 <radio_state+0x47>
    170c:	29 c0       	rjmp	.+82     	; 0x1760 <main+0x5fc>
        }

    } else {
        // Make sure it really is a bind packet.
        uint8_t t = radio_state.packet[0];
        if ((t == PACKET_TYPE_BIND1) || (t == PACKET_TYPE_BIND2)) {
    170e:	80 91 c8 38 	lds	r24, 0x38C8	; 0x8038c8 <radio_state+0x48>
    1712:	8b 5b       	subi	r24, 0xBB	; 187
    1714:	82 30       	cpi	r24, 0x02	; 2
    1716:	08 f0       	brcs	.+2      	; 0x171a <main+0x5b6>
    1718:	98 c3       	rjmp	.+1840   	; 0x1e4a <main+0xce6>
            // New bind packet
            diag_println("New tx detected");
    171a:	87 e0       	ldi	r24, 0x07	; 7
    171c:	93 eb       	ldi	r25, 0xB3	; 179
    171e:	9f 93       	push	r25
    1720:	8f 93       	push	r24
    1722:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
            radio_state.bind_packet_count = 0;
    1726:	10 92 c2 38 	sts	0x38C2, r1	; 0x8038c2 <radio_state+0x42>
    172a:	10 92 c3 38 	sts	0x38C3, r1	; 0x8038c3 <radio_state+0x43>
            memcpy(radio_state.tx_id, bind_tx_id, 4); // store id.
    172e:	80 91 c9 38 	lds	r24, 0x38C9	; 0x8038c9 <radio_state+0x49>
    1732:	90 91 ca 38 	lds	r25, 0x38CA	; 0x8038ca <radio_state+0x4a>
    1736:	a0 91 cb 38 	lds	r26, 0x38CB	; 0x8038cb <radio_state+0x4b>
    173a:	b0 91 cc 38 	lds	r27, 0x38CC	; 0x8038cc <radio_state+0x4c>
    173e:	80 93 80 38 	sts	0x3880, r24	; 0x803880 <radio_state>
    1742:	90 93 81 38 	sts	0x3881, r25	; 0x803881 <radio_state+0x1>
    1746:	a0 93 82 38 	sts	0x3882, r26	; 0x803882 <radio_state+0x2>
    174a:	b0 93 83 38 	sts	0x3883, r27	; 0x803883 <radio_state+0x3>
            memcpy(radio_state.hop_channels_new, radio_state.packet + 11, NR_HOP_CHANNELS);
    174e:	80 e1       	ldi	r24, 0x10	; 16
    1750:	e3 ed       	ldi	r30, 0xD3	; 211
    1752:	f8 e3       	ldi	r31, 0x38	; 56
    1754:	a8 ea       	ldi	r26, 0xA8	; 168
    1756:	b8 e3       	ldi	r27, 0x38	; 56
    1758:	01 90       	ld	r0, Z+
    175a:	0d 92       	st	X+, r0
    175c:	8a 95       	dec	r24
    175e:	e1 f7       	brne	.-8      	; 0x1758 <main+0x5f4>
    1760:	0f 90       	pop	r0
    1762:	0f 90       	pop	r0
    1764:	72 c3       	rjmp	.+1764   	; 0x1e4a <main+0xce6>
    radio_state.telemetry_packet_is_valid = sense_ok;
}

static void handle_packet_sticks()
{
    radio_state.sticks_packet_count += 1;
    1766:	80 91 20 39 	lds	r24, 0x3920	; 0x803920 <radio_state+0xa0>
    176a:	8f 5f       	subi	r24, 0xFF	; 255
    176c:	80 93 20 39 	sts	0x3920, r24	; 0x803920 <radio_state+0xa0>
    uint8_t type = radio_state.packet[0];
    if (type != PACKET_TYPE_STICKS) {
    1770:	80 91 c8 38 	lds	r24, 0x38C8	; 0x8038c8 <radio_state+0x48>
    1774:	88 35       	cpi	r24, 0x58	; 88
    1776:	09 f0       	breq	.+2      	; 0x177a <main+0x616>
    1778:	60 c3       	rjmp	.+1728   	; 0x1e3a <main+0xcd6>
    177a:	a1 ed       	ldi	r26, 0xD1	; 209
    177c:	b8 e3       	ldi	r27, 0x38	; 56
    177e:	fe 01       	movw	r30, r28
    1780:	31 96       	adiw	r30, 0x01	; 1
    // diag_println("stixchan: %02x", (int) radio_state.packet_channel);
    const uint8_t sticks_offset = 9; // Bytes offset
    uint16_t sticks[NUM_CONTROL_CHANNELS]; 
    for (uint8_t n=0; n< NUM_CONTROL_CHANNELS; n++) {
        uint16_t *stick = (uint16_t *) (radio_state.packet + sticks_offset + (2*n));
        sticks[n] = *stick;
    1782:	8d 91       	ld	r24, X+
    1784:	9d 91       	ld	r25, X+
    1786:	81 93       	st	Z+, r24
    1788:	91 93       	st	Z+, r25
    }
    // packet is in radio_state.packet.
    // diag_println("stixchan: %02x", (int) radio_state.packet_channel);
    const uint8_t sticks_offset = 9; // Bytes offset
    uint16_t sticks[NUM_CONTROL_CHANNELS]; 
    for (uint8_t n=0; n< NUM_CONTROL_CHANNELS; n++) {
    178a:	08 a1       	ldd	r16, Y+32	; 0x20
    178c:	19 a1       	ldd	r17, Y+33	; 0x21
    178e:	0e 17       	cp	r16, r30
    1790:	1f 07       	cpc	r17, r31
    1792:	b9 f7       	brne	.-18     	; 0x1782 <main+0x61e>
}

sticks_result_t sticks_receive_positions(uint16_t *sticks)
{
    // Swap the weapon & weapon2 channels, if enabled.
    if (mixing_state.swap_weapon_channels) {
    1794:	80 91 2a 39 	lds	r24, 0x392A	; 0x80392a <mixing_state+0x5>
    1798:	88 23       	and	r24, r24
    179a:	41 f0       	breq	.+16     	; 0x17ac <main+0x648>
        int16_t temp;
        temp = sticks[CHANNEL_INDEX_WEAPON];
    179c:	8d 81       	ldd	r24, Y+5	; 0x05
    179e:	9e 81       	ldd	r25, Y+6	; 0x06
        sticks[CHANNEL_INDEX_WEAPON] = sticks[CHANNEL_INDEX_WEAPON2];
    17a0:	2f 81       	ldd	r18, Y+7	; 0x07
    17a2:	38 85       	ldd	r19, Y+8	; 0x08
    17a4:	2d 83       	std	Y+5, r18	; 0x05
    17a6:	3e 83       	std	Y+6, r19	; 0x06
        sticks[CHANNEL_INDEX_WEAPON2] = temp;
    17a8:	8f 83       	std	Y+7, r24	; 0x07
    17aa:	98 87       	std	Y+8, r25	; 0x08
    }
    // Returns this structure;
    sticks_result_t result;
    result.led_state = 1;
    result.rpm_value = 0;
    result.config_mode = configuration_mode;
    17ac:	10 91 21 38 	lds	r17, 0x3821	; 0x803821 <configuration_mode>
    17b0:	1a a3       	std	Y+34, r17	; 0x22
    17b2:	2d 81       	ldd	r18, Y+5	; 0x05
    17b4:	3e 81       	ldd	r19, Y+6	; 0x06
    17b6:	8b 81       	ldd	r24, Y+3	; 0x03
    17b8:	9c 81       	ldd	r25, Y+4	; 0x04

    if (configuration_mode)
    17ba:	11 23       	and	r17, r17
    17bc:	09 f4       	brne	.+2      	; 0x17c0 <main+0x65c>
    17be:	21 c1       	rjmp	.+578    	; 0x1a02 <main+0x89e>
    // Return led state.
    
    // Decide if we need to quit config mode
    uint16_t throttle = sticks[CHANNEL_INDEX_THROTTLE];
    uint16_t weapon  = sticks[CHANNEL_INDEX_WEAPON];
    if (throttle > throttle_max) throttle_max = throttle;
    17c0:	40 91 19 38 	lds	r20, 0x3819	; 0x803819 <throttle_max>
    17c4:	50 91 1a 38 	lds	r21, 0x381A	; 0x80381a <throttle_max+0x1>
    17c8:	48 17       	cp	r20, r24
    17ca:	59 07       	cpc	r21, r25
    17cc:	20 f4       	brcc	.+8      	; 0x17d6 <main+0x672>
    17ce:	80 93 19 38 	sts	0x3819, r24	; 0x803819 <throttle_max>
    17d2:	90 93 1a 38 	sts	0x381A, r25	; 0x80381a <throttle_max+0x1>
    if (throttle < throttle_min) throttle_min = throttle;
    17d6:	40 91 1b 38 	lds	r20, 0x381B	; 0x80381b <throttle_min>
    17da:	50 91 1c 38 	lds	r21, 0x381C	; 0x80381c <throttle_min+0x1>
    17de:	84 17       	cp	r24, r20
    17e0:	95 07       	cpc	r25, r21
    17e2:	20 f4       	brcc	.+8      	; 0x17ec <main+0x688>
    17e4:	80 93 1b 38 	sts	0x381B, r24	; 0x80381b <throttle_min>
    17e8:	90 93 1c 38 	sts	0x381C, r25	; 0x80381c <throttle_min+0x1>
    // If the weapon is centred and the throttle has moved a bit,
    // then let's go.
    if (is_centred(weapon) && ((throttle_max - throttle_min) > 100)) {
    17ec:	29 57       	subi	r18, 0x79	; 121
    17ee:	35 40       	sbci	r19, 0x05	; 5
    17f0:	27 3c       	cpi	r18, 0xC7	; 199
    17f2:	31 05       	cpc	r19, r1
    17f4:	a8 f4       	brcc	.+42     	; 0x1820 <main+0x6bc>
    17f6:	80 91 19 38 	lds	r24, 0x3819	; 0x803819 <throttle_max>
    17fa:	90 91 1a 38 	lds	r25, 0x381A	; 0x80381a <throttle_max+0x1>
    17fe:	20 91 1b 38 	lds	r18, 0x381B	; 0x80381b <throttle_min>
    1802:	30 91 1c 38 	lds	r19, 0x381C	; 0x80381c <throttle_min+0x1>
    1806:	82 1b       	sub	r24, r18
    1808:	93 0b       	sbc	r25, r19
    180a:	85 36       	cpi	r24, 0x65	; 101
    180c:	91 05       	cpc	r25, r1
    180e:	40 f0       	brcs	.+16     	; 0x1820 <main+0x6bc>
        // Leaving config mode.
        diag_puts("Leaving configuration mode");
    1810:	87 e1       	ldi	r24, 0x17	; 23
    1812:	93 eb       	ldi	r25, 0xB3	; 179
    1814:	0e 94 b5 00 	call	0x16a	; 0x16a <diag_puts>
        configuration_mode = false;
    1818:	10 92 21 38 	sts	0x3821, r1	; 0x803821 <configuration_mode>
        return 1;
    181c:	2a a1       	ldd	r18, Y+34	; 0x22
    181e:	ee c0       	rjmp	.+476    	; 0x19fc <main+0x898>
    }
    bool config_switch = (sticks[CHANNEL_INDEX_CONFIG] > 1600);
    1820:	29 85       	ldd	r18, Y+9	; 0x09
    1822:	3a 85       	ldd	r19, Y+10	; 0x0a
    1824:	91 e0       	ldi	r25, 0x01	; 1
    1826:	21 34       	cpi	r18, 0x41	; 65
    1828:	46 e0       	ldi	r20, 0x06	; 6
    182a:	34 07       	cpc	r19, r20
    182c:	08 f4       	brcc	.+2      	; 0x1830 <main+0x6cc>
    182e:	90 e0       	ldi	r25, 0x00	; 0
}

uint32_t get_tickcount()
{
    uint32_t tc;
    cli(); // disable irq
    1830:	f8 94       	cli
    tc = master_state.tickcount;
    1832:	c0 90 73 38 	lds	r12, 0x3873	; 0x803873 <master_state>
    1836:	d0 90 74 38 	lds	r13, 0x3874	; 0x803874 <master_state+0x1>
    183a:	e0 90 75 38 	lds	r14, 0x3875	; 0x803875 <master_state+0x2>
    183e:	f0 90 76 38 	lds	r15, 0x3876	; 0x803876 <master_state+0x3>
    sei(); // enable irq
    1842:	78 94       	sei
    uint32_t now = get_tickcount();
    if (config_switch && ! config_switch_last) {
    1844:	21 34       	cpi	r18, 0x41	; 65
    1846:	36 40       	sbci	r19, 0x06	; 6
    1848:	88 f0       	brcs	.+34     	; 0x186c <main+0x708>
    184a:	80 91 18 38 	lds	r24, 0x3818	; 0x803818 <config_switch_last>
    184e:	81 11       	cpse	r24, r1
    1850:	0d c0       	rjmp	.+26     	; 0x186c <main+0x708>
        // Switch pressed
        config_switch_count += 1;
    1852:	80 91 17 38 	lds	r24, 0x3817	; 0x803817 <config_switch_count>
    1856:	8f 5f       	subi	r24, 0xFF	; 255
    1858:	80 93 17 38 	sts	0x3817, r24	; 0x803817 <config_switch_count>
        last_switch_time = now;
    185c:	c0 92 07 38 	sts	0x3807, r12	; 0x803807 <last_switch_time>
    1860:	d0 92 08 38 	sts	0x3808, r13	; 0x803808 <last_switch_time+0x1>
    1864:	e0 92 09 38 	sts	0x3809, r14	; 0x803809 <last_switch_time+0x2>
    1868:	f0 92 0a 38 	sts	0x380A, r15	; 0x80380a <last_switch_time+0x3>
    }
    config_switch_last = config_switch;
    186c:	90 93 18 38 	sts	0x3818, r25	; 0x803818 <config_switch_last>
    if (config_switch_count > 0) {
    1870:	80 91 17 38 	lds	r24, 0x3817	; 0x803817 <config_switch_count>
    1874:	88 23       	and	r24, r24
    1876:	09 f4       	brne	.+2      	; 0x187a <main+0x716>
    1878:	93 c0       	rjmp	.+294    	; 0x19a0 <main+0x83c>
        // Delay with no switches?
        // Handle it.
        if ((now - last_switch_time) > 200) {
    187a:	40 91 07 38 	lds	r20, 0x3807	; 0x803807 <last_switch_time>
    187e:	50 91 08 38 	lds	r21, 0x3808	; 0x803808 <last_switch_time+0x1>
    1882:	60 91 09 38 	lds	r22, 0x3809	; 0x803809 <last_switch_time+0x2>
    1886:	70 91 0a 38 	lds	r23, 0x380A	; 0x80380a <last_switch_time+0x3>
    188a:	97 01       	movw	r18, r14
    188c:	86 01       	movw	r16, r12
    188e:	04 1b       	sub	r16, r20
    1890:	15 0b       	sbc	r17, r21
    1892:	26 0b       	sbc	r18, r22
    1894:	37 0b       	sbc	r19, r23
    1896:	09 3c       	cpi	r16, 0xC9	; 201
    1898:	11 05       	cpc	r17, r1
    189a:	21 05       	cpc	r18, r1
    189c:	31 05       	cpc	r19, r1
    189e:	08 f4       	brcc	.+2      	; 0x18a2 <main+0x73e>
    18a0:	7f c0       	rjmp	.+254    	; 0x19a0 <main+0x83c>
    config_rpm_value = (count * 10) + value;
}

static void handle_switches(uint32_t now)
{
    diag_println("config_switch_count: %d", config_switch_count);
    18a2:	1f 92       	push	r1
    18a4:	8f 93       	push	r24
    18a6:	22 e3       	ldi	r18, 0x32	; 50
    18a8:	33 eb       	ldi	r19, 0xB3	; 179
    18aa:	3f 93       	push	r19
    18ac:	2f 93       	push	r18
    18ae:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
    bool need_save = false;
    switch (config_switch_count) {
    18b2:	0f 90       	pop	r0
    18b4:	0f 90       	pop	r0
    18b6:	0f 90       	pop	r0
    18b8:	0f 90       	pop	r0
    18ba:	e0 91 17 38 	lds	r30, 0x3817	; 0x803817 <config_switch_count>
    18be:	8e 2f       	mov	r24, r30
    18c0:	90 e0       	ldi	r25, 0x00	; 0
    18c2:	fc 01       	movw	r30, r24
    18c4:	32 97       	sbiw	r30, 0x02	; 2
    18c6:	ea 30       	cpi	r30, 0x0A	; 10
    18c8:	f1 05       	cpc	r31, r1
    18ca:	08 f0       	brcs	.+2      	; 0x18ce <main+0x76a>
    18cc:	67 c0       	rjmp	.+206    	; 0x199c <main+0x838>
    18ce:	e2 5c       	subi	r30, 0xC2	; 194
    18d0:	ff 4f       	sbci	r31, 0xFF	; 255
    18d2:	0c 94 ed 11 	jmp	0x23da	; 0x23da <__tablejump2__>
        case 1: // Nothing, in case they pressed it by mistake.
            break; 
        case 2: // Invert left
            mixing_state.invert_left = ! mixing_state.invert_left;
    18d6:	90 91 26 39 	lds	r25, 0x3926	; 0x803926 <mixing_state+0x1>
    18da:	81 e0       	ldi	r24, 0x01	; 1
    18dc:	89 27       	eor	r24, r25
    18de:	80 93 26 39 	sts	0x3926, r24	; 0x803926 <mixing_state+0x1>
    return ((stick > 1400) && (stick < 1600));
}

static void show_rpm_value(uint8_t count, uint8_t value)
{
    config_rpm_value = (count * 10) + value;
    18e2:	8c 5e       	subi	r24, 0xEC	; 236
    18e4:	32 c0       	rjmp	.+100    	; 0x194a <main+0x7e6>
            mixing_state.invert_left = ! mixing_state.invert_left;
            show_rpm_value(config_switch_count, mixing_state.invert_left);
            need_save = true;
            break;
        case 3: // Invert right
            mixing_state.invert_right = ! mixing_state.invert_right;
    18e6:	90 91 27 39 	lds	r25, 0x3927	; 0x803927 <mixing_state+0x2>
    18ea:	81 e0       	ldi	r24, 0x01	; 1
    18ec:	89 27       	eor	r24, r25
    18ee:	80 93 27 39 	sts	0x3927, r24	; 0x803927 <mixing_state+0x2>
    return ((stick > 1400) && (stick < 1600));
}

static void show_rpm_value(uint8_t count, uint8_t value)
{
    config_rpm_value = (count * 10) + value;
    18f2:	82 5e       	subi	r24, 0xE2	; 226
    18f4:	2a c0       	rjmp	.+84     	; 0x194a <main+0x7e6>
            mixing_state.invert_right = ! mixing_state.invert_right;
            show_rpm_value(config_switch_count, mixing_state.invert_right);
            need_save = true;
            break;
        case 4: // Invert weapon
            mixing_state.invert_weapon = ! mixing_state.invert_weapon;
    18f6:	90 91 28 39 	lds	r25, 0x3928	; 0x803928 <mixing_state+0x3>
    18fa:	81 e0       	ldi	r24, 0x01	; 1
    18fc:	89 27       	eor	r24, r25
    18fe:	80 93 28 39 	sts	0x3928, r24	; 0x803928 <mixing_state+0x3>
    return ((stick > 1400) && (stick < 1600));
}

static void show_rpm_value(uint8_t count, uint8_t value)
{
    config_rpm_value = (count * 10) + value;
    1902:	88 5d       	subi	r24, 0xD8	; 216
    1904:	22 c0       	rjmp	.+68     	; 0x194a <main+0x7e6>
            mixing_state.invert_weapon = ! mixing_state.invert_weapon;
            show_rpm_value(config_switch_count, mixing_state.invert_weapon);
            need_save = true;
            break;
        case 5: // Reset defaults.
            mixing_init();
    1906:	0e 94 0a 01 	call	0x214	; 0x214 <mixing_init>
    return ((stick > 1400) && (stick < 1600));
}

static void show_rpm_value(uint8_t count, uint8_t value)
{
    config_rpm_value = (count * 10) + value;
    190a:	82 e3       	ldi	r24, 0x32	; 50
    190c:	1e c0       	rjmp	.+60     	; 0x194a <main+0x7e6>
            mixing_init();
            need_save = true;
            show_rpm_value(config_switch_count, 0);
            break;
        case 6: // Mixing on/off (on by default)
            mixing_state.enable_mixing = ! mixing_state.enable_mixing;
    190e:	90 91 29 39 	lds	r25, 0x3929	; 0x803929 <mixing_state+0x4>
    1912:	81 e0       	ldi	r24, 0x01	; 1
    1914:	89 27       	eor	r24, r25
    1916:	80 93 29 39 	sts	0x3929, r24	; 0x803929 <mixing_state+0x4>
    return ((stick > 1400) && (stick < 1600));
}

static void show_rpm_value(uint8_t count, uint8_t value)
{
    config_rpm_value = (count * 10) + value;
    191a:	84 5c       	subi	r24, 0xC4	; 196
    191c:	16 c0       	rjmp	.+44     	; 0x194a <main+0x7e6>
static const uint8_t blank_data[2];

void nvconfig_reset()
{
    // Overwrite the magic number
    eeprom_update_block((void *) &blank_data, eeprom_addr, sizeof(blank_data));
    191e:	42 e0       	ldi	r20, 0x02	; 2
    1920:	50 e0       	ldi	r21, 0x00	; 0
    1922:	60 e0       	ldi	r22, 0x00	; 0
    1924:	70 e0       	ldi	r23, 0x00	; 0
    1926:	80 e0       	ldi	r24, 0x00	; 0
    1928:	98 e3       	ldi	r25, 0x38	; 56
    192a:	0e 94 63 11 	call	0x22c6	; 0x22c6 <eeprom_update_block>
}

void trigger_reset()
{
    // Pull the reset line.
    cli();
    192e:	f8 94       	cli
    while (1) {
        _PROTECTED_WRITE(RSTCTRL.SWRR, 1);
    1930:	88 ed       	ldi	r24, 0xD8	; 216
    1932:	91 e0       	ldi	r25, 0x01	; 1
    1934:	84 bf       	out	0x34, r24	; 52
    1936:	90 93 41 00 	sts	0x0041, r25	; 0x800041 <CSWTCH.12+0x7f51aa>
    193a:	fc cf       	rjmp	.-8      	; 0x1934 <main+0x7d0>
        case 7: // Factory reset / unbind
            nvconfig_reset();
            trigger_reset(); // reset the chip
            break;
        case 8: // Option to swap the weapon channels.
            mixing_state.swap_weapon_channels = ! mixing_state.swap_weapon_channels;
    193c:	90 91 2a 39 	lds	r25, 0x392A	; 0x80392a <mixing_state+0x5>
    1940:	81 e0       	ldi	r24, 0x01	; 1
    1942:	89 27       	eor	r24, r25
    1944:	80 93 2a 39 	sts	0x392A, r24	; 0x80392a <mixing_state+0x5>
    return ((stick > 1400) && (stick < 1600));
}

static void show_rpm_value(uint8_t count, uint8_t value)
{
    config_rpm_value = (count * 10) + value;
    1948:	80 5b       	subi	r24, 0xB0	; 176
    194a:	80 93 16 38 	sts	0x3816, r24	; 0x803816 <config_rpm_value>
            need_save = true;
            show_rpm_value(config_switch_count, mixing_state.enable_max_steering);
            break;
    }
    if (need_save) {
        nvconfig_save();
    194e:	0e 94 17 01 	call	0x22e	; 0x22e <nvconfig_save>
        // Flash the led N times
        config_flash_count = config_switch_count;
    1952:	80 91 17 38 	lds	r24, 0x3817	; 0x803817 <config_switch_count>
    1956:	80 93 06 38 	sts	0x3806, r24	; 0x803806 <config_flash_count>
        config_flash_start_time = now;
    195a:	c0 92 02 38 	sts	0x3802, r12	; 0x803802 <config_flash_start_time>
    195e:	d0 92 03 38 	sts	0x3803, r13	; 0x803803 <config_flash_start_time+0x1>
    1962:	e0 92 04 38 	sts	0x3804, r14	; 0x803804 <config_flash_start_time+0x2>
    1966:	f0 92 05 38 	sts	0x3805, r15	; 0x803805 <config_flash_start_time+0x3>
    196a:	18 c0       	rjmp	.+48     	; 0x199c <main+0x838>
            mixing_state.swap_weapon_channels = ! mixing_state.swap_weapon_channels;
            need_save = true;
            show_rpm_value(config_switch_count, mixing_state.swap_weapon_channels);
            break;
        case 9: // Option to disable braking.
            mixing_state.enable_braking = ! mixing_state.enable_braking;
    196c:	90 91 2b 39 	lds	r25, 0x392B	; 0x80392b <mixing_state+0x6>
    1970:	81 e0       	ldi	r24, 0x01	; 1
    1972:	89 27       	eor	r24, r25
    1974:	80 93 2b 39 	sts	0x392B, r24	; 0x80392b <mixing_state+0x6>
    return ((stick > 1400) && (stick < 1600));
}

static void show_rpm_value(uint8_t count, uint8_t value)
{
    config_rpm_value = (count * 10) + value;
    1978:	86 5a       	subi	r24, 0xA6	; 166
    197a:	e7 cf       	rjmp	.-50     	; 0x194a <main+0x7e6>
            mixing_state.enable_braking = ! mixing_state.enable_braking;
            need_save = true;
            show_rpm_value(config_switch_count, mixing_state.enable_braking);
            break;
        case 10: // Servo doubling.
            mixing_state.enable_servo_double = ! mixing_state.enable_servo_double;
    197c:	90 91 2c 39 	lds	r25, 0x392C	; 0x80392c <mixing_state+0x7>
    1980:	81 e0       	ldi	r24, 0x01	; 1
    1982:	89 27       	eor	r24, r25
    1984:	80 93 2c 39 	sts	0x392C, r24	; 0x80392c <mixing_state+0x7>
    return ((stick > 1400) && (stick < 1600));
}

static void show_rpm_value(uint8_t count, uint8_t value)
{
    config_rpm_value = (count * 10) + value;
    1988:	8c 59       	subi	r24, 0x9C	; 156
    198a:	df cf       	rjmp	.-66     	; 0x194a <main+0x7e6>
            mixing_state.enable_servo_double = ! mixing_state.enable_servo_double;
            need_save = true;
            show_rpm_value(config_switch_count, mixing_state.enable_servo_double);
            break;
        case 11: // Max steering (100% mix)
            mixing_state.enable_max_steering = ! mixing_state.enable_max_steering;
    198c:	90 91 2d 39 	lds	r25, 0x392D	; 0x80392d <mixing_state+0x8>
    1990:	81 e0       	ldi	r24, 0x01	; 1
    1992:	89 27       	eor	r24, r25
    1994:	80 93 2d 39 	sts	0x392D, r24	; 0x80392d <mixing_state+0x8>
    return ((stick > 1400) && (stick < 1600));
}

static void show_rpm_value(uint8_t count, uint8_t value)
{
    config_rpm_value = (count * 10) + value;
    1998:	82 59       	subi	r24, 0x92	; 146
    199a:	d7 cf       	rjmp	.-82     	; 0x194a <main+0x7e6>
        nvconfig_save();
        // Flash the led N times
        config_flash_count = config_switch_count;
        config_flash_start_time = now;
    }
    config_switch_count = 0;
    199c:	10 92 17 38 	sts	0x3817, r1	; 0x803817 <config_switch_count>
        }
    }
    
    // Flash the LED after a successful configuration command
    // So that the operator knows.
    if (config_flash_count != 0) {
    19a0:	10 91 06 38 	lds	r17, 0x3806	; 0x803806 <config_flash_count>
    19a4:	11 23       	and	r17, r17
    19a6:	21 f1       	breq	.+72     	; 0x19f0 <main+0x88c>
        uint32_t t = now - config_flash_start_time;
        // Create config_flash_count flashes:
        uint8_t ticks = (t / 25);
    19a8:	80 91 02 38 	lds	r24, 0x3802	; 0x803802 <config_flash_start_time>
    19ac:	90 91 03 38 	lds	r25, 0x3803	; 0x803803 <config_flash_start_time+0x1>
    19b0:	a0 91 04 38 	lds	r26, 0x3804	; 0x803804 <config_flash_start_time+0x2>
    19b4:	b0 91 05 38 	lds	r27, 0x3805	; 0x803805 <config_flash_start_time+0x3>
    19b8:	a7 01       	movw	r20, r14
    19ba:	96 01       	movw	r18, r12
    19bc:	28 1b       	sub	r18, r24
    19be:	39 0b       	sbc	r19, r25
    19c0:	4a 0b       	sbc	r20, r26
    19c2:	5b 0b       	sbc	r21, r27
    19c4:	ca 01       	movw	r24, r20
    19c6:	b9 01       	movw	r22, r18
    19c8:	29 e1       	ldi	r18, 0x19	; 25
    19ca:	30 e0       	ldi	r19, 0x00	; 0
    19cc:	40 e0       	ldi	r20, 0x00	; 0
    19ce:	50 e0       	ldi	r21, 0x00	; 0
    19d0:	0e 94 cb 11 	call	0x2396	; 0x2396 <__udivmodsi4>
        if (ticks > (config_flash_count*2)) {
    19d4:	42 2f       	mov	r20, r18
    19d6:	50 e0       	ldi	r21, 0x00	; 0
    19d8:	81 2f       	mov	r24, r17
    19da:	90 e0       	ldi	r25, 0x00	; 0
    19dc:	88 0f       	add	r24, r24
    19de:	99 1f       	adc	r25, r25
    19e0:	84 17       	cp	r24, r20
    19e2:	95 07       	cpc	r25, r21
    19e4:	14 f4       	brge	.+4      	; 0x19ea <main+0x886>
            config_flash_count = 0; // Stop flashing.
    19e6:	10 92 06 38 	sts	0x3806, r1	; 0x803806 <config_flash_count>
        }
        return ! (ticks & 1); 
    19ea:	20 95       	com	r18
    19ec:	21 70       	andi	r18, 0x01	; 1
    19ee:	06 c0       	rjmp	.+12     	; 0x19fc <main+0x898>
    } else {
        // No recent config command:
        // Configuration mode LED status:
        // Create a high-duty-cycle blinking
        uint8_t blinky_counter = (now & 0x1f);
        return (blinky_counter >= 0x2);
    19f0:	8c 2d       	mov	r24, r12
    19f2:	8f 71       	andi	r24, 0x1F	; 31
    19f4:	21 e0       	ldi	r18, 0x01	; 1
    19f6:	82 30       	cpi	r24, 0x02	; 2
    19f8:	08 f4       	brcc	.+2      	; 0x19fc <main+0x898>
    19fa:	20 e0       	ldi	r18, 0x00	; 0
    result.config_mode = configuration_mode;

    if (configuration_mode)
    {
        result.led_state = handle_configuration_mode(sticks);
        result.rpm_value = config_rpm_value;
    19fc:	40 91 16 38 	lds	r20, 0x3816	; 0x803816 <config_rpm_value>
    1a00:	5f c1       	rjmp	.+702    	; 0x1cc0 <main+0xb5c>
        // Convert to signed.
        int16_t rel_steering = (int16_t) sticks[CHANNEL_INDEX_STEERING] - 1500;
        int16_t rel_throttle = (int16_t) sticks[CHANNEL_INDEX_THROTTLE] - 1500;
        int16_t rel_weapon = (int16_t) sticks[CHANNEL_INDEX_WEAPON] - 1500;
        // Inverted driving option
        bool invert = (bool) (sticks[CHANNEL_INDEX_INVERT] > 1600) ;
    1a02:	09 85       	ldd	r16, Y+9	; 0x09
    1a04:	1a 85       	ldd	r17, Y+10	; 0x0a
    1a06:	0f a3       	std	Y+39, r16	; 0x27
    1a08:	18 a7       	std	Y+40, r17	; 0x28
    1a0a:	ac 01       	movw	r20, r24
    1a0c:	4c 5d       	subi	r20, 0xDC	; 220
    1a0e:	55 40       	sbci	r21, 0x05	; 5
    1a10:	6a e0       	ldi	r22, 0x0A	; 10
    1a12:	64 9f       	mul	r22, r20
    1a14:	c0 01       	movw	r24, r0
    1a16:	65 9f       	mul	r22, r21
    1a18:	90 0d       	add	r25, r0
    1a1a:	11 24       	eor	r1, r1
    1a1c:	6d e2       	ldi	r22, 0x2D	; 45
    1a1e:	70 e0       	ldi	r23, 0x00	; 0
    1a20:	0e 94 b7 11 	call	0x236e	; 0x236e <__divmodhi4>
    1a24:	7b 01       	movw	r14, r22
    1a26:	6c 39       	cpi	r22, 0x9C	; 156
    1a28:	7f 4f       	sbci	r23, 0xFF	; 255
    1a2a:	24 f4       	brge	.+8      	; 0x1a34 <main+0x8d0>
    1a2c:	9c e9       	ldi	r25, 0x9C	; 156
    1a2e:	e9 2e       	mov	r14, r25
    1a30:	ff 24       	eor	r15, r15
    1a32:	fa 94       	dec	r15
    1a34:	45 e6       	ldi	r20, 0x65	; 101
    1a36:	e4 16       	cp	r14, r20
    1a38:	f1 04       	cpc	r15, r1
    1a3a:	1c f0       	brlt	.+6      	; 0x1a42 <main+0x8de>
    1a3c:	84 e6       	ldi	r24, 0x64	; 100
    1a3e:	e8 2e       	mov	r14, r24
    1a40:	f1 2c       	mov	r15, r1
    1a42:	49 81       	ldd	r20, Y+1	; 0x01
    1a44:	5a 81       	ldd	r21, Y+2	; 0x02
    1a46:	4c 5d       	subi	r20, 0xDC	; 220
    1a48:	55 40       	sbci	r21, 0x05	; 5
    1a4a:	66 ef       	ldi	r22, 0xF6	; 246
    1a4c:	64 03       	mulsu	r22, r20
    1a4e:	c0 01       	movw	r24, r0
    1a50:	65 9f       	mul	r22, r21
    1a52:	90 0d       	add	r25, r0
    1a54:	11 24       	eor	r1, r1
    1a56:	6d e2       	ldi	r22, 0x2D	; 45
    1a58:	70 e0       	ldi	r23, 0x00	; 0
    1a5a:	0e 94 b7 11 	call	0x236e	; 0x236e <__divmodhi4>
    1a5e:	1b 01       	movw	r2, r22
    1a60:	6c 39       	cpi	r22, 0x9C	; 156
    1a62:	7f 4f       	sbci	r23, 0xFF	; 255
    1a64:	24 f4       	brge	.+8      	; 0x1a6e <main+0x90a>
    1a66:	0c e9       	ldi	r16, 0x9C	; 156
    1a68:	20 2e       	mov	r2, r16
    1a6a:	33 24       	eor	r3, r3
    1a6c:	3a 94       	dec	r3
    1a6e:	85 e6       	ldi	r24, 0x65	; 101
    1a70:	28 16       	cp	r2, r24
    1a72:	31 04       	cpc	r3, r1
    1a74:	1c f0       	brlt	.+6      	; 0x1a7c <main+0x918>
    1a76:	14 e6       	ldi	r17, 0x64	; 100
    1a78:	21 2e       	mov	r2, r17
    1a7a:	31 2c       	mov	r3, r1
    1a7c:	2c 5d       	subi	r18, 0xDC	; 220
    1a7e:	35 40       	sbci	r19, 0x05	; 5
    1a80:	4a e0       	ldi	r20, 0x0A	; 10
    1a82:	42 9f       	mul	r20, r18
    1a84:	c0 01       	movw	r24, r0
    1a86:	43 9f       	mul	r20, r19
    1a88:	90 0d       	add	r25, r0
    1a8a:	11 24       	eor	r1, r1
    1a8c:	6d e2       	ldi	r22, 0x2D	; 45
    1a8e:	70 e0       	ldi	r23, 0x00	; 0
    1a90:	0e 94 b7 11 	call	0x236e	; 0x236e <__divmodhi4>
    1a94:	8b 01       	movw	r16, r22
    1a96:	6c 39       	cpi	r22, 0x9C	; 156
    1a98:	7f 4f       	sbci	r23, 0xFF	; 255
    1a9a:	14 f4       	brge	.+4      	; 0x1aa0 <main+0x93c>
    1a9c:	0c e9       	ldi	r16, 0x9C	; 156
    1a9e:	1f ef       	ldi	r17, 0xFF	; 255
    1aa0:	05 36       	cpi	r16, 0x65	; 101
    1aa2:	11 05       	cpc	r17, r1
    1aa4:	14 f0       	brlt	.+4      	; 0x1aaa <main+0x946>
    1aa6:	04 e6       	ldi	r16, 0x64	; 100
    1aa8:	10 e0       	ldi	r17, 0x00	; 0
    return n;
}

static int deadzone(int n, int deadzone)
{
    if ((n < deadzone) && (n > (-deadzone))) {
    1aaa:	c7 01       	movw	r24, r14
    1aac:	09 96       	adiw	r24, 0x09	; 9
    1aae:	43 97       	sbiw	r24, 0x13	; 19
    1ab0:	10 f4       	brcc	.+4      	; 0x1ab6 <main+0x952>
        return 0;
    1ab2:	e1 2c       	mov	r14, r1
    1ab4:	f1 2c       	mov	r15, r1
    return n;
}

static int deadzone(int n, int deadzone)
{
    if ((n < deadzone) && (n > (-deadzone))) {
    1ab6:	c1 01       	movw	r24, r2
    1ab8:	09 96       	adiw	r24, 0x09	; 9
    1aba:	43 97       	sbiw	r24, 0x13	; 19
    1abc:	10 f4       	brcc	.+4      	; 0x1ac2 <main+0x95e>
        return 0;
    1abe:	21 2c       	mov	r2, r1
    1ac0:	31 2c       	mov	r3, r1
    return n;
}

static int deadzone(int n, int deadzone)
{
    if ((n < deadzone) && (n > (-deadzone))) {
    1ac2:	c8 01       	movw	r24, r16
    1ac4:	09 96       	adiw	r24, 0x09	; 9
    1ac6:	43 97       	sbiw	r24, 0x13	; 19
    1ac8:	10 f4       	brcc	.+4      	; 0x1ace <main+0x96a>
        return 0;
    1aca:	00 e0       	ldi	r16, 0x00	; 0
    1acc:	10 e0       	ldi	r17, 0x00	; 0
    // Clamp them again at 100
    //left = signedclamp(left, 100); 
    //right = signedclamp(right, 100); 

    //omni mixing
    left = (-steering - (1.732050808)*throttle + weapon) / 3; //sqrt(3) = (1.732050808) ish
    1ace:	66 27       	eor	r22, r22
    1ad0:	77 27       	eor	r23, r23
    1ad2:	62 19       	sub	r22, r2
    1ad4:	73 09       	sbc	r23, r3
    1ad6:	07 2e       	mov	r0, r23
    1ad8:	00 0c       	add	r0, r0
    1ada:	88 0b       	sbc	r24, r24
    1adc:	99 0b       	sbc	r25, r25
    1ade:	0e 94 24 13 	call	0x2648	; 0x2648 <__floatsisf>
    1ae2:	6b a3       	std	Y+35, r22	; 0x23
    1ae4:	7c a3       	std	Y+36, r23	; 0x24
    1ae6:	8d a3       	std	Y+37, r24	; 0x25
    1ae8:	9e a3       	std	Y+38, r25	; 0x26
    1aea:	b7 01       	movw	r22, r14
    1aec:	ff 0c       	add	r15, r15
    1aee:	88 0b       	sbc	r24, r24
    1af0:	99 0b       	sbc	r25, r25
    1af2:	0e 94 24 13 	call	0x2648	; 0x2648 <__floatsisf>
    1af6:	27 ed       	ldi	r18, 0xD7	; 215
    1af8:	33 eb       	ldi	r19, 0xB3	; 179
    1afa:	4d ed       	ldi	r20, 0xDD	; 221
    1afc:	5f e3       	ldi	r21, 0x3F	; 63
    1afe:	0e 94 b0 13 	call	0x2760	; 0x2760 <__mulsf3>
    1b02:	2b 01       	movw	r4, r22
    1b04:	3c 01       	movw	r6, r24
    1b06:	b8 01       	movw	r22, r16
    1b08:	01 2e       	mov	r0, r17
    1b0a:	00 0c       	add	r0, r0
    1b0c:	88 0b       	sbc	r24, r24
    1b0e:	99 0b       	sbc	r25, r25
    1b10:	0e 94 24 13 	call	0x2648	; 0x2648 <__floatsisf>
    1b14:	6b 01       	movw	r12, r22
    1b16:	7c 01       	movw	r14, r24
    1b18:	a3 01       	movw	r20, r6
    1b1a:	92 01       	movw	r18, r4
    1b1c:	6b a1       	ldd	r22, Y+35	; 0x23
    1b1e:	7c a1       	ldd	r23, Y+36	; 0x24
    1b20:	8d a1       	ldd	r24, Y+37	; 0x25
    1b22:	9e a1       	ldd	r25, Y+38	; 0x26
    1b24:	0e 94 0d 12 	call	0x241a	; 0x241a <__subsf3>
    1b28:	a7 01       	movw	r20, r14
    1b2a:	96 01       	movw	r18, r12
    1b2c:	0e 94 0e 12 	call	0x241c	; 0x241c <__addsf3>
    1b30:	20 e0       	ldi	r18, 0x00	; 0
    1b32:	30 e0       	ldi	r19, 0x00	; 0
    1b34:	40 e4       	ldi	r20, 0x40	; 64
    1b36:	50 e4       	ldi	r21, 0x40	; 64
    1b38:	0e 94 7a 12 	call	0x24f4	; 0x24f4 <__divsf3>
    1b3c:	0e 94 ec 12 	call	0x25d8	; 0x25d8 <__fixsfsi>
    1b40:	69 a7       	std	Y+41, r22	; 0x29
    1b42:	7a a7       	std	Y+42, r23	; 0x2a
    1b44:	8b a7       	std	Y+43, r24	; 0x2b
    1b46:	9c a7       	std	Y+44, r25	; 0x2c
    right = (-steering + (1.732050808)*throttle + weapon) / 3;
    1b48:	a3 01       	movw	r20, r6
    1b4a:	92 01       	movw	r18, r4
    1b4c:	6b a1       	ldd	r22, Y+35	; 0x23
    1b4e:	7c a1       	ldd	r23, Y+36	; 0x24
    1b50:	8d a1       	ldd	r24, Y+37	; 0x25
    1b52:	9e a1       	ldd	r25, Y+38	; 0x26
    1b54:	0e 94 0e 12 	call	0x241c	; 0x241c <__addsf3>
    1b58:	a7 01       	movw	r20, r14
    1b5a:	96 01       	movw	r18, r12
    1b5c:	0e 94 0e 12 	call	0x241c	; 0x241c <__addsf3>
    1b60:	20 e0       	ldi	r18, 0x00	; 0
    1b62:	30 e0       	ldi	r19, 0x00	; 0
    1b64:	40 e4       	ldi	r20, 0x40	; 64
    1b66:	50 e4       	ldi	r21, 0x40	; 64
    1b68:	0e 94 7a 12 	call	0x24f4	; 0x24f4 <__divsf3>
    1b6c:	0e 94 ec 12 	call	0x25d8	; 0x25d8 <__fixsfsi>
    1b70:	6b 01       	movw	r12, r22
    1b72:	7c 01       	movw	r14, r24
    back = (2*steering + weapon) / 3;
    1b74:	c1 01       	movw	r24, r2
    1b76:	88 0f       	add	r24, r24
    1b78:	99 1f       	adc	r25, r25
    1b7a:	80 0f       	add	r24, r16
    1b7c:	91 1f       	adc	r25, r17
    1b7e:	63 e0       	ldi	r22, 0x03	; 3
    1b80:	70 e0       	ldi	r23, 0x00	; 0
    1b82:	0e 94 b7 11 	call	0x236e	; 0x236e <__divmodhi4>

    // Now scale back to += 200 which is correct for pwm
    left = left *2;
    1b86:	09 a5       	ldd	r16, Y+41	; 0x29
    1b88:	1a a5       	ldd	r17, Y+42	; 0x2a
    1b8a:	00 0f       	add	r16, r16
    1b8c:	11 1f       	adc	r17, r17
    right = right * 2;
    1b8e:	cc 0c       	add	r12, r12
    1b90:	dd 1c       	adc	r13, r13
    back = back * 2;
    1b92:	66 0f       	add	r22, r22
    1b94:	77 1f       	adc	r23, r23
    // squaring(&left,200);
    // squaring(&right,200);
  
    //weapon = apply_weapon_rules(throttle, steering, weapon);
    
    if (invert) {
    1b96:	ef a1       	ldd	r30, Y+39	; 0x27
    1b98:	f8 a5       	ldd	r31, Y+40	; 0x28
    1b9a:	e1 34       	cpi	r30, 0x41	; 65
    1b9c:	f6 40       	sbci	r31, 0x06	; 6
    1b9e:	48 f0       	brcs	.+18     	; 0x1bb2 <main+0xa4e>
        int temp;
        // Swap left and right and invert.
        temp = left;
        left = -right;
    1ba0:	88 27       	eor	r24, r24
    1ba2:	99 27       	eor	r25, r25
    1ba4:	8c 19       	sub	r24, r12
    1ba6:	9d 09       	sbc	r25, r13
        right = -temp; 
    1ba8:	cc 24       	eor	r12, r12
    1baa:	dd 24       	eor	r13, r13
    1bac:	c0 1a       	sub	r12, r16
    1bae:	d1 0a       	sbc	r13, r17
    
    if (invert) {
        int temp;
        // Swap left and right and invert.
        temp = left;
        left = -right;
    1bb0:	8c 01       	movw	r16, r24
        right = -temp; 
    }
    // Check nvconfig and invert channels
    if (mixing_state.invert_left)
    1bb2:	80 91 26 39 	lds	r24, 0x3926	; 0x803926 <mixing_state+0x1>
    1bb6:	88 23       	and	r24, r24
    1bb8:	19 f0       	breq	.+6      	; 0x1bc0 <main+0xa5c>
        left = -left;
    1bba:	11 95       	neg	r17
    1bbc:	01 95       	neg	r16
    1bbe:	11 09       	sbc	r17, r1
    if (mixing_state.invert_right)
    1bc0:	80 91 27 39 	lds	r24, 0x3927	; 0x803927 <mixing_state+0x2>
    1bc4:	88 23       	and	r24, r24
    1bc6:	19 f0       	breq	.+6      	; 0x1bce <main+0xa6a>
        right = -right;
    1bc8:	d1 94       	neg	r13
    1bca:	c1 94       	neg	r12
    1bcc:	d1 08       	sbc	r13, r1
    if (mixing_state.invert_weapon)
        weapon = -weapon;


    set_motor_direction_duty(MOTOR_WEAPON, back);
    1bce:	80 e0       	ldi	r24, 0x00	; 0
    1bd0:	0e 94 5c 00 	call	0xb8	; 0xb8 <set_motor_direction_duty>
    if ((left == 0) && mixing_state.enable_braking) {
    1bd4:	01 15       	cp	r16, r1
    1bd6:	11 05       	cpc	r17, r1
    1bd8:	51 f4       	brne	.+20     	; 0x1bee <main+0xa8a>
    1bda:	80 91 2b 39 	lds	r24, 0x392B	; 0x80392b <mixing_state+0x6>
    1bde:	88 23       	and	r24, r24
    1be0:	31 f0       	breq	.+12     	; 0x1bee <main+0xa8a>
{
    volatile uint8_t * comp1 = motor_map[motor_id * 2]; 
    volatile uint8_t * comp2 = motor_map[motor_id * 2 + 1]; 
    // Set both pins high.
    // We should do this as quickly as possible.
    *comp1 = DUTY_MAX;
    1be2:	88 ec       	ldi	r24, 0xC8	; 200
    1be4:	80 93 2c 0a 	sts	0x0A2C, r24	; 0x800a2c <CSWTCH.12+0x7f5b95>
    *comp2 = DUTY_MAX;
    1be8:	80 93 2a 0a 	sts	0x0A2A, r24	; 0x800a2a <CSWTCH.12+0x7f5b93>
    1bec:	07 c0       	rjmp	.+14     	; 0x1bfc <main+0xa98>
        enable_motor_brake(MOTOR_LEFT);
    } else {
        set_motor_direction_duty(MOTOR_LEFT, -left);//reversed
    1bee:	66 27       	eor	r22, r22
    1bf0:	77 27       	eor	r23, r23
    1bf2:	60 1b       	sub	r22, r16
    1bf4:	71 0b       	sbc	r23, r17
    1bf6:	81 e0       	ldi	r24, 0x01	; 1
    1bf8:	0e 94 5c 00 	call	0xb8	; 0xb8 <set_motor_direction_duty>
    }
    if ((right == 0) && mixing_state.enable_braking) {
    1bfc:	c1 14       	cp	r12, r1
    1bfe:	d1 04       	cpc	r13, r1
    1c00:	51 f4       	brne	.+20     	; 0x1c16 <main+0xab2>
    1c02:	80 91 2b 39 	lds	r24, 0x392B	; 0x80392b <mixing_state+0x6>
    1c06:	88 23       	and	r24, r24
    1c08:	31 f0       	breq	.+12     	; 0x1c16 <main+0xab2>
{
    volatile uint8_t * comp1 = motor_map[motor_id * 2]; 
    volatile uint8_t * comp2 = motor_map[motor_id * 2 + 1]; 
    // Set both pins high.
    // We should do this as quickly as possible.
    *comp1 = DUTY_MAX;
    1c0a:	88 ec       	ldi	r24, 0xC8	; 200
    1c0c:	80 93 2d 0a 	sts	0x0A2D, r24	; 0x800a2d <CSWTCH.12+0x7f5b96>
    *comp2 = DUTY_MAX;
    1c10:	80 93 2b 0a 	sts	0x0A2B, r24	; 0x800a2b <CSWTCH.12+0x7f5b94>
    1c14:	04 c0       	rjmp	.+8      	; 0x1c1e <main+0xaba>
        enable_motor_brake(MOTOR_RIGHT);
    } else {
        set_motor_direction_duty(MOTOR_RIGHT, right);
    1c16:	b6 01       	movw	r22, r12
    1c18:	82 e0       	ldi	r24, 0x02	; 2
    1c1a:	0e 94 5c 00 	call	0xb8	; 0xb8 <set_motor_direction_duty>
    }

    if (diag_count == 0) {
    1c1e:	80 91 0b 38 	lds	r24, 0x380B	; 0x80380b <diag_count>
    1c22:	90 91 0c 38 	lds	r25, 0x380C	; 0x80380c <diag_count+0x1>
    1c26:	00 97       	sbiw	r24, 0x00	; 0
    1c28:	39 f4       	brne	.+14     	; 0x1c38 <main+0xad4>
        diag_count = 16;
    1c2a:	40 e1       	ldi	r20, 0x10	; 16
    1c2c:	50 e0       	ldi	r21, 0x00	; 0
    1c2e:	40 93 0b 38 	sts	0x380B, r20	; 0x80380b <diag_count>
    1c32:	50 93 0c 38 	sts	0x380C, r21	; 0x80380c <diag_count+0x1>
    1c36:	05 c0       	rjmp	.+10     	; 0x1c42 <main+0xade>
        // diag_println("L: %03d R: %03d W: %03d", left, right, weapon);
    } else {
        --diag_count;
    1c38:	01 97       	sbiw	r24, 0x01	; 1
    1c3a:	80 93 0b 38 	sts	0x380B, r24	; 0x80380b <diag_count>
    1c3e:	90 93 0c 38 	sts	0x380C, r25	; 0x80380c <diag_count+0x1>
        mixing_drive_motors(rel_throttle, rel_steering, rel_weapon, invert);
        // Activate extra weapon channels
        weapons_set(sticks[CHANNEL_INDEX_WEAPON2], sticks[CHANNEL_INDEX_WEAPON3]);
    1c42:	8b 85       	ldd	r24, Y+11	; 0x0b
    1c44:	9c 85       	ldd	r25, Y+12	; 0x0c
    1c46:	2f 81       	ldd	r18, Y+7	; 0x07
    1c48:	38 85       	ldd	r19, Y+8	; 0x08
        TCD_CNTPRES_DIV32_gc; // further prescale by 32
}

static uint16_t scale_pulse(uint16_t pulse)
{
    if (mixing_state.enable_servo_double) {
    1c4a:	60 91 2c 39 	lds	r22, 0x392C	; 0x80392c <mixing_state+0x7>
    1c4e:	66 23       	and	r22, r22
    1c50:	21 f0       	breq	.+8      	; 0x1c5a <main+0xaf6>
        // Effectively double the range of pulse widths
        pulse -= 1500;
        pulse *= 2;
    1c52:	22 0f       	add	r18, r18
    1c54:	33 1f       	adc	r19, r19
        pulse += 1500;
    1c56:	2c 5d       	subi	r18, 0xDC	; 220
    1c58:	35 40       	sbci	r19, 0x05	; 5
    
    // Scale pulse into TCD counts.
    // pulse should be 1000-2000 (us)
    // essentially divide by 6.4
    pulse = pulse * 10;
    pulse = pulse / 64;
    1c5a:	7a e0       	ldi	r23, 0x0A	; 10
    1c5c:	72 9f       	mul	r23, r18
    1c5e:	a0 01       	movw	r20, r0
    1c60:	73 9f       	mul	r23, r19
    1c62:	50 0d       	add	r21, r0
    1c64:	11 24       	eor	r1, r1
    1c66:	9a 01       	movw	r18, r20
    1c68:	56 e0       	ldi	r21, 0x06	; 6
    1c6a:	36 95       	lsr	r19
    1c6c:	27 95       	ror	r18
    1c6e:	5a 95       	dec	r21
    1c70:	e1 f7       	brne	.-8      	; 0x1c6a <main+0xb06>
        TCD_CNTPRES_DIV32_gc; // further prescale by 32
}

static uint16_t scale_pulse(uint16_t pulse)
{
    if (mixing_state.enable_servo_double) {
    1c72:	66 23       	and	r22, r22
    1c74:	21 f0       	breq	.+8      	; 0x1c7e <main+0xb1a>
        // Effectively double the range of pulse widths
        pulse -= 1500;
        pulse *= 2;
    1c76:	88 0f       	add	r24, r24
    1c78:	99 1f       	adc	r25, r25
        pulse += 1500;
    1c7a:	8c 5d       	subi	r24, 0xDC	; 220
    1c7c:	95 40       	sbci	r25, 0x05	; 5

void weapons_set(uint16_t pulse2, uint16_t pulse3)
{
    uint16_t p2 = scale_pulse(pulse2);
    uint16_t p3 = scale_pulse(pulse3);
    TCD0.CMPASET = max_count - p2;
    1c7e:	e5 e3       	ldi	r30, 0x35	; 53
    1c80:	fc e0       	ldi	r31, 0x0C	; 12
    1c82:	e2 1b       	sub	r30, r18
    1c84:	f3 0b       	sbc	r31, r19
    1c86:	e0 93 a8 0a 	sts	0x0AA8, r30	; 0x800aa8 <CSWTCH.12+0x7f5c11>
    1c8a:	f0 93 a9 0a 	sts	0x0AA9, r31	; 0x800aa9 <CSWTCH.12+0x7f5c12>
    TCD0.CMPBSET = max_count - p3;
    1c8e:	4a e0       	ldi	r20, 0x0A	; 10
    1c90:	48 9f       	mul	r20, r24
    1c92:	90 01       	movw	r18, r0
    1c94:	49 9f       	mul	r20, r25
    1c96:	30 0d       	add	r19, r0
    1c98:	11 24       	eor	r1, r1
    1c9a:	c9 01       	movw	r24, r18
    1c9c:	26 e0       	ldi	r18, 0x06	; 6
    1c9e:	96 95       	lsr	r25
    1ca0:	87 95       	ror	r24
    1ca2:	2a 95       	dec	r18
    1ca4:	e1 f7       	brne	.-8      	; 0x1c9e <main+0xb3a>
    1ca6:	05 e3       	ldi	r16, 0x35	; 53
    1ca8:	1c e0       	ldi	r17, 0x0C	; 12
    1caa:	08 1b       	sub	r16, r24
    1cac:	19 0b       	sbc	r17, r25
    1cae:	00 93 ac 0a 	sts	0x0AAC, r16	; 0x800aac <CSWTCH.12+0x7f5c15>
    1cb2:	10 93 ad 0a 	sts	0x0AAD, r17	; 0x800aad <CSWTCH.12+0x7f5c16>
    // Sync domain
    TCD0.CTRLE = TCD_SYNCEOC_bm;
    1cb6:	81 e0       	ldi	r24, 0x01	; 1
    1cb8:	80 93 84 0a 	sts	0x0A84, r24	; 0x800a84 <CSWTCH.12+0x7f5bed>
        sticks[CHANNEL_INDEX_WEAPON2] = temp;
    }
    // Returns this structure;
    sticks_result_t result;
    result.led_state = 1;
    result.rpm_value = 0;
    1cbc:	40 e0       	ldi	r20, 0x00	; 0
        sticks[CHANNEL_INDEX_WEAPON] = sticks[CHANNEL_INDEX_WEAPON2];
        sticks[CHANNEL_INDEX_WEAPON2] = temp;
    }
    // Returns this structure;
    sticks_result_t result;
    result.led_state = 1;
    1cbe:	21 e0       	ldi	r18, 0x01	; 1
        mixing_drive_motors(rel_throttle, rel_steering, rel_weapon, invert);
        // Activate extra weapon channels
        weapons_set(sticks[CHANNEL_INDEX_WEAPON2], sticks[CHANNEL_INDEX_WEAPON3]);
    }

    has_signal = true;
    1cc0:	81 e0       	ldi	r24, 0x01	; 1
    1cc2:	80 93 22 38 	sts	0x3822, r24	; 0x803822 <has_signal>
}

uint32_t get_tickcount()
{
    uint32_t tc;
    cli(); // disable irq
    1cc6:	f8 94       	cli
    tc = master_state.tickcount;
    1cc8:	c0 90 73 38 	lds	r12, 0x3873	; 0x803873 <master_state>
    1ccc:	d0 90 74 38 	lds	r13, 0x3874	; 0x803874 <master_state+0x1>
    1cd0:	e0 90 75 38 	lds	r14, 0x3875	; 0x803875 <master_state+0x2>
    1cd4:	f0 90 76 38 	lds	r15, 0x3876	; 0x803876 <master_state+0x3>
    sei(); // enable irq
    1cd8:	78 94       	sei
    last_signal_time = get_tickcount();
    1cda:	c0 92 1d 38 	sts	0x381D, r12	; 0x80381d <last_signal_time>
    1cde:	d0 92 1e 38 	sts	0x381E, r13	; 0x80381e <last_signal_time+0x1>
    1ce2:	e0 92 1f 38 	sts	0x381F, r14	; 0x80381f <last_signal_time+0x2>
    1ce6:	f0 92 20 38 	sts	0x3820, r15	; 0x803820 <last_signal_time+0x3>
        sticks[n] = *stick;
    }
    sticks_result_t sticks_result = sticks_receive_positions(sticks);
    // Turn on the LED so the driver can see it's connected.
    // Flicker the LED if we are in config mode, solid if driving mode.
    if (sticks_result.config_mode) {
    1cea:	1a a1       	ldd	r17, Y+34	; 0x22
    1cec:	11 23       	and	r17, r17
    1cee:	19 f0       	breq	.+6      	; 0x1cf6 <main+0xb92>
        // Flicker a mostly on duty cycle.
        radio_state.led_on = sticks_result.led_state;
    1cf0:	20 93 f7 38 	sts	0x38F7, r18	; 0x8038f7 <radio_state+0x77>
    1cf4:	02 c0       	rjmp	.+4      	; 0x1cfa <main+0xb96>
    } else {
        // Driving mode.
        radio_state.led_on = true;
    1cf6:	80 93 f7 38 	sts	0x38F7, r24	; 0x8038f7 <radio_state+0x77>
    }
    
    if (!radio_state.got_signal) {
    1cfa:	80 91 f8 38 	lds	r24, 0x38F8	; 0x8038f8 <radio_state+0x78>
    1cfe:	81 11       	cpse	r24, r1
    1d00:	06 c0       	rjmp	.+12     	; 0x1d0e <main+0xbaa>
        // Re-established signal
        radio_state.e_packet_count = 0;
    1d02:	10 92 22 39 	sts	0x3922, r1	; 0x803922 <radio_state+0xa2>
        radio_state.e_good_count   = 0;
    1d06:	10 92 23 39 	sts	0x3923, r1	; 0x803923 <radio_state+0xa3>
        radio_state.e_error_rate   = 0;
    1d0a:	10 92 24 39 	sts	0x3924, r1	; 0x803924 <radio_state+0xa4>
    }
    
    radio_state.got_signal = true;
    1d0e:	81 e0       	ldi	r24, 0x01	; 1
    1d10:	80 93 f8 38 	sts	0x38F8, r24	; 0x8038f8 <radio_state+0x78>
    // Send telemetry from time to time.
    if (radio_state.telemetry_countdown == 0) {
    1d14:	80 91 1f 39 	lds	r24, 0x391F	; 0x80391f <radio_state+0x9f>
    1d18:	81 11       	cpse	r24, r1
    1d1a:	8c c0       	rjmp	.+280    	; 0x1e34 <main+0xcd0>
#define AFHDS2A_SENSOR_RX_RSSI 0xfc

static void prepare_telemetry(bool is_config_mode, uint8_t rpm_value)
{
    uint8_t *p = radio_state.telemetry_packet;
    p[0] = PACKET_TYPE_TELEMETRY;
    1d1c:	8a ea       	ldi	r24, 0xAA	; 170
    1d1e:	80 93 f9 38 	sts	0x38F9, r24	; 0x8038f9 <radio_state+0x79>
    memcpy(p+1, radio_state.tx_id, 4);
    1d22:	80 91 80 38 	lds	r24, 0x3880	; 0x803880 <radio_state>
    1d26:	90 91 81 38 	lds	r25, 0x3881	; 0x803881 <radio_state+0x1>
    1d2a:	a0 91 82 38 	lds	r26, 0x3882	; 0x803882 <radio_state+0x2>
    1d2e:	b0 91 83 38 	lds	r27, 0x3883	; 0x803883 <radio_state+0x3>
    1d32:	80 93 fa 38 	sts	0x38FA, r24	; 0x8038fa <radio_state+0x7a>
    1d36:	90 93 fb 38 	sts	0x38FB, r25	; 0x8038fb <radio_state+0x7b>
    1d3a:	a0 93 fc 38 	sts	0x38FC, r26	; 0x8038fc <radio_state+0x7c>
    1d3e:	b0 93 fd 38 	sts	0x38FD, r27	; 0x8038fd <radio_state+0x7d>
    memcpy(p+5, radio_state.rx_id, 4);
    1d42:	80 91 84 38 	lds	r24, 0x3884	; 0x803884 <radio_state+0x4>
    1d46:	90 91 85 38 	lds	r25, 0x3885	; 0x803885 <radio_state+0x5>
    1d4a:	a0 91 86 38 	lds	r26, 0x3886	; 0x803886 <radio_state+0x6>
    1d4e:	b0 91 87 38 	lds	r27, 0x3887	; 0x803887 <radio_state+0x7>
    1d52:	80 93 fe 38 	sts	0x38FE, r24	; 0x8038fe <radio_state+0x7e>
    1d56:	90 93 ff 38 	sts	0x38FF, r25	; 0x8038ff <radio_state+0x7f>
    1d5a:	a0 93 00 39 	sts	0x3900, r26	; 0x803900 <radio_state+0x80>
    1d5e:	b0 93 01 39 	sts	0x3901, r27	; 0x803901 <radio_state+0x81>
    uint8_t n=9;
    bool sense_ok = true;

    // Temperature telemetry is removed.

    if (vsense_state.voltage_mv > 100) {
    1d62:	20 91 0f 38 	lds	r18, 0x380F	; 0x80380f <vsense_state+0x2>
    1d66:	30 91 10 38 	lds	r19, 0x3810	; 0x803810 <vsense_state+0x3>
    1d6a:	25 36       	cpi	r18, 0x65	; 101
    1d6c:	31 05       	cpc	r19, r1
    1d6e:	e8 f0       	brcs	.+58     	; 0x1daa <main+0xc46>
        // Only send voltage telemetry if it is sensible.
        p[n++] = 0x0; // telemetry type (0=volts)
    1d70:	10 92 02 39 	sts	0x3902, r1	; 0x803902 <radio_state+0x82>
        // Otherwise the fs i6 will be constantly beeping low battery if we run off 1S.
        // It appears that the voltage alarm is not configurable
        // for the internal sensor, and also cannot be disabled
        // (which is annoying!)
        uint8_t voltage_id = 0; // "Internal sensor"
        if (vsense_state.cells_count == 1) {
    1d74:	80 91 0d 38 	lds	r24, 0x380D	; 0x80380d <vsense_state>
    1d78:	90 91 0e 38 	lds	r25, 0x380E	; 0x80380e <vsense_state+0x1>
    1d7c:	01 97       	sbiw	r24, 0x01	; 1
    1d7e:	11 f4       	brne	.+4      	; 0x1d84 <main+0xc20>
            // 1 cell pack, use "external sensor"
            voltage_id = 2;
    1d80:	82 e0       	ldi	r24, 0x02	; 2
    1d82:	01 c0       	rjmp	.+2      	; 0x1d86 <main+0xc22>
        // 1-cell pack.
        // Otherwise the fs i6 will be constantly beeping low battery if we run off 1S.
        // It appears that the voltage alarm is not configurable
        // for the internal sensor, and also cannot be disabled
        // (which is annoying!)
        uint8_t voltage_id = 0; // "Internal sensor"
    1d84:	80 e0       	ldi	r24, 0x00	; 0
        if (vsense_state.cells_count == 1) {
            // 1 cell pack, use "external sensor"
            voltage_id = 2;
        }
        p[n++] = voltage_id; // telemetry id (0=internal 1 or more=external)
    1d86:	80 93 03 39 	sts	0x3903, r24	; 0x803903 <radio_state+0x83>
        uint16_t volts_100 = vsense_state.voltage_mv / 10;
    1d8a:	c9 01       	movw	r24, r18
    1d8c:	6a e0       	ldi	r22, 0x0A	; 10
    1d8e:	70 e0       	ldi	r23, 0x00	; 0
    1d90:	0e 94 a3 11 	call	0x2346	; 0x2346 <__udivmodhi4>
        p[n++] = (volts_100 & 0xff); // low
    1d94:	60 93 04 39 	sts	0x3904, r22	; 0x803904 <radio_state+0x84>
        p[n++] = (volts_100 >> 8);// high
    1d98:	70 93 05 39 	sts	0x3905, r23	; 0x803905 <radio_state+0x85>
        if (vsense_state.voltage_mv < 1000) {
    1d9c:	81 e0       	ldi	r24, 0x01	; 1
    1d9e:	28 3e       	cpi	r18, 0xE8	; 232
    1da0:	33 40       	sbci	r19, 0x03	; 3
    1da2:	08 f4       	brcc	.+2      	; 0x1da6 <main+0xc42>
    1da4:	80 e0       	ldi	r24, 0x00	; 0
            voltage_id = 2;
        }
        p[n++] = voltage_id; // telemetry id (0=internal 1 or more=external)
        uint16_t volts_100 = vsense_state.voltage_mv / 10;
        p[n++] = (volts_100 & 0xff); // low
        p[n++] = (volts_100 >> 8);// high
    1da6:	ed e0       	ldi	r30, 0x0D	; 13
    1da8:	02 c0       	rjmp	.+4      	; 0x1dae <main+0xc4a>
    uint8_t *p = radio_state.telemetry_packet;
    p[0] = PACKET_TYPE_TELEMETRY;
    memcpy(p+1, radio_state.tx_id, 4);
    memcpy(p+5, radio_state.rx_id, 4);
    uint8_t n=9;
    bool sense_ok = true;
    1daa:	81 e0       	ldi	r24, 0x01	; 1
{
    uint8_t *p = radio_state.telemetry_packet;
    p[0] = PACKET_TYPE_TELEMETRY;
    memcpy(p+1, radio_state.tx_id, 4);
    memcpy(p+5, radio_state.rx_id, 4);
    uint8_t n=9;
    1dac:	e9 e0       	ldi	r30, 0x09	; 9
            // causes the tx to make all sorts of beeps and flash leds.
            sense_ok = false;
        }
    }
    // Sensors to keep opentx happy.
    p[n++] = AFHDS2A_SENSOR_RX_ERR_RATE;
    1dae:	ae 2f       	mov	r26, r30
    1db0:	b0 e0       	ldi	r27, 0x00	; 0
    1db2:	a7 50       	subi	r26, 0x07	; 7
    1db4:	b7 4c       	sbci	r27, 0xC7	; 199
    1db6:	9e ef       	ldi	r25, 0xFE	; 254
    1db8:	9c 93       	st	X, r25
    p[n++] = 0; // Instance ID
    1dba:	a1 e0       	ldi	r26, 0x01	; 1
    1dbc:	ae 0f       	add	r26, r30
    1dbe:	b0 e0       	ldi	r27, 0x00	; 0
    1dc0:	a7 50       	subi	r26, 0x07	; 7
    1dc2:	b7 4c       	sbci	r27, 0xC7	; 199
    1dc4:	1c 92       	st	X, r1
    p[n++] = radio_state.e_error_rate; p[n++] = 0;
    1dc6:	90 91 24 39 	lds	r25, 0x3924	; 0x803924 <radio_state+0xa4>
    1dca:	a2 e0       	ldi	r26, 0x02	; 2
    1dcc:	ae 0f       	add	r26, r30
    1dce:	b0 e0       	ldi	r27, 0x00	; 0
    1dd0:	a7 50       	subi	r26, 0x07	; 7
    1dd2:	b7 4c       	sbci	r27, 0xC7	; 199
    1dd4:	9c 93       	st	X, r25
    1dd6:	94 e0       	ldi	r25, 0x04	; 4
    1dd8:	9e 0f       	add	r25, r30
    1dda:	a3 e0       	ldi	r26, 0x03	; 3
    1ddc:	ae 0f       	add	r26, r30
    1dde:	b0 e0       	ldi	r27, 0x00	; 0
    1de0:	a7 50       	subi	r26, 0x07	; 7
    1de2:	b7 4c       	sbci	r27, 0xC7	; 199
    1de4:	1c 92       	st	X, r1
  
    // Special sensor for "rpm" we use to send data back to the tx.
    if (is_config_mode) // Only send in config mode.
    1de6:	0a a1       	ldd	r16, Y+34	; 0x22
    1de8:	00 23       	and	r16, r16
    1dea:	d1 f0       	breq	.+52     	; 0x1e20 <main+0xcbc>
    {
        p[n++] = 0x2; // "RPM"
    1dec:	a9 2f       	mov	r26, r25
    1dee:	b0 e0       	ldi	r27, 0x00	; 0
    1df0:	a7 50       	subi	r26, 0x07	; 7
    1df2:	b7 4c       	sbci	r27, 0xC7	; 199
    1df4:	92 e0       	ldi	r25, 0x02	; 2
    1df6:	9c 93       	st	X, r25
        p[n++] = 1; // channel number, instance number?
    1df8:	a5 e0       	ldi	r26, 0x05	; 5
    1dfa:	ae 0f       	add	r26, r30
    1dfc:	b0 e0       	ldi	r27, 0x00	; 0
    1dfe:	a7 50       	subi	r26, 0x07	; 7
    1e00:	b7 4c       	sbci	r27, 0xC7	; 199
    1e02:	91 e0       	ldi	r25, 0x01	; 1
    1e04:	9c 93       	st	X, r25
        p[n++] = rpm_value;
    1e06:	a6 e0       	ldi	r26, 0x06	; 6
    1e08:	ae 0f       	add	r26, r30
    1e0a:	b0 e0       	ldi	r27, 0x00	; 0
    1e0c:	a7 50       	subi	r26, 0x07	; 7
    1e0e:	b7 4c       	sbci	r27, 0xC7	; 199
    1e10:	4c 93       	st	X, r20
        p[n++] = 0;
    1e12:	98 e0       	ldi	r25, 0x08	; 8
    1e14:	9e 0f       	add	r25, r30
    1e16:	e9 5f       	subi	r30, 0xF9	; 249
    1e18:	f0 e0       	ldi	r31, 0x00	; 0
    1e1a:	e7 50       	subi	r30, 0x07	; 7
    1e1c:	f7 4c       	sbci	r31, 0xC7	; 199
    1e1e:	10 82       	st	Z, r1
    }
    
    p[n++] = 0xff; // end
    1e20:	e9 2f       	mov	r30, r25
    1e22:	f0 e0       	ldi	r31, 0x00	; 0
    1e24:	e7 50       	subi	r30, 0x07	; 7
    1e26:	f7 4c       	sbci	r31, 0xC7	; 199
    1e28:	9f ef       	ldi	r25, 0xFF	; 255
    1e2a:	90 83       	st	Z, r25
    radio_state.telemetry_packet_is_valid = sense_ok;
    1e2c:	80 93 1e 39 	sts	0x391E, r24	; 0x80391e <radio_state+0x9e>
    
    radio_state.got_signal = true;
    // Send telemetry from time to time.
    if (radio_state.telemetry_countdown == 0) {
        prepare_telemetry(sticks_result.config_mode, sticks_result.rpm_value);
        radio_state.telemetry_countdown = TELEMETRY_INTERVAL_PACKETS;
    1e30:	87 e1       	ldi	r24, 0x17	; 23
    1e32:	01 c0       	rjmp	.+2      	; 0x1e36 <main+0xcd2>
    } else {
        radio_state.telemetry_countdown --;
    1e34:	81 50       	subi	r24, 0x01	; 1
    1e36:	80 93 1f 39 	sts	0x391F, r24	; 0x80391f <radio_state+0x9f>
    if (radio_state.packet_is_valid) {
        if (radio_state.state == RADIO_STATE_BIND) {
            handle_packet_bind(now);
        } else {
            handle_packet_sticks();
            radio_state.last_sticks_packet = now;
    1e3a:	80 92 ee 38 	sts	0x38EE, r8	; 0x8038ee <radio_state+0x6e>
    1e3e:	90 92 ef 38 	sts	0x38EF, r9	; 0x8038ef <radio_state+0x6f>
    1e42:	a0 92 f0 38 	sts	0x38F0, r10	; 0x8038f0 <radio_state+0x70>
    1e46:	b0 92 f1 38 	sts	0x38F1, r11	; 0x8038f1 <radio_state+0x71>
        }
        radio_state.got_signal_ever = true;
    1e4a:	81 e0       	ldi	r24, 0x01	; 1
    1e4c:	80 93 f6 38 	sts	0x38F6, r24	; 0x8038f6 <radio_state+0x76>
        radio_state.packet_is_valid = false;
    1e50:	10 92 ed 38 	sts	0x38ED, r1	; 0x8038ed <radio_state+0x6d>
    1e54:	a5 c0       	rjmp	.+330    	; 0x1fa0 <main+0xe3c>
    } else {
        if (radio_state.state == RADIO_STATE_BIND) {
    1e56:	81 11       	cpse	r24, r1
    1e58:	16 c0       	rjmp	.+44     	; 0x1e86 <main+0xd22>
            if ((radio_state.bind_complete_time != 0) && (radio_state.bind_complete_time < now)) {
    1e5a:	80 91 c4 38 	lds	r24, 0x38C4	; 0x8038c4 <radio_state+0x44>
    1e5e:	90 91 c5 38 	lds	r25, 0x38C5	; 0x8038c5 <radio_state+0x45>
    1e62:	a0 91 c6 38 	lds	r26, 0x38C6	; 0x8038c6 <radio_state+0x46>
    1e66:	b0 91 c7 38 	lds	r27, 0x38C7	; 0x8038c7 <radio_state+0x47>
    1e6a:	00 97       	sbiw	r24, 0x00	; 0
    1e6c:	a1 05       	cpc	r26, r1
    1e6e:	b1 05       	cpc	r27, r1
    1e70:	09 f4       	brne	.+2      	; 0x1e74 <main+0xd10>
    1e72:	96 c0       	rjmp	.+300    	; 0x1fa0 <main+0xe3c>
    1e74:	88 15       	cp	r24, r8
    1e76:	99 05       	cpc	r25, r9
    1e78:	aa 05       	cpc	r26, r10
    1e7a:	bb 05       	cpc	r27, r11
    1e7c:	08 f0       	brcs	.+2      	; 0x1e80 <main+0xd1c>
    1e7e:	90 c0       	rjmp	.+288    	; 0x1fa0 <main+0xe3c>
                handle_bind_complete();
    1e80:	0e 94 31 02 	call	0x462	; 0x462 <handle_bind_complete>
    1e84:	8d c0       	rjmp	.+282    	; 0x1fa0 <main+0xe3c>
        } 
        else 
        {
            // radio_state.state != RADIO_STATE_BIND
            uint32_t age = now - radio_state.last_sticks_packet;
            if (age > 25) { // centiseconds
    1e86:	80 91 ee 38 	lds	r24, 0x38EE	; 0x8038ee <radio_state+0x6e>
    1e8a:	90 91 ef 38 	lds	r25, 0x38EF	; 0x8038ef <radio_state+0x6f>
    1e8e:	a0 91 f0 38 	lds	r26, 0x38F0	; 0x8038f0 <radio_state+0x70>
    1e92:	b0 91 f1 38 	lds	r27, 0x38F1	; 0x8038f1 <radio_state+0x71>
    1e96:	a5 01       	movw	r20, r10
    1e98:	94 01       	movw	r18, r8
    1e9a:	28 1b       	sub	r18, r24
    1e9c:	39 0b       	sbc	r19, r25
    1e9e:	4a 0b       	sbc	r20, r26
    1ea0:	5b 0b       	sbc	r21, r27
    1ea2:	2a 31       	cpi	r18, 0x1A	; 26
    1ea4:	31 05       	cpc	r19, r1
    1ea6:	41 05       	cpc	r20, r1
    1ea8:	51 05       	cpc	r21, r1
    1eaa:	08 f4       	brcc	.+2      	; 0x1eae <main+0xd4a>
    1eac:	79 c0       	rjmp	.+242    	; 0x1fa0 <main+0xe3c>

}

void motors_all_off()
{
    set_motor_direction_duty(MOTOR_WEAPON,0);
    1eae:	60 e0       	ldi	r22, 0x00	; 0
    1eb0:	70 e0       	ldi	r23, 0x00	; 0
    1eb2:	80 e0       	ldi	r24, 0x00	; 0
    1eb4:	0e 94 5c 00 	call	0xb8	; 0xb8 <set_motor_direction_duty>
    set_motor_direction_duty(MOTOR_LEFT,0);
    1eb8:	60 e0       	ldi	r22, 0x00	; 0
    1eba:	70 e0       	ldi	r23, 0x00	; 0
    1ebc:	81 e0       	ldi	r24, 0x01	; 1
    1ebe:	0e 94 5c 00 	call	0xb8	; 0xb8 <set_motor_direction_duty>
    set_motor_direction_duty(MOTOR_RIGHT,0);
    1ec2:	60 e0       	ldi	r22, 0x00	; 0
    1ec4:	70 e0       	ldi	r23, 0x00	; 0
    1ec6:	82 e0       	ldi	r24, 0x02	; 2
    1ec8:	0e 94 5c 00 	call	0xb8	; 0xb8 <set_motor_direction_duty>
    
}

void weapons_all_off()
{
    TCD0.CMPASET = max_count;
    1ecc:	45 e3       	ldi	r20, 0x35	; 53
    1ece:	5c e0       	ldi	r21, 0x0C	; 12
    1ed0:	40 93 a8 0a 	sts	0x0AA8, r20	; 0x800aa8 <CSWTCH.12+0x7f5c11>
    1ed4:	50 93 a9 0a 	sts	0x0AA9, r21	; 0x800aa9 <CSWTCH.12+0x7f5c12>
    TCD0.CMPBSET = max_count;    
    1ed8:	40 93 ac 0a 	sts	0x0AAC, r20	; 0x800aac <CSWTCH.12+0x7f5c15>
    1edc:	50 93 ad 0a 	sts	0x0AAD, r21	; 0x800aad <CSWTCH.12+0x7f5c16>
    // Sync domain
    TCD0.CTRLE = TCD_SYNCEOC_bm;
    1ee0:	81 e0       	ldi	r24, 0x01	; 1
    1ee2:	80 93 84 0a 	sts	0x0A84, r24	; 0x800a84 <CSWTCH.12+0x7f5bed>
// something.
void sticks_no_signal()
{
    motors_all_off();
    weapons_all_off();
    has_signal = false;
    1ee6:	10 92 22 38 	sts	0x3822, r1	; 0x803822 <has_signal>
                // No signal.
                sticks_no_signal();
                radio_state.led_on = false;
    1eea:	10 92 f7 38 	sts	0x38F7, r1	; 0x8038f7 <radio_state+0x77>
                radio_state.got_signal = false;
    1eee:	10 92 f8 38 	sts	0x38F8, r1	; 0x8038f8 <radio_state+0x78>
                // Auto-rebind:
                // if we have got no signal since power on, then
                // automatically enter bind mode after some time.
                if ((! radio_state.got_signal_ever) && (now > AUTO_BIND_TIME)) {
    1ef2:	80 91 f6 38 	lds	r24, 0x38F6	; 0x8038f6 <radio_state+0x76>
    1ef6:	81 11       	cpse	r24, r1
    1ef8:	11 c0       	rjmp	.+34     	; 0x1f1c <main+0xdb8>
    1efa:	51 e7       	ldi	r21, 0x71	; 113
    1efc:	85 16       	cp	r8, r21
    1efe:	57 e1       	ldi	r21, 0x17	; 23
    1f00:	95 06       	cpc	r9, r21
    1f02:	a1 04       	cpc	r10, r1
    1f04:	b1 04       	cpc	r11, r1
    1f06:	50 f0       	brcs	.+20     	; 0x1f1c <main+0xdb8>
                    diag_println("Auto-bind mode");
    1f08:	8a e4       	ldi	r24, 0x4A	; 74
    1f0a:	93 eb       	ldi	r25, 0xB3	; 179
    1f0c:	9f 93       	push	r25
    1f0e:	8f 93       	push	r24
    1f10:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
                    init_bind_mode();
    1f14:	0e 94 05 02 	call	0x40a	; 0x40a <init_bind_mode>
    1f18:	0f 90       	pop	r0
    1f1a:	0f 90       	pop	r0
                }
                if (radio_state.got_signal_ever) {
    1f1c:	80 91 f6 38 	lds	r24, 0x38F6	; 0x8038f6 <radio_state+0x76>
    1f20:	88 23       	and	r24, r24
    1f22:	09 f4       	brne	.+2      	; 0x1f26 <main+0xdc2>
    1f24:	3d c0       	rjmp	.+122    	; 0x1fa0 <main+0xe3c>
                    // If we lost signal, periodically reinitialise the radio.
                    if (radio_state.last_reinit_time == 0) {
    1f26:	80 91 f2 38 	lds	r24, 0x38F2	; 0x8038f2 <radio_state+0x72>
    1f2a:	90 91 f3 38 	lds	r25, 0x38F3	; 0x8038f3 <radio_state+0x73>
    1f2e:	a0 91 f4 38 	lds	r26, 0x38F4	; 0x8038f4 <radio_state+0x74>
    1f32:	b0 91 f5 38 	lds	r27, 0x38F5	; 0x8038f5 <radio_state+0x75>
    1f36:	89 2b       	or	r24, r25
    1f38:	8a 2b       	or	r24, r26
    1f3a:	8b 2b       	or	r24, r27
    1f3c:	81 f4       	brne	.+32     	; 0x1f5e <main+0xdfa>
                        radio_state.last_reinit_time = radio_state.last_sticks_packet;
    1f3e:	80 91 ee 38 	lds	r24, 0x38EE	; 0x8038ee <radio_state+0x6e>
    1f42:	90 91 ef 38 	lds	r25, 0x38EF	; 0x8038ef <radio_state+0x6f>
    1f46:	a0 91 f0 38 	lds	r26, 0x38F0	; 0x8038f0 <radio_state+0x70>
    1f4a:	b0 91 f1 38 	lds	r27, 0x38F1	; 0x8038f1 <radio_state+0x71>
    1f4e:	80 93 f2 38 	sts	0x38F2, r24	; 0x8038f2 <radio_state+0x72>
    1f52:	90 93 f3 38 	sts	0x38F3, r25	; 0x8038f3 <radio_state+0x73>
    1f56:	a0 93 f4 38 	sts	0x38F4, r26	; 0x8038f4 <radio_state+0x74>
    1f5a:	b0 93 f5 38 	sts	0x38F5, r27	; 0x8038f5 <radio_state+0x75>
                    }
                    uint32_t reinit_age = now - radio_state.last_reinit_time;
                    if (reinit_age > REINIT_TIME) {
    1f5e:	80 91 f2 38 	lds	r24, 0x38F2	; 0x8038f2 <radio_state+0x72>
    1f62:	90 91 f3 38 	lds	r25, 0x38F3	; 0x8038f3 <radio_state+0x73>
    1f66:	a0 91 f4 38 	lds	r26, 0x38F4	; 0x8038f4 <radio_state+0x74>
    1f6a:	b0 91 f5 38 	lds	r27, 0x38F5	; 0x8038f5 <radio_state+0x75>
    1f6e:	95 01       	movw	r18, r10
    1f70:	84 01       	movw	r16, r8
    1f72:	08 1b       	sub	r16, r24
    1f74:	19 0b       	sbc	r17, r25
    1f76:	2a 0b       	sbc	r18, r26
    1f78:	3b 0b       	sbc	r19, r27
    1f7a:	05 36       	cpi	r16, 0x65	; 101
    1f7c:	11 05       	cpc	r17, r1
    1f7e:	21 05       	cpc	r18, r1
    1f80:	31 05       	cpc	r19, r1
    1f82:	70 f0       	brcs	.+28     	; 0x1fa0 <main+0xe3c>
    // Interrupts will be enabled at this point, and might arrive,
    // so we should disable them during the reinitialisation.
    // Note also that disabling interrupts breaks the wait_auto_clear function,
    // But that's ok, because the watchdog will reset if the reinit
    // takes too long.
    cli(); 
    1f84:	f8 94       	cli
    
    // If this fails because the radio is broken, it will call
    // epic_fail which will either reset or the watchdog will reset.
    init_a7105_hardware();
    1f86:	0e 94 67 02 	call	0x4ce	; 0x4ce <init_a7105_hardware>
    init_interrupts();
    1f8a:	0e 94 dc 03 	call	0x7b8	; 0x7b8 <init_interrupts>
     * This will also reinitialise the timer, so a timeout
     * interrupt will arrive very soon and cause the receiver to
     * start on an appropriate channel- we don't need to
     * explicitly start the receiver. 
     */
    sei();
    1f8e:	78 94       	sei
                        radio_state.last_reinit_time = radio_state.last_sticks_packet;
                    }
                    uint32_t reinit_age = now - radio_state.last_reinit_time;
                    if (reinit_age > REINIT_TIME) {
                        radio_reinit();
                        radio_state.last_reinit_time = now;
    1f90:	80 92 f2 38 	sts	0x38F2, r8	; 0x8038f2 <radio_state+0x72>
    1f94:	90 92 f3 38 	sts	0x38F3, r9	; 0x8038f3 <radio_state+0x73>
    1f98:	a0 92 f4 38 	sts	0x38F4, r10	; 0x8038f4 <radio_state+0x74>
    1f9c:	b0 92 f5 38 	sts	0x38F5, r11	; 0x8038f5 <radio_state+0x75>

static void radio_show_diagnostics(uint32_t now)
{
    // Do this every time the hop index resets, e.g.
    // once every 32 packets or missed packets.
    uint8_t temp_hop_index = radio_state.hop_index;
    1fa0:	10 91 bd 38 	lds	r17, 0x38BD	; 0x8038bd <radio_state+0x3d>
    if (temp_hop_index < radio_state.old_hop_index) {
    1fa4:	80 91 be 38 	lds	r24, 0x38BE	; 0x8038be <radio_state+0x3e>
    1fa8:	18 17       	cp	r17, r24
    1faa:	a0 f5       	brcc	.+104    	; 0x2014 <main+0xeb0>
        radio_counters.last_report_time = now;
    1fac:	80 92 7c 38 	sts	0x387C, r8	; 0x80387c <radio_counters+0x4>
    1fb0:	90 92 7d 38 	sts	0x387D, r9	; 0x80387d <radio_counters+0x5>
    1fb4:	a0 92 7e 38 	sts	0x387E, r10	; 0x80387e <radio_counters+0x6>
    1fb8:	b0 92 7f 38 	sts	0x387F, r11	; 0x80387f <radio_counters+0x7>
        cli();
    1fbc:	f8 94       	cli
        uint16_t rx = radio_counters.rx;
    1fbe:	80 91 78 38 	lds	r24, 0x3878	; 0x803878 <radio_counters>
    1fc2:	90 91 79 38 	lds	r25, 0x3879	; 0x803879 <radio_counters+0x1>
        uint16_t missed = radio_counters.missed;
    1fc6:	20 91 7a 38 	lds	r18, 0x387A	; 0x80387a <radio_counters+0x2>
    1fca:	30 91 7b 38 	lds	r19, 0x387B	; 0x80387b <radio_counters+0x3>
        radio_counters.rx = 0;
    1fce:	10 92 78 38 	sts	0x3878, r1	; 0x803878 <radio_counters>
    1fd2:	10 92 79 38 	sts	0x3879, r1	; 0x803879 <radio_counters+0x1>
        radio_counters.missed = 0;
    1fd6:	10 92 7a 38 	sts	0x387A, r1	; 0x80387a <radio_counters+0x2>
    1fda:	10 92 7b 38 	sts	0x387B, r1	; 0x80387b <radio_counters+0x3>
        sei();
    1fde:	78 94       	sei
        diag_println("rx: %05u missed: %05u", rx, missed);
    1fe0:	3f 93       	push	r19
    1fe2:	2f 93       	push	r18
    1fe4:	9f 93       	push	r25
    1fe6:	8f 93       	push	r24
    1fe8:	89 e5       	ldi	r24, 0x59	; 89
    1fea:	93 eb       	ldi	r25, 0xB3	; 179
    1fec:	9f 93       	push	r25
    1fee:	8f 93       	push	r24
    1ff0:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
        if (radio_state.state == RADIO_STATE_BIND) {
    1ff4:	0f 90       	pop	r0
    1ff6:	0f 90       	pop	r0
    1ff8:	0f 90       	pop	r0
    1ffa:	0f 90       	pop	r0
    1ffc:	0f 90       	pop	r0
    1ffe:	0f 90       	pop	r0
    2000:	80 91 bc 38 	lds	r24, 0x38BC	; 0x8038bc <radio_state+0x3c>
    2004:	81 11       	cpse	r24, r1
    2006:	06 c0       	rjmp	.+12     	; 0x2014 <main+0xeb0>
            // Blink led in bind mode.
            radio_state.led_on = ! radio_state.led_on;
    2008:	90 91 f7 38 	lds	r25, 0x38F7	; 0x8038f7 <radio_state+0x77>
    200c:	81 e0       	ldi	r24, 0x01	; 1
    200e:	89 27       	eor	r24, r25
    2010:	80 93 f7 38 	sts	0x38F7, r24	; 0x8038f7 <radio_state+0x77>
        }
    }
    radio_state.old_hop_index = temp_hop_index;
    2014:	10 93 be 38 	sts	0x38BE, r17	; 0x8038be <radio_state+0x3e>
}

uint32_t get_tickcount()
{
    uint32_t tc;
    cli(); // disable irq
    2018:	f8 94       	cli
    tc = master_state.tickcount;
    201a:	80 90 73 38 	lds	r8, 0x3873	; 0x803873 <master_state>
    201e:	90 90 74 38 	lds	r9, 0x3874	; 0x803874 <master_state+0x1>
    2022:	a0 90 75 38 	lds	r10, 0x3875	; 0x803875 <master_state+0x2>
    2026:	b0 90 76 38 	lds	r11, 0x3876	; 0x803876 <master_state+0x3>
    sei(); // enable irq
    202a:	78 94       	sei
{
    // called every loop.
    // Only do stuff every vsense_period
    uint32_t now = get_tickcount();
    uint32_t age = (now - last_vsense_tickcount);
    if (age >= vsense_period) 
    202c:	80 91 12 38 	lds	r24, 0x3812	; 0x803812 <last_vsense_tickcount>
    2030:	90 91 13 38 	lds	r25, 0x3813	; 0x803813 <last_vsense_tickcount+0x1>
    2034:	a0 91 14 38 	lds	r26, 0x3814	; 0x803814 <last_vsense_tickcount+0x2>
    2038:	b0 91 15 38 	lds	r27, 0x3815	; 0x803815 <last_vsense_tickcount+0x3>
    203c:	a5 01       	movw	r20, r10
    203e:	94 01       	movw	r18, r8
    2040:	28 1b       	sub	r18, r24
    2042:	39 0b       	sbc	r19, r25
    2044:	4a 0b       	sbc	r20, r26
    2046:	5b 0b       	sbc	r21, r27
    2048:	24 36       	cpi	r18, 0x64	; 100
    204a:	31 05       	cpc	r19, r1
    204c:	41 05       	cpc	r20, r1
    204e:	51 05       	cpc	r21, r1
    2050:	08 f4       	brcc	.+2      	; 0x2054 <main+0xef0>
    2052:	f2 c0       	rjmp	.+484    	; 0x2238 <main+0x10d4>
    {
        // Check if ready.
        if (ADC_VSENSE.INTFLAGS & ADC_RESRDY_bm)
    2054:	80 91 0b 06 	lds	r24, 0x060B	; 0x80060b <CSWTCH.12+0x7f5774>
    2058:	80 ff       	sbrs	r24, 0
    205a:	e6 c0       	rjmp	.+460    	; 0x2228 <main+0x10c4>
        {
            uint16_t val = ADC_VSENSE.RES; // 0..1023
    205c:	20 91 10 06 	lds	r18, 0x0610	; 0x800610 <CSWTCH.12+0x7f5779>
    2060:	30 91 11 06 	lds	r19, 0x0611	; 0x800611 <CSWTCH.12+0x7f577a>
            // Scale to give voltage in millivolts
            uint32_t vsense_mv = (((uint32_t) val) * 2500) / 1023;
            // This is the voltage of the pin, we need to scale it up because we have
            // A potential divider in circuit with 10k and 33k resistors to gnd and +v
            vsense_mv = (vsense_mv * (VSENSE_BOTTOMRESISTOR+VSENSE_TOPRESISTOR)) / VSENSE_BOTTOMRESISTOR;
    2064:	a4 ec       	ldi	r26, 0xC4	; 196
    2066:	b9 e0       	ldi	r27, 0x09	; 9
    2068:	0e 94 f3 11 	call	0x23e6	; 0x23e6 <__umulhisi3>
    206c:	2f ef       	ldi	r18, 0xFF	; 255
    206e:	33 e0       	ldi	r19, 0x03	; 3
    2070:	40 e0       	ldi	r20, 0x00	; 0
    2072:	50 e0       	ldi	r21, 0x00	; 0
    2074:	0e 94 cb 11 	call	0x2396	; 0x2396 <__udivmodsi4>
    2078:	ae e6       	ldi	r26, 0x6E	; 110
    207a:	b0 e0       	ldi	r27, 0x00	; 0
    207c:	0e 94 02 12 	call	0x2404	; 0x2404 <__muluhisi3>
    2080:	2a e0       	ldi	r18, 0x0A	; 10
    2082:	30 e0       	ldi	r19, 0x00	; 0
    2084:	40 e0       	ldi	r20, 0x00	; 0
    2086:	50 e0       	ldi	r21, 0x00	; 0
    2088:	0e 94 cb 11 	call	0x2396	; 0x2396 <__udivmodsi4>
    208c:	69 01       	movw	r12, r18
    208e:	7a 01       	movw	r14, r20
            // Print some debug info
            // Calculate the number of cells
            // Do this only during startup.
            if (now < 700) {
    2090:	3c eb       	ldi	r19, 0xBC	; 188
    2092:	83 16       	cp	r8, r19
    2094:	32 e0       	ldi	r19, 0x02	; 2
    2096:	93 06       	cpc	r9, r19
    2098:	a1 04       	cpc	r10, r1
    209a:	b1 04       	cpc	r11, r1
    209c:	08 f0       	brcs	.+2      	; 0x20a0 <main+0xf3c>
    209e:	62 c0       	rjmp	.+196    	; 0x2164 <main+0x1000>
                diag_println("vbat=%04ld mv", vsense_mv);
    20a0:	ff 92       	push	r15
    20a2:	ef 92       	push	r14
    20a4:	df 92       	push	r13
    20a6:	cf 92       	push	r12
    20a8:	8f e6       	ldi	r24, 0x6F	; 111
    20aa:	93 eb       	ldi	r25, 0xB3	; 179
    20ac:	9f 93       	push	r25
    20ae:	8f 93       	push	r24
    20b0:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
                if ((vsense_mv > 6000) && (vsense_mv < 8500)) {
    20b4:	0f 90       	pop	r0
    20b6:	0f 90       	pop	r0
    20b8:	0f 90       	pop	r0
    20ba:	0f 90       	pop	r0
    20bc:	0f 90       	pop	r0
    20be:	0f 90       	pop	r0
    20c0:	d7 01       	movw	r26, r14
    20c2:	c6 01       	movw	r24, r12
    20c4:	81 57       	subi	r24, 0x71	; 113
    20c6:	97 41       	sbci	r25, 0x17	; 23
    20c8:	a1 09       	sbc	r26, r1
    20ca:	b1 09       	sbc	r27, r1
    20cc:	83 3c       	cpi	r24, 0xC3	; 195
    20ce:	99 40       	sbci	r25, 0x09	; 9
    20d0:	a1 05       	cpc	r26, r1
    20d2:	b1 05       	cpc	r27, r1
    20d4:	18 f4       	brcc	.+6      	; 0x20dc <main+0xf78>
                    // 2s pack
                    vsense_state.cells_count = 2;
    20d6:	82 e0       	ldi	r24, 0x02	; 2
    20d8:	90 e0       	ldi	r25, 0x00	; 0
    20da:	0d c0       	rjmp	.+26     	; 0x20f6 <main+0xf92>
                } else if ((vsense_mv > 3000) && (vsense_mv < 4250)) {
    20dc:	d7 01       	movw	r26, r14
    20de:	c6 01       	movw	r24, r12
    20e0:	89 5b       	subi	r24, 0xB9	; 185
    20e2:	9b 40       	sbci	r25, 0x0B	; 11
    20e4:	a1 09       	sbc	r26, r1
    20e6:	b1 09       	sbc	r27, r1
    20e8:	81 3e       	cpi	r24, 0xE1	; 225
    20ea:	94 40       	sbci	r25, 0x04	; 4
    20ec:	a1 05       	cpc	r26, r1
    20ee:	b1 05       	cpc	r27, r1
    20f0:	38 f4       	brcc	.+14     	; 0x2100 <main+0xf9c>
                    // 1s lipo
                    vsense_state.cells_count = 1;
    20f2:	81 e0       	ldi	r24, 0x01	; 1
    20f4:	90 e0       	ldi	r25, 0x00	; 0
    20f6:	80 93 0d 38 	sts	0x380D, r24	; 0x80380d <vsense_state>
    20fa:	90 93 0e 38 	sts	0x380E, r25	; 0x80380e <vsense_state+0x1>
    20fe:	16 c0       	rjmp	.+44     	; 0x212c <main+0xfc8>
#ifdef PRODUCT_IS_PLUS
				} else if ((vsense_mv > 9000) && (vsense_mv < 18000)) {
    2100:	d7 01       	movw	r26, r14
    2102:	c6 01       	movw	r24, r12
    2104:	89 52       	subi	r24, 0x29	; 41
    2106:	93 42       	sbci	r25, 0x23	; 35
    2108:	a1 09       	sbc	r26, r1
    210a:	b1 09       	sbc	r27, r1
    210c:	87 32       	cpi	r24, 0x27	; 39
    210e:	93 42       	sbci	r25, 0x23	; 35
    2110:	a1 05       	cpc	r26, r1
    2112:	b1 05       	cpc	r27, r1
    2114:	38 f4       	brcc	.+14     	; 0x2124 <main+0xfc0>
                    // 3s or 4s lipo
                    vsense_state.cells_count = 3;
    2116:	03 e0       	ldi	r16, 0x03	; 3
    2118:	10 e0       	ldi	r17, 0x00	; 0
    211a:	00 93 0d 38 	sts	0x380D, r16	; 0x80380d <vsense_state>
    211e:	10 93 0e 38 	sts	0x380E, r17	; 0x80380e <vsense_state+0x1>
    2122:	04 c0       	rjmp	.+8      	; 0x212c <main+0xfc8>
#endif
                } else {
                    // This means we have neither 1s nor 2s pack.
                    vsense_state.cells_count = 0;
    2124:	10 92 0d 38 	sts	0x380D, r1	; 0x80380d <vsense_state>
    2128:	10 92 0e 38 	sts	0x380E, r1	; 0x80380e <vsense_state+0x1>
                }
                if (vsense_state.cells_count > 0) {
    212c:	80 91 0d 38 	lds	r24, 0x380D	; 0x80380d <vsense_state>
    2130:	90 91 0e 38 	lds	r25, 0x380E	; 0x80380e <vsense_state+0x1>
    2134:	18 16       	cp	r1, r24
    2136:	19 06       	cpc	r1, r25
    2138:	6c f4       	brge	.+26     	; 0x2154 <main+0xff0>
                    diag_println("Detected %d battery cells", vsense_state.cells_count); 
    213a:	9f 93       	push	r25
    213c:	8f 93       	push	r24
    213e:	8d e7       	ldi	r24, 0x7D	; 125
    2140:	93 eb       	ldi	r25, 0xB3	; 179
    2142:	9f 93       	push	r25
    2144:	8f 93       	push	r24
    2146:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
    214a:	0f 90       	pop	r0
    214c:	0f 90       	pop	r0
    214e:	0f 90       	pop	r0
    2150:	0f 90       	pop	r0
    2152:	08 c0       	rjmp	.+16     	; 0x2164 <main+0x1000>
                } else {
                    diag_println("Battery voltage out of range, bench test?");
    2154:	87 e9       	ldi	r24, 0x97	; 151
    2156:	93 eb       	ldi	r25, 0xB3	; 179
    2158:	9f 93       	push	r25
    215a:	8f 93       	push	r24
    215c:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
    2160:	0f 90       	pop	r0
    2162:	0f 90       	pop	r0
                }
            }
            vsense_state.voltage_mv = vsense_mv;
    2164:	c0 92 0f 38 	sts	0x380F, r12	; 0x80380f <vsense_state+0x2>
    2168:	d0 92 10 38 	sts	0x3810, r13	; 0x803810 <vsense_state+0x3>
            if (vsense_state.cells_count > 0) 
    216c:	20 91 0d 38 	lds	r18, 0x380D	; 0x80380d <vsense_state>
    2170:	30 91 0e 38 	lds	r19, 0x380E	; 0x80380e <vsense_state+0x1>
    2174:	12 16       	cp	r1, r18
    2176:	13 06       	cpc	r1, r19
    2178:	0c f0       	brlt	.+2      	; 0x217c <main+0x1018>
    217a:	56 c0       	rjmp	.+172    	; 0x2228 <main+0x10c4>
            {
                uint16_t critical_voltage = vsense_state.cells_count * CRITICAL_VOLTAGE_PER_CELL;
                if (vsense_mv < critical_voltage) {
    217c:	40 ef       	ldi	r20, 0xF0	; 240
    217e:	5a e0       	ldi	r21, 0x0A	; 10
    2180:	24 9f       	mul	r18, r20
    2182:	c0 01       	movw	r24, r0
    2184:	25 9f       	mul	r18, r21
    2186:	90 0d       	add	r25, r0
    2188:	34 9f       	mul	r19, r20
    218a:	90 0d       	add	r25, r0
    218c:	11 24       	eor	r1, r1
    218e:	09 2e       	mov	r0, r25
    2190:	00 0c       	add	r0, r0
    2192:	aa 0b       	sbc	r26, r26
    2194:	bb 0b       	sbc	r27, r27
    2196:	c8 16       	cp	r12, r24
    2198:	d9 06       	cpc	r13, r25
    219a:	ea 06       	cpc	r14, r26
    219c:	fb 06       	cpc	r15, r27
    219e:	08 f0       	brcs	.+2      	; 0x21a2 <main+0x103e>
    21a0:	41 c0       	rjmp	.+130    	; 0x2224 <main+0x10c0>
                    vsense_state.critical_count += 1;
    21a2:	80 91 11 38 	lds	r24, 0x3811	; 0x803811 <vsense_state+0x4>
    21a6:	8f 5f       	subi	r24, 0xFF	; 255
    21a8:	80 93 11 38 	sts	0x3811, r24	; 0x803811 <vsense_state+0x4>
                    diag_println("Warning: VERY LOW BATTERY");
    21ac:	81 ec       	ldi	r24, 0xC1	; 193
    21ae:	93 eb       	ldi	r25, 0xB3	; 179
    21b0:	9f 93       	push	r25
    21b2:	8f 93       	push	r24
    21b4:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
                    if (vsense_state.critical_count > CRITICAL_COUNT) {
    21b8:	0f 90       	pop	r0
    21ba:	0f 90       	pop	r0
    21bc:	80 91 11 38 	lds	r24, 0x3811	; 0x803811 <vsense_state+0x4>
    21c0:	8d 30       	cpi	r24, 0x0D	; 13
    21c2:	90 f1       	brcs	.+100    	; 0x2228 <main+0x10c4>
    _PROTECTED_WRITE(WDT.CTRLA, 0);    
}

void shutdown_system()
{
    cli();
    21c4:	f8 94       	cli
    diag_println("### Shutting down ###");
    21c6:	8b ed       	ldi	r24, 0xDB	; 219
    21c8:	93 eb       	ldi	r25, 0xB3	; 179
    21ca:	9f 93       	push	r25
    21cc:	8f 93       	push	r24
    21ce:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
    diag_puts("\r\n");
    21d2:	87 e9       	ldi	r24, 0x97	; 151
    21d4:	91 eb       	ldi	r25, 0xB1	; 177
    21d6:	0e 94 b5 00 	call	0x16a	; 0x16a <diag_puts>
void radio_shutdown()
{
    // Shut down the radio and sleep.
    // after this, we need a full reset
    // Turn off our interrupts.
    cli();// Make sure no more interrupts arrive.
    21da:	f8 94       	cli
    TCB0.INTCTRL = 0; // Turn off irq
    21dc:	10 92 45 0a 	sts	0x0A45, r1	; 0x800a45 <CSWTCH.12+0x7f5bae>
    PORTA.PIN2CTRL = 0; // Turn off irq from there.
    21e0:	10 92 12 04 	sts	0x0412, r1	; 0x800412 <CSWTCH.12+0x7f557b>
    TCB0.CTRLA = 0; // Shut down timer
    21e4:	10 92 40 0a 	sts	0x0A40, r1	; 0x800a40 <CSWTCH.12+0x7f5ba9>
    spi_strobe(STROBE_STANDBY);
    21e8:	80 ea       	ldi	r24, 0xA0	; 160
    21ea:	0e 94 d5 06 	call	0xdaa	; 0xdaa <spi_strobe>
	#else
		//round up by default
		__ticks_dc = (uint32_t)(ceil(fabs(__tmp)));
	#endif

	__builtin_avr_delay_cycles(__ticks_dc);
    21ee:	87 ea       	ldi	r24, 0xA7	; 167
    21f0:	91 e6       	ldi	r25, 0x61	; 97
    21f2:	01 97       	sbiw	r24, 0x01	; 1
    21f4:	f1 f7       	brne	.-4      	; 0x21f2 <main+0x108e>
    21f6:	00 c0       	rjmp	.+0      	; 0x21f8 <main+0x1094>
    21f8:	00 00       	nop
    _delay_ms(10);
    // Get the radio into low power mode.
    spi_strobe(STROBE_SLEEP);
    21fa:	80 e8       	ldi	r24, 0x80	; 128
    21fc:	0e 94 d5 06 	call	0xdaa	; 0xdaa <spi_strobe>
}

static void watchdog_stop()
{
    // Deactivates watchdog
    _PROTECTED_WRITE(WDT.CTRLA, 0);    
    2200:	90 e0       	ldi	r25, 0x00	; 0
    2202:	88 ed       	ldi	r24, 0xD8	; 216
    2204:	84 bf       	out	0x34, r24	; 52
    2206:	90 93 00 01 	sts	0x0100, r25	; 0x800100 <CSWTCH.12+0x7f5269>
    cli();
    diag_println("### Shutting down ###");
    diag_puts("\r\n");
    radio_shutdown();
    watchdog_stop();
    diag_println("Radio is shut down. Goodnight.");
    220a:	81 ef       	ldi	r24, 0xF1	; 241
    220c:	93 eb       	ldi	r25, 0xB3	; 179
    220e:	9f 93       	push	r25
    2210:	8f 93       	push	r24
    2212:	0e 94 bc 01 	call	0x378	; 0x378 <diag_println>
    // Set all ports to inputs.
    // This saves a little current powering the leds etc.
    // Also, if the motors are running, they will stop.
    uninit_everything();
    2216:	0e 94 c1 00 	call	0x182	; 0x182 <uninit_everything>
    221a:	0f 90       	pop	r0
    221c:	0f 90       	pop	r0
    221e:	0f 90       	pop	r0
    2220:	0f 90       	pop	r0
    2222:	ff cf       	rjmp	.-2      	; 0x2222 <main+0x10be>
                        shutdown_system();
                    }
                } else {
                    // Battery seems to have recovered, zero the count.
                    vsense_state.critical_count = 0;
    2224:	10 92 11 38 	sts	0x3811, r1	; 0x803811 <vsense_state+0x4>
                }
            }
        }
        last_vsense_tickcount = now;
    2228:	80 92 12 38 	sts	0x3812, r8	; 0x803812 <last_vsense_tickcount>
    222c:	90 92 13 38 	sts	0x3813, r9	; 0x803813 <last_vsense_tickcount+0x1>
    2230:	a0 92 14 38 	sts	0x3814, r10	; 0x803814 <last_vsense_tickcount+0x2>
    2234:	b0 92 15 38 	sts	0x3815, r11	; 0x803815 <last_vsense_tickcount+0x3>
{
}

void sticks_loop()
{
    if (! has_signal) {
    2238:	80 91 22 38 	lds	r24, 0x3822	; 0x803822 <has_signal>
    223c:	81 11       	cpse	r24, r1
    223e:	36 c0       	rjmp	.+108    	; 0x22ac <main+0x1148>
        if (! configuration_mode) {
    2240:	80 91 21 38 	lds	r24, 0x3821	; 0x803821 <configuration_mode>
    2244:	81 11       	cpse	r24, r1
    2246:	32 c0       	rjmp	.+100    	; 0x22ac <main+0x1148>
}

uint32_t get_tickcount()
{
    uint32_t tc;
    cli(); // disable irq
    2248:	f8 94       	cli
    tc = master_state.tickcount;
    224a:	80 91 73 38 	lds	r24, 0x3873	; 0x803873 <master_state>
    224e:	90 91 74 38 	lds	r25, 0x3874	; 0x803874 <master_state+0x1>
    2252:	a0 91 75 38 	lds	r26, 0x3875	; 0x803875 <master_state+0x2>
    2256:	b0 91 76 38 	lds	r27, 0x3876	; 0x803876 <master_state+0x3>
    sei(); // enable irq
    225a:	78 94       	sei
            uint32_t now = get_tickcount();
            if ((now - last_signal_time) > 500)
    225c:	40 91 1d 38 	lds	r20, 0x381D	; 0x80381d <last_signal_time>
    2260:	50 91 1e 38 	lds	r21, 0x381E	; 0x80381e <last_signal_time+0x1>
    2264:	60 91 1f 38 	lds	r22, 0x381F	; 0x80381f <last_signal_time+0x2>
    2268:	70 91 20 38 	lds	r23, 0x3820	; 0x803820 <last_signal_time+0x3>
    226c:	84 1b       	sub	r24, r20
    226e:	95 0b       	sbc	r25, r21
    2270:	a6 0b       	sbc	r26, r22
    2272:	b7 0b       	sbc	r27, r23
    2274:	85 3f       	cpi	r24, 0xF5	; 245
    2276:	91 40       	sbci	r25, 0x01	; 1
    2278:	a1 05       	cpc	r26, r1
    227a:	b1 05       	cpc	r27, r1
    227c:	b8 f0       	brcs	.+46     	; 0x22ac <main+0x1148>
            {
                diag_puts("Entering configuration mode");
    227e:	80 e1       	ldi	r24, 0x10	; 16
    2280:	94 eb       	ldi	r25, 0xB4	; 180
    2282:	0e 94 b5 00 	call	0x16a	; 0x16a <diag_puts>
                configuration_mode = true;
    2286:	81 e0       	ldi	r24, 0x01	; 1
    2288:	80 93 21 38 	sts	0x3821, r24	; 0x803821 <configuration_mode>
                throttle_min = 2000;
    228c:	80 ed       	ldi	r24, 0xD0	; 208
    228e:	97 e0       	ldi	r25, 0x07	; 7
    2290:	80 93 1b 38 	sts	0x381B, r24	; 0x80381b <throttle_min>
    2294:	90 93 1c 38 	sts	0x381C, r25	; 0x80381c <throttle_min+0x1>
                throttle_max = 0;
    2298:	10 92 19 38 	sts	0x3819, r1	; 0x803819 <throttle_max>
    229c:	10 92 1a 38 	sts	0x381A, r1	; 0x80381a <throttle_max+0x1>
                config_switch_last = false;
    22a0:	10 92 18 38 	sts	0x3818, r1	; 0x803818 <config_switch_last>
                config_switch_count = 0;
    22a4:	10 92 17 38 	sts	0x3817, r1	; 0x803817 <config_switch_count>
                config_rpm_value = 0;
    22a8:	10 92 16 38 	sts	0x3816, r1	; 0x803816 <config_rpm_value>

static void watchdog_loop()
{
    // Kick the dog to stop it from resetting, if the radio
    // interrupts are working ok.
    if (master_state.radio_interrupt_ok) {
    22ac:	80 91 77 38 	lds	r24, 0x3877	; 0x803877 <master_state+0x4>
    22b0:	88 23       	and	r24, r24
    22b2:	09 f4       	brne	.+2      	; 0x22b6 <main+0x1152>
    22b4:	ac c9       	rjmp	.-3240   	; 0x160e <main+0x4aa>
        wdt_reset();
    22b6:	a8 95       	wdr
        master_state.radio_interrupt_ok = 0;
    22b8:	10 92 77 38 	sts	0x3877, r1	; 0x803877 <master_state+0x4>
    22bc:	a8 c9       	rjmp	.-3248   	; 0x160e <main+0x4aa>

000022be <eeprom_read_block>:
    22be:	60 50       	subi	r22, 0x00	; 0
    22c0:	7c 4e       	sbci	r23, 0xEC	; 236
    22c2:	0c 94 9a 11 	jmp	0x2334	; 0x2334 <memcpy>

000022c6 <eeprom_update_block>:
    22c6:	dc 01       	movw	r26, r24
    22c8:	a4 0f       	add	r26, r20
    22ca:	b5 1f       	adc	r27, r21
    22cc:	41 50       	subi	r20, 0x01	; 1
    22ce:	50 40       	sbci	r21, 0x00	; 0
    22d0:	48 f0       	brcs	.+18     	; 0x22e4 <eeprom_update_block+0x1e>
    22d2:	cb 01       	movw	r24, r22
    22d4:	84 0f       	add	r24, r20
    22d6:	95 1f       	adc	r25, r21
    22d8:	2e 91       	ld	r18, -X
    22da:	0e 94 74 11 	call	0x22e8	; 0x22e8 <eeprom_update_r18>
    22de:	41 50       	subi	r20, 0x01	; 1
    22e0:	50 40       	sbci	r21, 0x00	; 0
    22e2:	d0 f7       	brcc	.-12     	; 0x22d8 <eeprom_update_block+0x12>
    22e4:	08 95       	ret

000022e6 <eeprom_update_byte>:
    22e6:	26 2f       	mov	r18, r22

000022e8 <eeprom_update_r18>:
    22e8:	0e 94 96 11 	call	0x232c	; 0x232c <eeprom_mapen>
    22ec:	00 80       	ld	r0, Z
    22ee:	02 16       	cp	r0, r18
    22f0:	19 f0       	breq	.+6      	; 0x22f8 <eeprom_update_r18+0x10>
    22f2:	0e 94 7f 11 	call	0x22fe	; 0x22fe <eeprom_write_r18>
    22f6:	01 97       	sbiw	r24, 0x01	; 1
    22f8:	01 97       	sbiw	r24, 0x01	; 1
    22fa:	08 95       	ret

000022fc <eeprom_write_byte>:
    22fc:	26 2f       	mov	r18, r22

000022fe <eeprom_write_r18>:
    22fe:	af 93       	push	r26
    2300:	bf 93       	push	r27
    2302:	e0 e0       	ldi	r30, 0x00	; 0
    2304:	f0 e1       	ldi	r31, 0x10	; 16
    2306:	32 81       	ldd	r19, Z+2	; 0x02
    2308:	31 fd       	sbrc	r19, 1
    230a:	fd cf       	rjmp	.-6      	; 0x2306 <eeprom_write_r18+0x8>
    230c:	dc 01       	movw	r26, r24
    230e:	a0 50       	subi	r26, 0x00	; 0
    2310:	bc 4e       	sbci	r27, 0xEC	; 236
    2312:	2c 93       	st	X, r18
    2314:	3d e9       	ldi	r19, 0x9D	; 157
    2316:	34 bf       	out	0x34, r19	; 52
    2318:	23 e0       	ldi	r18, 0x03	; 3
    231a:	20 83       	st	Z, r18
    231c:	01 96       	adiw	r24, 0x01	; 1
    231e:	bf 91       	pop	r27
    2320:	af 91       	pop	r26
    2322:	08 95       	ret

00002324 <eeprom_read_byte>:
    2324:	03 d0       	rcall	.+6      	; 0x232c <eeprom_mapen>
    2326:	80 81       	ld	r24, Z
    2328:	99 27       	eor	r25, r25
    232a:	08 95       	ret

0000232c <eeprom_mapen>:
    232c:	fc 01       	movw	r30, r24
    232e:	e0 50       	subi	r30, 0x00	; 0
    2330:	fc 4e       	sbci	r31, 0xEC	; 236
    2332:	08 95       	ret

00002334 <memcpy>:
    2334:	fb 01       	movw	r30, r22
    2336:	dc 01       	movw	r26, r24
    2338:	02 c0       	rjmp	.+4      	; 0x233e <memcpy+0xa>
    233a:	01 90       	ld	r0, Z+
    233c:	0d 92       	st	X+, r0
    233e:	41 50       	subi	r20, 0x01	; 1
    2340:	50 40       	sbci	r21, 0x00	; 0
    2342:	d8 f7       	brcc	.-10     	; 0x233a <memcpy+0x6>
    2344:	08 95       	ret

00002346 <__udivmodhi4>:
    2346:	aa 1b       	sub	r26, r26
    2348:	bb 1b       	sub	r27, r27
    234a:	51 e1       	ldi	r21, 0x11	; 17
    234c:	07 c0       	rjmp	.+14     	; 0x235c <__udivmodhi4_ep>

0000234e <__udivmodhi4_loop>:
    234e:	aa 1f       	adc	r26, r26
    2350:	bb 1f       	adc	r27, r27
    2352:	a6 17       	cp	r26, r22
    2354:	b7 07       	cpc	r27, r23
    2356:	10 f0       	brcs	.+4      	; 0x235c <__udivmodhi4_ep>
    2358:	a6 1b       	sub	r26, r22
    235a:	b7 0b       	sbc	r27, r23

0000235c <__udivmodhi4_ep>:
    235c:	88 1f       	adc	r24, r24
    235e:	99 1f       	adc	r25, r25
    2360:	5a 95       	dec	r21
    2362:	a9 f7       	brne	.-22     	; 0x234e <__udivmodhi4_loop>
    2364:	80 95       	com	r24
    2366:	90 95       	com	r25
    2368:	bc 01       	movw	r22, r24
    236a:	cd 01       	movw	r24, r26
    236c:	08 95       	ret

0000236e <__divmodhi4>:
    236e:	97 fb       	bst	r25, 7
    2370:	07 2e       	mov	r0, r23
    2372:	16 f4       	brtc	.+4      	; 0x2378 <__divmodhi4+0xa>
    2374:	00 94       	com	r0
    2376:	07 d0       	rcall	.+14     	; 0x2386 <__divmodhi4_neg1>
    2378:	77 fd       	sbrc	r23, 7
    237a:	09 d0       	rcall	.+18     	; 0x238e <__divmodhi4_neg2>
    237c:	0e 94 a3 11 	call	0x2346	; 0x2346 <__udivmodhi4>
    2380:	07 fc       	sbrc	r0, 7
    2382:	05 d0       	rcall	.+10     	; 0x238e <__divmodhi4_neg2>
    2384:	3e f4       	brtc	.+14     	; 0x2394 <__divmodhi4_exit>

00002386 <__divmodhi4_neg1>:
    2386:	90 95       	com	r25
    2388:	81 95       	neg	r24
    238a:	9f 4f       	sbci	r25, 0xFF	; 255
    238c:	08 95       	ret

0000238e <__divmodhi4_neg2>:
    238e:	70 95       	com	r23
    2390:	61 95       	neg	r22
    2392:	7f 4f       	sbci	r23, 0xFF	; 255

00002394 <__divmodhi4_exit>:
    2394:	08 95       	ret

00002396 <__udivmodsi4>:
    2396:	a1 e2       	ldi	r26, 0x21	; 33
    2398:	1a 2e       	mov	r1, r26
    239a:	aa 1b       	sub	r26, r26
    239c:	bb 1b       	sub	r27, r27
    239e:	fd 01       	movw	r30, r26
    23a0:	0d c0       	rjmp	.+26     	; 0x23bc <__udivmodsi4_ep>

000023a2 <__udivmodsi4_loop>:
    23a2:	aa 1f       	adc	r26, r26
    23a4:	bb 1f       	adc	r27, r27
    23a6:	ee 1f       	adc	r30, r30
    23a8:	ff 1f       	adc	r31, r31
    23aa:	a2 17       	cp	r26, r18
    23ac:	b3 07       	cpc	r27, r19
    23ae:	e4 07       	cpc	r30, r20
    23b0:	f5 07       	cpc	r31, r21
    23b2:	20 f0       	brcs	.+8      	; 0x23bc <__udivmodsi4_ep>
    23b4:	a2 1b       	sub	r26, r18
    23b6:	b3 0b       	sbc	r27, r19
    23b8:	e4 0b       	sbc	r30, r20
    23ba:	f5 0b       	sbc	r31, r21

000023bc <__udivmodsi4_ep>:
    23bc:	66 1f       	adc	r22, r22
    23be:	77 1f       	adc	r23, r23
    23c0:	88 1f       	adc	r24, r24
    23c2:	99 1f       	adc	r25, r25
    23c4:	1a 94       	dec	r1
    23c6:	69 f7       	brne	.-38     	; 0x23a2 <__udivmodsi4_loop>
    23c8:	60 95       	com	r22
    23ca:	70 95       	com	r23
    23cc:	80 95       	com	r24
    23ce:	90 95       	com	r25
    23d0:	9b 01       	movw	r18, r22
    23d2:	ac 01       	movw	r20, r24
    23d4:	bd 01       	movw	r22, r26
    23d6:	cf 01       	movw	r24, r30
    23d8:	08 95       	ret

000023da <__tablejump2__>:
    23da:	ee 0f       	add	r30, r30
    23dc:	ff 1f       	adc	r31, r31
    23de:	05 90       	lpm	r0, Z+
    23e0:	f4 91       	lpm	r31, Z
    23e2:	e0 2d       	mov	r30, r0
    23e4:	09 94       	ijmp

000023e6 <__umulhisi3>:
    23e6:	a2 9f       	mul	r26, r18
    23e8:	b0 01       	movw	r22, r0
    23ea:	b3 9f       	mul	r27, r19
    23ec:	c0 01       	movw	r24, r0
    23ee:	a3 9f       	mul	r26, r19
    23f0:	70 0d       	add	r23, r0
    23f2:	81 1d       	adc	r24, r1
    23f4:	11 24       	eor	r1, r1
    23f6:	91 1d       	adc	r25, r1
    23f8:	b2 9f       	mul	r27, r18
    23fa:	70 0d       	add	r23, r0
    23fc:	81 1d       	adc	r24, r1
    23fe:	11 24       	eor	r1, r1
    2400:	91 1d       	adc	r25, r1
    2402:	08 95       	ret

00002404 <__muluhisi3>:
    2404:	0e 94 f3 11 	call	0x23e6	; 0x23e6 <__umulhisi3>
    2408:	a5 9f       	mul	r26, r21
    240a:	90 0d       	add	r25, r0
    240c:	b4 9f       	mul	r27, r20
    240e:	90 0d       	add	r25, r0
    2410:	a4 9f       	mul	r26, r20
    2412:	80 0d       	add	r24, r0
    2414:	91 1d       	adc	r25, r1
    2416:	11 24       	eor	r1, r1
    2418:	08 95       	ret

0000241a <__subsf3>:
    241a:	50 58       	subi	r21, 0x80	; 128

0000241c <__addsf3>:
    241c:	bb 27       	eor	r27, r27
    241e:	aa 27       	eor	r26, r26
    2420:	0e 94 25 12 	call	0x244a	; 0x244a <__addsf3x>
    2424:	0c 94 76 13 	jmp	0x26ec	; 0x26ec <__fp_round>
    2428:	0e 94 68 13 	call	0x26d0	; 0x26d0 <__fp_pscA>
    242c:	38 f0       	brcs	.+14     	; 0x243c <__addsf3+0x20>
    242e:	0e 94 6f 13 	call	0x26de	; 0x26de <__fp_pscB>
    2432:	20 f0       	brcs	.+8      	; 0x243c <__addsf3+0x20>
    2434:	39 f4       	brne	.+14     	; 0x2444 <__addsf3+0x28>
    2436:	9f 3f       	cpi	r25, 0xFF	; 255
    2438:	19 f4       	brne	.+6      	; 0x2440 <__addsf3+0x24>
    243a:	26 f4       	brtc	.+8      	; 0x2444 <__addsf3+0x28>
    243c:	0c 94 65 13 	jmp	0x26ca	; 0x26ca <__fp_nan>
    2440:	0e f4       	brtc	.+2      	; 0x2444 <__addsf3+0x28>
    2442:	e0 95       	com	r30
    2444:	e7 fb       	bst	r30, 7
    2446:	0c 94 5f 13 	jmp	0x26be	; 0x26be <__fp_inf>

0000244a <__addsf3x>:
    244a:	e9 2f       	mov	r30, r25
    244c:	0e 94 87 13 	call	0x270e	; 0x270e <__fp_split3>
    2450:	58 f3       	brcs	.-42     	; 0x2428 <__addsf3+0xc>
    2452:	ba 17       	cp	r27, r26
    2454:	62 07       	cpc	r22, r18
    2456:	73 07       	cpc	r23, r19
    2458:	84 07       	cpc	r24, r20
    245a:	95 07       	cpc	r25, r21
    245c:	20 f0       	brcs	.+8      	; 0x2466 <__addsf3x+0x1c>
    245e:	79 f4       	brne	.+30     	; 0x247e <__addsf3x+0x34>
    2460:	a6 f5       	brtc	.+104    	; 0x24ca <__addsf3x+0x80>
    2462:	0c 94 a9 13 	jmp	0x2752	; 0x2752 <__fp_zero>
    2466:	0e f4       	brtc	.+2      	; 0x246a <__addsf3x+0x20>
    2468:	e0 95       	com	r30
    246a:	0b 2e       	mov	r0, r27
    246c:	ba 2f       	mov	r27, r26
    246e:	a0 2d       	mov	r26, r0
    2470:	0b 01       	movw	r0, r22
    2472:	b9 01       	movw	r22, r18
    2474:	90 01       	movw	r18, r0
    2476:	0c 01       	movw	r0, r24
    2478:	ca 01       	movw	r24, r20
    247a:	a0 01       	movw	r20, r0
    247c:	11 24       	eor	r1, r1
    247e:	ff 27       	eor	r31, r31
    2480:	59 1b       	sub	r21, r25
    2482:	99 f0       	breq	.+38     	; 0x24aa <__addsf3x+0x60>
    2484:	59 3f       	cpi	r21, 0xF9	; 249
    2486:	50 f4       	brcc	.+20     	; 0x249c <__addsf3x+0x52>
    2488:	50 3e       	cpi	r21, 0xE0	; 224
    248a:	68 f1       	brcs	.+90     	; 0x24e6 <__addsf3x+0x9c>
    248c:	1a 16       	cp	r1, r26
    248e:	f0 40       	sbci	r31, 0x00	; 0
    2490:	a2 2f       	mov	r26, r18
    2492:	23 2f       	mov	r18, r19
    2494:	34 2f       	mov	r19, r20
    2496:	44 27       	eor	r20, r20
    2498:	58 5f       	subi	r21, 0xF8	; 248
    249a:	f3 cf       	rjmp	.-26     	; 0x2482 <__addsf3x+0x38>
    249c:	46 95       	lsr	r20
    249e:	37 95       	ror	r19
    24a0:	27 95       	ror	r18
    24a2:	a7 95       	ror	r26
    24a4:	f0 40       	sbci	r31, 0x00	; 0
    24a6:	53 95       	inc	r21
    24a8:	c9 f7       	brne	.-14     	; 0x249c <__addsf3x+0x52>
    24aa:	7e f4       	brtc	.+30     	; 0x24ca <__addsf3x+0x80>
    24ac:	1f 16       	cp	r1, r31
    24ae:	ba 0b       	sbc	r27, r26
    24b0:	62 0b       	sbc	r22, r18
    24b2:	73 0b       	sbc	r23, r19
    24b4:	84 0b       	sbc	r24, r20
    24b6:	ba f0       	brmi	.+46     	; 0x24e6 <__addsf3x+0x9c>
    24b8:	91 50       	subi	r25, 0x01	; 1
    24ba:	a1 f0       	breq	.+40     	; 0x24e4 <__addsf3x+0x9a>
    24bc:	ff 0f       	add	r31, r31
    24be:	bb 1f       	adc	r27, r27
    24c0:	66 1f       	adc	r22, r22
    24c2:	77 1f       	adc	r23, r23
    24c4:	88 1f       	adc	r24, r24
    24c6:	c2 f7       	brpl	.-16     	; 0x24b8 <__addsf3x+0x6e>
    24c8:	0e c0       	rjmp	.+28     	; 0x24e6 <__addsf3x+0x9c>
    24ca:	ba 0f       	add	r27, r26
    24cc:	62 1f       	adc	r22, r18
    24ce:	73 1f       	adc	r23, r19
    24d0:	84 1f       	adc	r24, r20
    24d2:	48 f4       	brcc	.+18     	; 0x24e6 <__addsf3x+0x9c>
    24d4:	87 95       	ror	r24
    24d6:	77 95       	ror	r23
    24d8:	67 95       	ror	r22
    24da:	b7 95       	ror	r27
    24dc:	f7 95       	ror	r31
    24de:	9e 3f       	cpi	r25, 0xFE	; 254
    24e0:	08 f0       	brcs	.+2      	; 0x24e4 <__addsf3x+0x9a>
    24e2:	b0 cf       	rjmp	.-160    	; 0x2444 <__addsf3+0x28>
    24e4:	93 95       	inc	r25
    24e6:	88 0f       	add	r24, r24
    24e8:	08 f0       	brcs	.+2      	; 0x24ec <__addsf3x+0xa2>
    24ea:	99 27       	eor	r25, r25
    24ec:	ee 0f       	add	r30, r30
    24ee:	97 95       	ror	r25
    24f0:	87 95       	ror	r24
    24f2:	08 95       	ret

000024f4 <__divsf3>:
    24f4:	0e 94 8e 12 	call	0x251c	; 0x251c <__divsf3x>
    24f8:	0c 94 76 13 	jmp	0x26ec	; 0x26ec <__fp_round>
    24fc:	0e 94 6f 13 	call	0x26de	; 0x26de <__fp_pscB>
    2500:	58 f0       	brcs	.+22     	; 0x2518 <__divsf3+0x24>
    2502:	0e 94 68 13 	call	0x26d0	; 0x26d0 <__fp_pscA>
    2506:	40 f0       	brcs	.+16     	; 0x2518 <__divsf3+0x24>
    2508:	29 f4       	brne	.+10     	; 0x2514 <__divsf3+0x20>
    250a:	5f 3f       	cpi	r21, 0xFF	; 255
    250c:	29 f0       	breq	.+10     	; 0x2518 <__divsf3+0x24>
    250e:	0c 94 5f 13 	jmp	0x26be	; 0x26be <__fp_inf>
    2512:	51 11       	cpse	r21, r1
    2514:	0c 94 aa 13 	jmp	0x2754	; 0x2754 <__fp_szero>
    2518:	0c 94 65 13 	jmp	0x26ca	; 0x26ca <__fp_nan>

0000251c <__divsf3x>:
    251c:	0e 94 87 13 	call	0x270e	; 0x270e <__fp_split3>
    2520:	68 f3       	brcs	.-38     	; 0x24fc <__divsf3+0x8>

00002522 <__divsf3_pse>:
    2522:	99 23       	and	r25, r25
    2524:	b1 f3       	breq	.-20     	; 0x2512 <__divsf3+0x1e>
    2526:	55 23       	and	r21, r21
    2528:	91 f3       	breq	.-28     	; 0x250e <__divsf3+0x1a>
    252a:	95 1b       	sub	r25, r21
    252c:	55 0b       	sbc	r21, r21
    252e:	bb 27       	eor	r27, r27
    2530:	aa 27       	eor	r26, r26
    2532:	62 17       	cp	r22, r18
    2534:	73 07       	cpc	r23, r19
    2536:	84 07       	cpc	r24, r20
    2538:	38 f0       	brcs	.+14     	; 0x2548 <__divsf3_pse+0x26>
    253a:	9f 5f       	subi	r25, 0xFF	; 255
    253c:	5f 4f       	sbci	r21, 0xFF	; 255
    253e:	22 0f       	add	r18, r18
    2540:	33 1f       	adc	r19, r19
    2542:	44 1f       	adc	r20, r20
    2544:	aa 1f       	adc	r26, r26
    2546:	a9 f3       	breq	.-22     	; 0x2532 <__divsf3_pse+0x10>
    2548:	35 d0       	rcall	.+106    	; 0x25b4 <__divsf3_pse+0x92>
    254a:	0e 2e       	mov	r0, r30
    254c:	3a f0       	brmi	.+14     	; 0x255c <__divsf3_pse+0x3a>
    254e:	e0 e8       	ldi	r30, 0x80	; 128
    2550:	32 d0       	rcall	.+100    	; 0x25b6 <__divsf3_pse+0x94>
    2552:	91 50       	subi	r25, 0x01	; 1
    2554:	50 40       	sbci	r21, 0x00	; 0
    2556:	e6 95       	lsr	r30
    2558:	00 1c       	adc	r0, r0
    255a:	ca f7       	brpl	.-14     	; 0x254e <__divsf3_pse+0x2c>
    255c:	2b d0       	rcall	.+86     	; 0x25b4 <__divsf3_pse+0x92>
    255e:	fe 2f       	mov	r31, r30
    2560:	29 d0       	rcall	.+82     	; 0x25b4 <__divsf3_pse+0x92>
    2562:	66 0f       	add	r22, r22
    2564:	77 1f       	adc	r23, r23
    2566:	88 1f       	adc	r24, r24
    2568:	bb 1f       	adc	r27, r27
    256a:	26 17       	cp	r18, r22
    256c:	37 07       	cpc	r19, r23
    256e:	48 07       	cpc	r20, r24
    2570:	ab 07       	cpc	r26, r27
    2572:	b0 e8       	ldi	r27, 0x80	; 128
    2574:	09 f0       	breq	.+2      	; 0x2578 <__divsf3_pse+0x56>
    2576:	bb 0b       	sbc	r27, r27
    2578:	80 2d       	mov	r24, r0
    257a:	bf 01       	movw	r22, r30
    257c:	ff 27       	eor	r31, r31
    257e:	93 58       	subi	r25, 0x83	; 131
    2580:	5f 4f       	sbci	r21, 0xFF	; 255
    2582:	3a f0       	brmi	.+14     	; 0x2592 <__divsf3_pse+0x70>
    2584:	9e 3f       	cpi	r25, 0xFE	; 254
    2586:	51 05       	cpc	r21, r1
    2588:	78 f0       	brcs	.+30     	; 0x25a8 <__divsf3_pse+0x86>
    258a:	0c 94 5f 13 	jmp	0x26be	; 0x26be <__fp_inf>
    258e:	0c 94 aa 13 	jmp	0x2754	; 0x2754 <__fp_szero>
    2592:	5f 3f       	cpi	r21, 0xFF	; 255
    2594:	e4 f3       	brlt	.-8      	; 0x258e <__divsf3_pse+0x6c>
    2596:	98 3e       	cpi	r25, 0xE8	; 232
    2598:	d4 f3       	brlt	.-12     	; 0x258e <__divsf3_pse+0x6c>
    259a:	86 95       	lsr	r24
    259c:	77 95       	ror	r23
    259e:	67 95       	ror	r22
    25a0:	b7 95       	ror	r27
    25a2:	f7 95       	ror	r31
    25a4:	9f 5f       	subi	r25, 0xFF	; 255
    25a6:	c9 f7       	brne	.-14     	; 0x259a <__divsf3_pse+0x78>
    25a8:	88 0f       	add	r24, r24
    25aa:	91 1d       	adc	r25, r1
    25ac:	96 95       	lsr	r25
    25ae:	87 95       	ror	r24
    25b0:	97 f9       	bld	r25, 7
    25b2:	08 95       	ret
    25b4:	e1 e0       	ldi	r30, 0x01	; 1
    25b6:	66 0f       	add	r22, r22
    25b8:	77 1f       	adc	r23, r23
    25ba:	88 1f       	adc	r24, r24
    25bc:	bb 1f       	adc	r27, r27
    25be:	62 17       	cp	r22, r18
    25c0:	73 07       	cpc	r23, r19
    25c2:	84 07       	cpc	r24, r20
    25c4:	ba 07       	cpc	r27, r26
    25c6:	20 f0       	brcs	.+8      	; 0x25d0 <__divsf3_pse+0xae>
    25c8:	62 1b       	sub	r22, r18
    25ca:	73 0b       	sbc	r23, r19
    25cc:	84 0b       	sbc	r24, r20
    25ce:	ba 0b       	sbc	r27, r26
    25d0:	ee 1f       	adc	r30, r30
    25d2:	88 f7       	brcc	.-30     	; 0x25b6 <__divsf3_pse+0x94>
    25d4:	e0 95       	com	r30
    25d6:	08 95       	ret

000025d8 <__fixsfsi>:
    25d8:	0e 94 f3 12 	call	0x25e6	; 0x25e6 <__fixunssfsi>
    25dc:	68 94       	set
    25de:	b1 11       	cpse	r27, r1
    25e0:	0c 94 aa 13 	jmp	0x2754	; 0x2754 <__fp_szero>
    25e4:	08 95       	ret

000025e6 <__fixunssfsi>:
    25e6:	0e 94 8f 13 	call	0x271e	; 0x271e <__fp_splitA>
    25ea:	88 f0       	brcs	.+34     	; 0x260e <__fixunssfsi+0x28>
    25ec:	9f 57       	subi	r25, 0x7F	; 127
    25ee:	98 f0       	brcs	.+38     	; 0x2616 <__fixunssfsi+0x30>
    25f0:	b9 2f       	mov	r27, r25
    25f2:	99 27       	eor	r25, r25
    25f4:	b7 51       	subi	r27, 0x17	; 23
    25f6:	b0 f0       	brcs	.+44     	; 0x2624 <__fixunssfsi+0x3e>
    25f8:	e1 f0       	breq	.+56     	; 0x2632 <__fixunssfsi+0x4c>
    25fa:	66 0f       	add	r22, r22
    25fc:	77 1f       	adc	r23, r23
    25fe:	88 1f       	adc	r24, r24
    2600:	99 1f       	adc	r25, r25
    2602:	1a f0       	brmi	.+6      	; 0x260a <__fixunssfsi+0x24>
    2604:	ba 95       	dec	r27
    2606:	c9 f7       	brne	.-14     	; 0x25fa <__fixunssfsi+0x14>
    2608:	14 c0       	rjmp	.+40     	; 0x2632 <__fixunssfsi+0x4c>
    260a:	b1 30       	cpi	r27, 0x01	; 1
    260c:	91 f0       	breq	.+36     	; 0x2632 <__fixunssfsi+0x4c>
    260e:	0e 94 a9 13 	call	0x2752	; 0x2752 <__fp_zero>
    2612:	b1 e0       	ldi	r27, 0x01	; 1
    2614:	08 95       	ret
    2616:	0c 94 a9 13 	jmp	0x2752	; 0x2752 <__fp_zero>
    261a:	67 2f       	mov	r22, r23
    261c:	78 2f       	mov	r23, r24
    261e:	88 27       	eor	r24, r24
    2620:	b8 5f       	subi	r27, 0xF8	; 248
    2622:	39 f0       	breq	.+14     	; 0x2632 <__fixunssfsi+0x4c>
    2624:	b9 3f       	cpi	r27, 0xF9	; 249
    2626:	cc f3       	brlt	.-14     	; 0x261a <__fixunssfsi+0x34>
    2628:	86 95       	lsr	r24
    262a:	77 95       	ror	r23
    262c:	67 95       	ror	r22
    262e:	b3 95       	inc	r27
    2630:	d9 f7       	brne	.-10     	; 0x2628 <__fixunssfsi+0x42>
    2632:	3e f4       	brtc	.+14     	; 0x2642 <__fixunssfsi+0x5c>
    2634:	90 95       	com	r25
    2636:	80 95       	com	r24
    2638:	70 95       	com	r23
    263a:	61 95       	neg	r22
    263c:	7f 4f       	sbci	r23, 0xFF	; 255
    263e:	8f 4f       	sbci	r24, 0xFF	; 255
    2640:	9f 4f       	sbci	r25, 0xFF	; 255
    2642:	08 95       	ret

00002644 <__floatunsisf>:
    2644:	e8 94       	clt
    2646:	09 c0       	rjmp	.+18     	; 0x265a <__floatsisf+0x12>

00002648 <__floatsisf>:
    2648:	97 fb       	bst	r25, 7
    264a:	3e f4       	brtc	.+14     	; 0x265a <__floatsisf+0x12>
    264c:	90 95       	com	r25
    264e:	80 95       	com	r24
    2650:	70 95       	com	r23
    2652:	61 95       	neg	r22
    2654:	7f 4f       	sbci	r23, 0xFF	; 255
    2656:	8f 4f       	sbci	r24, 0xFF	; 255
    2658:	9f 4f       	sbci	r25, 0xFF	; 255
    265a:	99 23       	and	r25, r25
    265c:	a9 f0       	breq	.+42     	; 0x2688 <__floatsisf+0x40>
    265e:	f9 2f       	mov	r31, r25
    2660:	96 e9       	ldi	r25, 0x96	; 150
    2662:	bb 27       	eor	r27, r27
    2664:	93 95       	inc	r25
    2666:	f6 95       	lsr	r31
    2668:	87 95       	ror	r24
    266a:	77 95       	ror	r23
    266c:	67 95       	ror	r22
    266e:	b7 95       	ror	r27
    2670:	f1 11       	cpse	r31, r1
    2672:	f8 cf       	rjmp	.-16     	; 0x2664 <__floatsisf+0x1c>
    2674:	fa f4       	brpl	.+62     	; 0x26b4 <__floatsisf+0x6c>
    2676:	bb 0f       	add	r27, r27
    2678:	11 f4       	brne	.+4      	; 0x267e <__floatsisf+0x36>
    267a:	60 ff       	sbrs	r22, 0
    267c:	1b c0       	rjmp	.+54     	; 0x26b4 <__floatsisf+0x6c>
    267e:	6f 5f       	subi	r22, 0xFF	; 255
    2680:	7f 4f       	sbci	r23, 0xFF	; 255
    2682:	8f 4f       	sbci	r24, 0xFF	; 255
    2684:	9f 4f       	sbci	r25, 0xFF	; 255
    2686:	16 c0       	rjmp	.+44     	; 0x26b4 <__floatsisf+0x6c>
    2688:	88 23       	and	r24, r24
    268a:	11 f0       	breq	.+4      	; 0x2690 <__floatsisf+0x48>
    268c:	96 e9       	ldi	r25, 0x96	; 150
    268e:	11 c0       	rjmp	.+34     	; 0x26b2 <__floatsisf+0x6a>
    2690:	77 23       	and	r23, r23
    2692:	21 f0       	breq	.+8      	; 0x269c <__floatsisf+0x54>
    2694:	9e e8       	ldi	r25, 0x8E	; 142
    2696:	87 2f       	mov	r24, r23
    2698:	76 2f       	mov	r23, r22
    269a:	05 c0       	rjmp	.+10     	; 0x26a6 <__floatsisf+0x5e>
    269c:	66 23       	and	r22, r22
    269e:	71 f0       	breq	.+28     	; 0x26bc <__floatsisf+0x74>
    26a0:	96 e8       	ldi	r25, 0x86	; 134
    26a2:	86 2f       	mov	r24, r22
    26a4:	70 e0       	ldi	r23, 0x00	; 0
    26a6:	60 e0       	ldi	r22, 0x00	; 0
    26a8:	2a f0       	brmi	.+10     	; 0x26b4 <__floatsisf+0x6c>
    26aa:	9a 95       	dec	r25
    26ac:	66 0f       	add	r22, r22
    26ae:	77 1f       	adc	r23, r23
    26b0:	88 1f       	adc	r24, r24
    26b2:	da f7       	brpl	.-10     	; 0x26aa <__floatsisf+0x62>
    26b4:	88 0f       	add	r24, r24
    26b6:	96 95       	lsr	r25
    26b8:	87 95       	ror	r24
    26ba:	97 f9       	bld	r25, 7
    26bc:	08 95       	ret

000026be <__fp_inf>:
    26be:	97 f9       	bld	r25, 7
    26c0:	9f 67       	ori	r25, 0x7F	; 127
    26c2:	80 e8       	ldi	r24, 0x80	; 128
    26c4:	70 e0       	ldi	r23, 0x00	; 0
    26c6:	60 e0       	ldi	r22, 0x00	; 0
    26c8:	08 95       	ret

000026ca <__fp_nan>:
    26ca:	9f ef       	ldi	r25, 0xFF	; 255
    26cc:	80 ec       	ldi	r24, 0xC0	; 192
    26ce:	08 95       	ret

000026d0 <__fp_pscA>:
    26d0:	00 24       	eor	r0, r0
    26d2:	0a 94       	dec	r0
    26d4:	16 16       	cp	r1, r22
    26d6:	17 06       	cpc	r1, r23
    26d8:	18 06       	cpc	r1, r24
    26da:	09 06       	cpc	r0, r25
    26dc:	08 95       	ret

000026de <__fp_pscB>:
    26de:	00 24       	eor	r0, r0
    26e0:	0a 94       	dec	r0
    26e2:	12 16       	cp	r1, r18
    26e4:	13 06       	cpc	r1, r19
    26e6:	14 06       	cpc	r1, r20
    26e8:	05 06       	cpc	r0, r21
    26ea:	08 95       	ret

000026ec <__fp_round>:
    26ec:	09 2e       	mov	r0, r25
    26ee:	03 94       	inc	r0
    26f0:	00 0c       	add	r0, r0
    26f2:	11 f4       	brne	.+4      	; 0x26f8 <__fp_round+0xc>
    26f4:	88 23       	and	r24, r24
    26f6:	52 f0       	brmi	.+20     	; 0x270c <__fp_round+0x20>
    26f8:	bb 0f       	add	r27, r27
    26fa:	40 f4       	brcc	.+16     	; 0x270c <__fp_round+0x20>
    26fc:	bf 2b       	or	r27, r31
    26fe:	11 f4       	brne	.+4      	; 0x2704 <__fp_round+0x18>
    2700:	60 ff       	sbrs	r22, 0
    2702:	04 c0       	rjmp	.+8      	; 0x270c <__fp_round+0x20>
    2704:	6f 5f       	subi	r22, 0xFF	; 255
    2706:	7f 4f       	sbci	r23, 0xFF	; 255
    2708:	8f 4f       	sbci	r24, 0xFF	; 255
    270a:	9f 4f       	sbci	r25, 0xFF	; 255
    270c:	08 95       	ret

0000270e <__fp_split3>:
    270e:	57 fd       	sbrc	r21, 7
    2710:	90 58       	subi	r25, 0x80	; 128
    2712:	44 0f       	add	r20, r20
    2714:	55 1f       	adc	r21, r21
    2716:	59 f0       	breq	.+22     	; 0x272e <__fp_splitA+0x10>
    2718:	5f 3f       	cpi	r21, 0xFF	; 255
    271a:	71 f0       	breq	.+28     	; 0x2738 <__fp_splitA+0x1a>
    271c:	47 95       	ror	r20

0000271e <__fp_splitA>:
    271e:	88 0f       	add	r24, r24
    2720:	97 fb       	bst	r25, 7
    2722:	99 1f       	adc	r25, r25
    2724:	61 f0       	breq	.+24     	; 0x273e <__fp_splitA+0x20>
    2726:	9f 3f       	cpi	r25, 0xFF	; 255
    2728:	79 f0       	breq	.+30     	; 0x2748 <__fp_splitA+0x2a>
    272a:	87 95       	ror	r24
    272c:	08 95       	ret
    272e:	12 16       	cp	r1, r18
    2730:	13 06       	cpc	r1, r19
    2732:	14 06       	cpc	r1, r20
    2734:	55 1f       	adc	r21, r21
    2736:	f2 cf       	rjmp	.-28     	; 0x271c <__fp_split3+0xe>
    2738:	46 95       	lsr	r20
    273a:	f1 df       	rcall	.-30     	; 0x271e <__fp_splitA>
    273c:	08 c0       	rjmp	.+16     	; 0x274e <__fp_splitA+0x30>
    273e:	16 16       	cp	r1, r22
    2740:	17 06       	cpc	r1, r23
    2742:	18 06       	cpc	r1, r24
    2744:	99 1f       	adc	r25, r25
    2746:	f1 cf       	rjmp	.-30     	; 0x272a <__fp_splitA+0xc>
    2748:	86 95       	lsr	r24
    274a:	71 05       	cpc	r23, r1
    274c:	61 05       	cpc	r22, r1
    274e:	08 94       	sec
    2750:	08 95       	ret

00002752 <__fp_zero>:
    2752:	e8 94       	clt

00002754 <__fp_szero>:
    2754:	bb 27       	eor	r27, r27
    2756:	66 27       	eor	r22, r22
    2758:	77 27       	eor	r23, r23
    275a:	cb 01       	movw	r24, r22
    275c:	97 f9       	bld	r25, 7
    275e:	08 95       	ret

00002760 <__mulsf3>:
    2760:	0e 94 c3 13 	call	0x2786	; 0x2786 <__mulsf3x>
    2764:	0c 94 76 13 	jmp	0x26ec	; 0x26ec <__fp_round>
    2768:	0e 94 68 13 	call	0x26d0	; 0x26d0 <__fp_pscA>
    276c:	38 f0       	brcs	.+14     	; 0x277c <__mulsf3+0x1c>
    276e:	0e 94 6f 13 	call	0x26de	; 0x26de <__fp_pscB>
    2772:	20 f0       	brcs	.+8      	; 0x277c <__mulsf3+0x1c>
    2774:	95 23       	and	r25, r21
    2776:	11 f0       	breq	.+4      	; 0x277c <__mulsf3+0x1c>
    2778:	0c 94 5f 13 	jmp	0x26be	; 0x26be <__fp_inf>
    277c:	0c 94 65 13 	jmp	0x26ca	; 0x26ca <__fp_nan>
    2780:	11 24       	eor	r1, r1
    2782:	0c 94 aa 13 	jmp	0x2754	; 0x2754 <__fp_szero>

00002786 <__mulsf3x>:
    2786:	0e 94 87 13 	call	0x270e	; 0x270e <__fp_split3>
    278a:	70 f3       	brcs	.-36     	; 0x2768 <__mulsf3+0x8>

0000278c <__mulsf3_pse>:
    278c:	95 9f       	mul	r25, r21
    278e:	c1 f3       	breq	.-16     	; 0x2780 <__mulsf3+0x20>
    2790:	95 0f       	add	r25, r21
    2792:	50 e0       	ldi	r21, 0x00	; 0
    2794:	55 1f       	adc	r21, r21
    2796:	62 9f       	mul	r22, r18
    2798:	f0 01       	movw	r30, r0
    279a:	72 9f       	mul	r23, r18
    279c:	bb 27       	eor	r27, r27
    279e:	f0 0d       	add	r31, r0
    27a0:	b1 1d       	adc	r27, r1
    27a2:	63 9f       	mul	r22, r19
    27a4:	aa 27       	eor	r26, r26
    27a6:	f0 0d       	add	r31, r0
    27a8:	b1 1d       	adc	r27, r1
    27aa:	aa 1f       	adc	r26, r26
    27ac:	64 9f       	mul	r22, r20
    27ae:	66 27       	eor	r22, r22
    27b0:	b0 0d       	add	r27, r0
    27b2:	a1 1d       	adc	r26, r1
    27b4:	66 1f       	adc	r22, r22
    27b6:	82 9f       	mul	r24, r18
    27b8:	22 27       	eor	r18, r18
    27ba:	b0 0d       	add	r27, r0
    27bc:	a1 1d       	adc	r26, r1
    27be:	62 1f       	adc	r22, r18
    27c0:	73 9f       	mul	r23, r19
    27c2:	b0 0d       	add	r27, r0
    27c4:	a1 1d       	adc	r26, r1
    27c6:	62 1f       	adc	r22, r18
    27c8:	83 9f       	mul	r24, r19
    27ca:	a0 0d       	add	r26, r0
    27cc:	61 1d       	adc	r22, r1
    27ce:	22 1f       	adc	r18, r18
    27d0:	74 9f       	mul	r23, r20
    27d2:	33 27       	eor	r19, r19
    27d4:	a0 0d       	add	r26, r0
    27d6:	61 1d       	adc	r22, r1
    27d8:	23 1f       	adc	r18, r19
    27da:	84 9f       	mul	r24, r20
    27dc:	60 0d       	add	r22, r0
    27de:	21 1d       	adc	r18, r1
    27e0:	82 2f       	mov	r24, r18
    27e2:	76 2f       	mov	r23, r22
    27e4:	6a 2f       	mov	r22, r26
    27e6:	11 24       	eor	r1, r1
    27e8:	9f 57       	subi	r25, 0x7F	; 127
    27ea:	50 40       	sbci	r21, 0x00	; 0
    27ec:	9a f0       	brmi	.+38     	; 0x2814 <__mulsf3_pse+0x88>
    27ee:	f1 f0       	breq	.+60     	; 0x282c <__mulsf3_pse+0xa0>
    27f0:	88 23       	and	r24, r24
    27f2:	4a f0       	brmi	.+18     	; 0x2806 <__mulsf3_pse+0x7a>
    27f4:	ee 0f       	add	r30, r30
    27f6:	ff 1f       	adc	r31, r31
    27f8:	bb 1f       	adc	r27, r27
    27fa:	66 1f       	adc	r22, r22
    27fc:	77 1f       	adc	r23, r23
    27fe:	88 1f       	adc	r24, r24
    2800:	91 50       	subi	r25, 0x01	; 1
    2802:	50 40       	sbci	r21, 0x00	; 0
    2804:	a9 f7       	brne	.-22     	; 0x27f0 <__mulsf3_pse+0x64>
    2806:	9e 3f       	cpi	r25, 0xFE	; 254
    2808:	51 05       	cpc	r21, r1
    280a:	80 f0       	brcs	.+32     	; 0x282c <__mulsf3_pse+0xa0>
    280c:	0c 94 5f 13 	jmp	0x26be	; 0x26be <__fp_inf>
    2810:	0c 94 aa 13 	jmp	0x2754	; 0x2754 <__fp_szero>
    2814:	5f 3f       	cpi	r21, 0xFF	; 255
    2816:	e4 f3       	brlt	.-8      	; 0x2810 <__mulsf3_pse+0x84>
    2818:	98 3e       	cpi	r25, 0xE8	; 232
    281a:	d4 f3       	brlt	.-12     	; 0x2810 <__mulsf3_pse+0x84>
    281c:	86 95       	lsr	r24
    281e:	77 95       	ror	r23
    2820:	67 95       	ror	r22
    2822:	b7 95       	ror	r27
    2824:	f7 95       	ror	r31
    2826:	e7 95       	ror	r30
    2828:	9f 5f       	subi	r25, 0xFF	; 255
    282a:	c1 f7       	brne	.-16     	; 0x281c <__mulsf3_pse+0x90>
    282c:	fe 2b       	or	r31, r30
    282e:	88 0f       	add	r24, r24
    2830:	91 1d       	adc	r25, r1
    2832:	96 95       	lsr	r25
    2834:	87 95       	ror	r24
    2836:	97 f9       	bld	r25, 7
    2838:	08 95       	ret

0000283a <memcmp>:
    283a:	fb 01       	movw	r30, r22
    283c:	dc 01       	movw	r26, r24
    283e:	04 c0       	rjmp	.+8      	; 0x2848 <memcmp+0xe>
    2840:	8d 91       	ld	r24, X+
    2842:	01 90       	ld	r0, Z+
    2844:	80 19       	sub	r24, r0
    2846:	21 f4       	brne	.+8      	; 0x2850 <memcmp+0x16>
    2848:	41 50       	subi	r20, 0x01	; 1
    284a:	50 40       	sbci	r21, 0x00	; 0
    284c:	c8 f7       	brcc	.-14     	; 0x2840 <memcmp+0x6>
    284e:	88 1b       	sub	r24, r24
    2850:	99 0b       	sbc	r25, r25
    2852:	08 95       	ret

00002854 <strncpy>:
    2854:	fb 01       	movw	r30, r22
    2856:	dc 01       	movw	r26, r24
    2858:	41 50       	subi	r20, 0x01	; 1
    285a:	50 40       	sbci	r21, 0x00	; 0
    285c:	48 f0       	brcs	.+18     	; 0x2870 <strncpy+0x1c>
    285e:	01 90       	ld	r0, Z+
    2860:	0d 92       	st	X+, r0
    2862:	00 20       	and	r0, r0
    2864:	c9 f7       	brne	.-14     	; 0x2858 <strncpy+0x4>
    2866:	01 c0       	rjmp	.+2      	; 0x286a <strncpy+0x16>
    2868:	1d 92       	st	X+, r1
    286a:	41 50       	subi	r20, 0x01	; 1
    286c:	50 40       	sbci	r21, 0x00	; 0
    286e:	e0 f7       	brcc	.-8      	; 0x2868 <strncpy+0x14>
    2870:	08 95       	ret

00002872 <vsnprintf>:
    2872:	ae e0       	ldi	r26, 0x0E	; 14
    2874:	b0 e0       	ldi	r27, 0x00	; 0
    2876:	ef e3       	ldi	r30, 0x3F	; 63
    2878:	f4 e1       	ldi	r31, 0x14	; 20
    287a:	0c 94 04 17 	jmp	0x2e08	; 0x2e08 <__prologue_saves__+0x1c>
    287e:	8c 01       	movw	r16, r24
    2880:	fa 01       	movw	r30, r20
    2882:	86 e0       	ldi	r24, 0x06	; 6
    2884:	8c 83       	std	Y+4, r24	; 0x04
    2886:	09 83       	std	Y+1, r16	; 0x01
    2888:	1a 83       	std	Y+2, r17	; 0x02
    288a:	77 ff       	sbrs	r23, 7
    288c:	02 c0       	rjmp	.+4      	; 0x2892 <vsnprintf+0x20>
    288e:	60 e0       	ldi	r22, 0x00	; 0
    2890:	70 e8       	ldi	r23, 0x80	; 128
    2892:	cb 01       	movw	r24, r22
    2894:	01 97       	sbiw	r24, 0x01	; 1
    2896:	8d 83       	std	Y+5, r24	; 0x05
    2898:	9e 83       	std	Y+6, r25	; 0x06
    289a:	a9 01       	movw	r20, r18
    289c:	bf 01       	movw	r22, r30
    289e:	ce 01       	movw	r24, r28
    28a0:	01 96       	adiw	r24, 0x01	; 1
    28a2:	0e 94 65 14 	call	0x28ca	; 0x28ca <vfprintf>
    28a6:	4d 81       	ldd	r20, Y+5	; 0x05
    28a8:	5e 81       	ldd	r21, Y+6	; 0x06
    28aa:	57 fd       	sbrc	r21, 7
    28ac:	0a c0       	rjmp	.+20     	; 0x28c2 <vsnprintf+0x50>
    28ae:	2f 81       	ldd	r18, Y+7	; 0x07
    28b0:	38 85       	ldd	r19, Y+8	; 0x08
    28b2:	42 17       	cp	r20, r18
    28b4:	53 07       	cpc	r21, r19
    28b6:	0c f4       	brge	.+2      	; 0x28ba <vsnprintf+0x48>
    28b8:	9a 01       	movw	r18, r20
    28ba:	f8 01       	movw	r30, r16
    28bc:	e2 0f       	add	r30, r18
    28be:	f3 1f       	adc	r31, r19
    28c0:	10 82       	st	Z, r1
    28c2:	2e 96       	adiw	r28, 0x0e	; 14
    28c4:	e4 e0       	ldi	r30, 0x04	; 4
    28c6:	0c 94 1d 17 	jmp	0x2e3a	; 0x2e3a <__epilogue_restores__+0x1c>

000028ca <vfprintf>:
    28ca:	ab e0       	ldi	r26, 0x0B	; 11
    28cc:	b0 e0       	ldi	r27, 0x00	; 0
    28ce:	eb e6       	ldi	r30, 0x6B	; 107
    28d0:	f4 e1       	ldi	r31, 0x14	; 20
    28d2:	0c 94 f6 16 	jmp	0x2dec	; 0x2dec <__prologue_saves__>
    28d6:	6c 01       	movw	r12, r24
    28d8:	7b 01       	movw	r14, r22
    28da:	8a 01       	movw	r16, r20
    28dc:	fc 01       	movw	r30, r24
    28de:	16 82       	std	Z+6, r1	; 0x06
    28e0:	17 82       	std	Z+7, r1	; 0x07
    28e2:	83 81       	ldd	r24, Z+3	; 0x03
    28e4:	81 ff       	sbrs	r24, 1
    28e6:	cc c1       	rjmp	.+920    	; 0x2c80 <vfprintf+0x3b6>
    28e8:	ce 01       	movw	r24, r28
    28ea:	01 96       	adiw	r24, 0x01	; 1
    28ec:	3c 01       	movw	r6, r24
    28ee:	f6 01       	movw	r30, r12
    28f0:	93 81       	ldd	r25, Z+3	; 0x03
    28f2:	f7 01       	movw	r30, r14
    28f4:	93 fd       	sbrc	r25, 3
    28f6:	85 91       	lpm	r24, Z+
    28f8:	93 ff       	sbrs	r25, 3
    28fa:	81 91       	ld	r24, Z+
    28fc:	7f 01       	movw	r14, r30
    28fe:	88 23       	and	r24, r24
    2900:	09 f4       	brne	.+2      	; 0x2904 <vfprintf+0x3a>
    2902:	ba c1       	rjmp	.+884    	; 0x2c78 <vfprintf+0x3ae>
    2904:	85 32       	cpi	r24, 0x25	; 37
    2906:	39 f4       	brne	.+14     	; 0x2916 <vfprintf+0x4c>
    2908:	93 fd       	sbrc	r25, 3
    290a:	85 91       	lpm	r24, Z+
    290c:	93 ff       	sbrs	r25, 3
    290e:	81 91       	ld	r24, Z+
    2910:	7f 01       	movw	r14, r30
    2912:	85 32       	cpi	r24, 0x25	; 37
    2914:	29 f4       	brne	.+10     	; 0x2920 <vfprintf+0x56>
    2916:	b6 01       	movw	r22, r12
    2918:	90 e0       	ldi	r25, 0x00	; 0
    291a:	0e 94 5c 16 	call	0x2cb8	; 0x2cb8 <fputc>
    291e:	e7 cf       	rjmp	.-50     	; 0x28ee <vfprintf+0x24>
    2920:	91 2c       	mov	r9, r1
    2922:	21 2c       	mov	r2, r1
    2924:	31 2c       	mov	r3, r1
    2926:	ff e1       	ldi	r31, 0x1F	; 31
    2928:	f3 15       	cp	r31, r3
    292a:	d8 f0       	brcs	.+54     	; 0x2962 <vfprintf+0x98>
    292c:	8b 32       	cpi	r24, 0x2B	; 43
    292e:	79 f0       	breq	.+30     	; 0x294e <vfprintf+0x84>
    2930:	38 f4       	brcc	.+14     	; 0x2940 <vfprintf+0x76>
    2932:	80 32       	cpi	r24, 0x20	; 32
    2934:	79 f0       	breq	.+30     	; 0x2954 <vfprintf+0x8a>
    2936:	83 32       	cpi	r24, 0x23	; 35
    2938:	a1 f4       	brne	.+40     	; 0x2962 <vfprintf+0x98>
    293a:	23 2d       	mov	r18, r3
    293c:	20 61       	ori	r18, 0x10	; 16
    293e:	1d c0       	rjmp	.+58     	; 0x297a <vfprintf+0xb0>
    2940:	8d 32       	cpi	r24, 0x2D	; 45
    2942:	61 f0       	breq	.+24     	; 0x295c <vfprintf+0x92>
    2944:	80 33       	cpi	r24, 0x30	; 48
    2946:	69 f4       	brne	.+26     	; 0x2962 <vfprintf+0x98>
    2948:	23 2d       	mov	r18, r3
    294a:	21 60       	ori	r18, 0x01	; 1
    294c:	16 c0       	rjmp	.+44     	; 0x297a <vfprintf+0xb0>
    294e:	83 2d       	mov	r24, r3
    2950:	82 60       	ori	r24, 0x02	; 2
    2952:	38 2e       	mov	r3, r24
    2954:	e3 2d       	mov	r30, r3
    2956:	e4 60       	ori	r30, 0x04	; 4
    2958:	3e 2e       	mov	r3, r30
    295a:	2a c0       	rjmp	.+84     	; 0x29b0 <vfprintf+0xe6>
    295c:	f3 2d       	mov	r31, r3
    295e:	f8 60       	ori	r31, 0x08	; 8
    2960:	1d c0       	rjmp	.+58     	; 0x299c <vfprintf+0xd2>
    2962:	37 fc       	sbrc	r3, 7
    2964:	2d c0       	rjmp	.+90     	; 0x29c0 <vfprintf+0xf6>
    2966:	20 ed       	ldi	r18, 0xD0	; 208
    2968:	28 0f       	add	r18, r24
    296a:	2a 30       	cpi	r18, 0x0A	; 10
    296c:	40 f0       	brcs	.+16     	; 0x297e <vfprintf+0xb4>
    296e:	8e 32       	cpi	r24, 0x2E	; 46
    2970:	b9 f4       	brne	.+46     	; 0x29a0 <vfprintf+0xd6>
    2972:	36 fc       	sbrc	r3, 6
    2974:	81 c1       	rjmp	.+770    	; 0x2c78 <vfprintf+0x3ae>
    2976:	23 2d       	mov	r18, r3
    2978:	20 64       	ori	r18, 0x40	; 64
    297a:	32 2e       	mov	r3, r18
    297c:	19 c0       	rjmp	.+50     	; 0x29b0 <vfprintf+0xe6>
    297e:	36 fe       	sbrs	r3, 6
    2980:	06 c0       	rjmp	.+12     	; 0x298e <vfprintf+0xc4>
    2982:	8a e0       	ldi	r24, 0x0A	; 10
    2984:	98 9e       	mul	r9, r24
    2986:	20 0d       	add	r18, r0
    2988:	11 24       	eor	r1, r1
    298a:	92 2e       	mov	r9, r18
    298c:	11 c0       	rjmp	.+34     	; 0x29b0 <vfprintf+0xe6>
    298e:	ea e0       	ldi	r30, 0x0A	; 10
    2990:	2e 9e       	mul	r2, r30
    2992:	20 0d       	add	r18, r0
    2994:	11 24       	eor	r1, r1
    2996:	22 2e       	mov	r2, r18
    2998:	f3 2d       	mov	r31, r3
    299a:	f0 62       	ori	r31, 0x20	; 32
    299c:	3f 2e       	mov	r3, r31
    299e:	08 c0       	rjmp	.+16     	; 0x29b0 <vfprintf+0xe6>
    29a0:	8c 36       	cpi	r24, 0x6C	; 108
    29a2:	21 f4       	brne	.+8      	; 0x29ac <vfprintf+0xe2>
    29a4:	83 2d       	mov	r24, r3
    29a6:	80 68       	ori	r24, 0x80	; 128
    29a8:	38 2e       	mov	r3, r24
    29aa:	02 c0       	rjmp	.+4      	; 0x29b0 <vfprintf+0xe6>
    29ac:	88 36       	cpi	r24, 0x68	; 104
    29ae:	41 f4       	brne	.+16     	; 0x29c0 <vfprintf+0xf6>
    29b0:	f7 01       	movw	r30, r14
    29b2:	93 fd       	sbrc	r25, 3
    29b4:	85 91       	lpm	r24, Z+
    29b6:	93 ff       	sbrs	r25, 3
    29b8:	81 91       	ld	r24, Z+
    29ba:	7f 01       	movw	r14, r30
    29bc:	81 11       	cpse	r24, r1
    29be:	b3 cf       	rjmp	.-154    	; 0x2926 <vfprintf+0x5c>
    29c0:	98 2f       	mov	r25, r24
    29c2:	9f 7d       	andi	r25, 0xDF	; 223
    29c4:	95 54       	subi	r25, 0x45	; 69
    29c6:	93 30       	cpi	r25, 0x03	; 3
    29c8:	28 f4       	brcc	.+10     	; 0x29d4 <vfprintf+0x10a>
    29ca:	0c 5f       	subi	r16, 0xFC	; 252
    29cc:	1f 4f       	sbci	r17, 0xFF	; 255
    29ce:	9f e3       	ldi	r25, 0x3F	; 63
    29d0:	99 83       	std	Y+1, r25	; 0x01
    29d2:	0d c0       	rjmp	.+26     	; 0x29ee <vfprintf+0x124>
    29d4:	83 36       	cpi	r24, 0x63	; 99
    29d6:	31 f0       	breq	.+12     	; 0x29e4 <vfprintf+0x11a>
    29d8:	83 37       	cpi	r24, 0x73	; 115
    29da:	71 f0       	breq	.+28     	; 0x29f8 <vfprintf+0x12e>
    29dc:	83 35       	cpi	r24, 0x53	; 83
    29de:	09 f0       	breq	.+2      	; 0x29e2 <vfprintf+0x118>
    29e0:	59 c0       	rjmp	.+178    	; 0x2a94 <vfprintf+0x1ca>
    29e2:	21 c0       	rjmp	.+66     	; 0x2a26 <vfprintf+0x15c>
    29e4:	f8 01       	movw	r30, r16
    29e6:	80 81       	ld	r24, Z
    29e8:	89 83       	std	Y+1, r24	; 0x01
    29ea:	0e 5f       	subi	r16, 0xFE	; 254
    29ec:	1f 4f       	sbci	r17, 0xFF	; 255
    29ee:	88 24       	eor	r8, r8
    29f0:	83 94       	inc	r8
    29f2:	91 2c       	mov	r9, r1
    29f4:	53 01       	movw	r10, r6
    29f6:	13 c0       	rjmp	.+38     	; 0x2a1e <vfprintf+0x154>
    29f8:	28 01       	movw	r4, r16
    29fa:	f2 e0       	ldi	r31, 0x02	; 2
    29fc:	4f 0e       	add	r4, r31
    29fe:	51 1c       	adc	r5, r1
    2a00:	f8 01       	movw	r30, r16
    2a02:	a0 80       	ld	r10, Z
    2a04:	b1 80       	ldd	r11, Z+1	; 0x01
    2a06:	36 fe       	sbrs	r3, 6
    2a08:	03 c0       	rjmp	.+6      	; 0x2a10 <vfprintf+0x146>
    2a0a:	69 2d       	mov	r22, r9
    2a0c:	70 e0       	ldi	r23, 0x00	; 0
    2a0e:	02 c0       	rjmp	.+4      	; 0x2a14 <vfprintf+0x14a>
    2a10:	6f ef       	ldi	r22, 0xFF	; 255
    2a12:	7f ef       	ldi	r23, 0xFF	; 255
    2a14:	c5 01       	movw	r24, r10
    2a16:	0e 94 51 16 	call	0x2ca2	; 0x2ca2 <strnlen>
    2a1a:	4c 01       	movw	r8, r24
    2a1c:	82 01       	movw	r16, r4
    2a1e:	f3 2d       	mov	r31, r3
    2a20:	ff 77       	andi	r31, 0x7F	; 127
    2a22:	3f 2e       	mov	r3, r31
    2a24:	16 c0       	rjmp	.+44     	; 0x2a52 <vfprintf+0x188>
    2a26:	28 01       	movw	r4, r16
    2a28:	22 e0       	ldi	r18, 0x02	; 2
    2a2a:	42 0e       	add	r4, r18
    2a2c:	51 1c       	adc	r5, r1
    2a2e:	f8 01       	movw	r30, r16
    2a30:	a0 80       	ld	r10, Z
    2a32:	b1 80       	ldd	r11, Z+1	; 0x01
    2a34:	36 fe       	sbrs	r3, 6
    2a36:	03 c0       	rjmp	.+6      	; 0x2a3e <vfprintf+0x174>
    2a38:	69 2d       	mov	r22, r9
    2a3a:	70 e0       	ldi	r23, 0x00	; 0
    2a3c:	02 c0       	rjmp	.+4      	; 0x2a42 <vfprintf+0x178>
    2a3e:	6f ef       	ldi	r22, 0xFF	; 255
    2a40:	7f ef       	ldi	r23, 0xFF	; 255
    2a42:	c5 01       	movw	r24, r10
    2a44:	0e 94 46 16 	call	0x2c8c	; 0x2c8c <strnlen_P>
    2a48:	4c 01       	movw	r8, r24
    2a4a:	f3 2d       	mov	r31, r3
    2a4c:	f0 68       	ori	r31, 0x80	; 128
    2a4e:	3f 2e       	mov	r3, r31
    2a50:	82 01       	movw	r16, r4
    2a52:	33 fc       	sbrc	r3, 3
    2a54:	1b c0       	rjmp	.+54     	; 0x2a8c <vfprintf+0x1c2>
    2a56:	82 2d       	mov	r24, r2
    2a58:	90 e0       	ldi	r25, 0x00	; 0
    2a5a:	88 16       	cp	r8, r24
    2a5c:	99 06       	cpc	r9, r25
    2a5e:	b0 f4       	brcc	.+44     	; 0x2a8c <vfprintf+0x1c2>
    2a60:	b6 01       	movw	r22, r12
    2a62:	80 e2       	ldi	r24, 0x20	; 32
    2a64:	90 e0       	ldi	r25, 0x00	; 0
    2a66:	0e 94 5c 16 	call	0x2cb8	; 0x2cb8 <fputc>
    2a6a:	2a 94       	dec	r2
    2a6c:	f4 cf       	rjmp	.-24     	; 0x2a56 <vfprintf+0x18c>
    2a6e:	f5 01       	movw	r30, r10
    2a70:	37 fc       	sbrc	r3, 7
    2a72:	85 91       	lpm	r24, Z+
    2a74:	37 fe       	sbrs	r3, 7
    2a76:	81 91       	ld	r24, Z+
    2a78:	5f 01       	movw	r10, r30
    2a7a:	b6 01       	movw	r22, r12
    2a7c:	90 e0       	ldi	r25, 0x00	; 0
    2a7e:	0e 94 5c 16 	call	0x2cb8	; 0x2cb8 <fputc>
    2a82:	21 10       	cpse	r2, r1
    2a84:	2a 94       	dec	r2
    2a86:	21 e0       	ldi	r18, 0x01	; 1
    2a88:	82 1a       	sub	r8, r18
    2a8a:	91 08       	sbc	r9, r1
    2a8c:	81 14       	cp	r8, r1
    2a8e:	91 04       	cpc	r9, r1
    2a90:	71 f7       	brne	.-36     	; 0x2a6e <vfprintf+0x1a4>
    2a92:	e8 c0       	rjmp	.+464    	; 0x2c64 <vfprintf+0x39a>
    2a94:	84 36       	cpi	r24, 0x64	; 100
    2a96:	11 f0       	breq	.+4      	; 0x2a9c <vfprintf+0x1d2>
    2a98:	89 36       	cpi	r24, 0x69	; 105
    2a9a:	41 f5       	brne	.+80     	; 0x2aec <vfprintf+0x222>
    2a9c:	f8 01       	movw	r30, r16
    2a9e:	37 fe       	sbrs	r3, 7
    2aa0:	07 c0       	rjmp	.+14     	; 0x2ab0 <vfprintf+0x1e6>
    2aa2:	60 81       	ld	r22, Z
    2aa4:	71 81       	ldd	r23, Z+1	; 0x01
    2aa6:	82 81       	ldd	r24, Z+2	; 0x02
    2aa8:	93 81       	ldd	r25, Z+3	; 0x03
    2aaa:	0c 5f       	subi	r16, 0xFC	; 252
    2aac:	1f 4f       	sbci	r17, 0xFF	; 255
    2aae:	08 c0       	rjmp	.+16     	; 0x2ac0 <vfprintf+0x1f6>
    2ab0:	60 81       	ld	r22, Z
    2ab2:	71 81       	ldd	r23, Z+1	; 0x01
    2ab4:	07 2e       	mov	r0, r23
    2ab6:	00 0c       	add	r0, r0
    2ab8:	88 0b       	sbc	r24, r24
    2aba:	99 0b       	sbc	r25, r25
    2abc:	0e 5f       	subi	r16, 0xFE	; 254
    2abe:	1f 4f       	sbci	r17, 0xFF	; 255
    2ac0:	f3 2d       	mov	r31, r3
    2ac2:	ff 76       	andi	r31, 0x6F	; 111
    2ac4:	3f 2e       	mov	r3, r31
    2ac6:	97 ff       	sbrs	r25, 7
    2ac8:	09 c0       	rjmp	.+18     	; 0x2adc <vfprintf+0x212>
    2aca:	90 95       	com	r25
    2acc:	80 95       	com	r24
    2ace:	70 95       	com	r23
    2ad0:	61 95       	neg	r22
    2ad2:	7f 4f       	sbci	r23, 0xFF	; 255
    2ad4:	8f 4f       	sbci	r24, 0xFF	; 255
    2ad6:	9f 4f       	sbci	r25, 0xFF	; 255
    2ad8:	f0 68       	ori	r31, 0x80	; 128
    2ada:	3f 2e       	mov	r3, r31
    2adc:	2a e0       	ldi	r18, 0x0A	; 10
    2ade:	30 e0       	ldi	r19, 0x00	; 0
    2ae0:	a3 01       	movw	r20, r6
    2ae2:	0e 94 98 16 	call	0x2d30	; 0x2d30 <__ultoa_invert>
    2ae6:	88 2e       	mov	r8, r24
    2ae8:	86 18       	sub	r8, r6
    2aea:	45 c0       	rjmp	.+138    	; 0x2b76 <vfprintf+0x2ac>
    2aec:	85 37       	cpi	r24, 0x75	; 117
    2aee:	31 f4       	brne	.+12     	; 0x2afc <vfprintf+0x232>
    2af0:	23 2d       	mov	r18, r3
    2af2:	2f 7e       	andi	r18, 0xEF	; 239
    2af4:	b2 2e       	mov	r11, r18
    2af6:	2a e0       	ldi	r18, 0x0A	; 10
    2af8:	30 e0       	ldi	r19, 0x00	; 0
    2afa:	25 c0       	rjmp	.+74     	; 0x2b46 <vfprintf+0x27c>
    2afc:	93 2d       	mov	r25, r3
    2afe:	99 7f       	andi	r25, 0xF9	; 249
    2b00:	b9 2e       	mov	r11, r25
    2b02:	8f 36       	cpi	r24, 0x6F	; 111
    2b04:	c1 f0       	breq	.+48     	; 0x2b36 <vfprintf+0x26c>
    2b06:	18 f4       	brcc	.+6      	; 0x2b0e <vfprintf+0x244>
    2b08:	88 35       	cpi	r24, 0x58	; 88
    2b0a:	79 f0       	breq	.+30     	; 0x2b2a <vfprintf+0x260>
    2b0c:	b5 c0       	rjmp	.+362    	; 0x2c78 <vfprintf+0x3ae>
    2b0e:	80 37       	cpi	r24, 0x70	; 112
    2b10:	19 f0       	breq	.+6      	; 0x2b18 <vfprintf+0x24e>
    2b12:	88 37       	cpi	r24, 0x78	; 120
    2b14:	21 f0       	breq	.+8      	; 0x2b1e <vfprintf+0x254>
    2b16:	b0 c0       	rjmp	.+352    	; 0x2c78 <vfprintf+0x3ae>
    2b18:	e9 2f       	mov	r30, r25
    2b1a:	e0 61       	ori	r30, 0x10	; 16
    2b1c:	be 2e       	mov	r11, r30
    2b1e:	b4 fe       	sbrs	r11, 4
    2b20:	0d c0       	rjmp	.+26     	; 0x2b3c <vfprintf+0x272>
    2b22:	fb 2d       	mov	r31, r11
    2b24:	f4 60       	ori	r31, 0x04	; 4
    2b26:	bf 2e       	mov	r11, r31
    2b28:	09 c0       	rjmp	.+18     	; 0x2b3c <vfprintf+0x272>
    2b2a:	34 fe       	sbrs	r3, 4
    2b2c:	0a c0       	rjmp	.+20     	; 0x2b42 <vfprintf+0x278>
    2b2e:	29 2f       	mov	r18, r25
    2b30:	26 60       	ori	r18, 0x06	; 6
    2b32:	b2 2e       	mov	r11, r18
    2b34:	06 c0       	rjmp	.+12     	; 0x2b42 <vfprintf+0x278>
    2b36:	28 e0       	ldi	r18, 0x08	; 8
    2b38:	30 e0       	ldi	r19, 0x00	; 0
    2b3a:	05 c0       	rjmp	.+10     	; 0x2b46 <vfprintf+0x27c>
    2b3c:	20 e1       	ldi	r18, 0x10	; 16
    2b3e:	30 e0       	ldi	r19, 0x00	; 0
    2b40:	02 c0       	rjmp	.+4      	; 0x2b46 <vfprintf+0x27c>
    2b42:	20 e1       	ldi	r18, 0x10	; 16
    2b44:	32 e0       	ldi	r19, 0x02	; 2
    2b46:	f8 01       	movw	r30, r16
    2b48:	b7 fe       	sbrs	r11, 7
    2b4a:	07 c0       	rjmp	.+14     	; 0x2b5a <vfprintf+0x290>
    2b4c:	60 81       	ld	r22, Z
    2b4e:	71 81       	ldd	r23, Z+1	; 0x01
    2b50:	82 81       	ldd	r24, Z+2	; 0x02
    2b52:	93 81       	ldd	r25, Z+3	; 0x03
    2b54:	0c 5f       	subi	r16, 0xFC	; 252
    2b56:	1f 4f       	sbci	r17, 0xFF	; 255
    2b58:	06 c0       	rjmp	.+12     	; 0x2b66 <vfprintf+0x29c>
    2b5a:	60 81       	ld	r22, Z
    2b5c:	71 81       	ldd	r23, Z+1	; 0x01
    2b5e:	80 e0       	ldi	r24, 0x00	; 0
    2b60:	90 e0       	ldi	r25, 0x00	; 0
    2b62:	0e 5f       	subi	r16, 0xFE	; 254
    2b64:	1f 4f       	sbci	r17, 0xFF	; 255
    2b66:	a3 01       	movw	r20, r6
    2b68:	0e 94 98 16 	call	0x2d30	; 0x2d30 <__ultoa_invert>
    2b6c:	88 2e       	mov	r8, r24
    2b6e:	86 18       	sub	r8, r6
    2b70:	fb 2d       	mov	r31, r11
    2b72:	ff 77       	andi	r31, 0x7F	; 127
    2b74:	3f 2e       	mov	r3, r31
    2b76:	36 fe       	sbrs	r3, 6
    2b78:	0d c0       	rjmp	.+26     	; 0x2b94 <vfprintf+0x2ca>
    2b7a:	23 2d       	mov	r18, r3
    2b7c:	2e 7f       	andi	r18, 0xFE	; 254
    2b7e:	a2 2e       	mov	r10, r18
    2b80:	89 14       	cp	r8, r9
    2b82:	58 f4       	brcc	.+22     	; 0x2b9a <vfprintf+0x2d0>
    2b84:	34 fe       	sbrs	r3, 4
    2b86:	0b c0       	rjmp	.+22     	; 0x2b9e <vfprintf+0x2d4>
    2b88:	32 fc       	sbrc	r3, 2
    2b8a:	09 c0       	rjmp	.+18     	; 0x2b9e <vfprintf+0x2d4>
    2b8c:	83 2d       	mov	r24, r3
    2b8e:	8e 7e       	andi	r24, 0xEE	; 238
    2b90:	a8 2e       	mov	r10, r24
    2b92:	05 c0       	rjmp	.+10     	; 0x2b9e <vfprintf+0x2d4>
    2b94:	b8 2c       	mov	r11, r8
    2b96:	a3 2c       	mov	r10, r3
    2b98:	03 c0       	rjmp	.+6      	; 0x2ba0 <vfprintf+0x2d6>
    2b9a:	b8 2c       	mov	r11, r8
    2b9c:	01 c0       	rjmp	.+2      	; 0x2ba0 <vfprintf+0x2d6>
    2b9e:	b9 2c       	mov	r11, r9
    2ba0:	a4 fe       	sbrs	r10, 4
    2ba2:	0f c0       	rjmp	.+30     	; 0x2bc2 <vfprintf+0x2f8>
    2ba4:	fe 01       	movw	r30, r28
    2ba6:	e8 0d       	add	r30, r8
    2ba8:	f1 1d       	adc	r31, r1
    2baa:	80 81       	ld	r24, Z
    2bac:	80 33       	cpi	r24, 0x30	; 48
    2bae:	21 f4       	brne	.+8      	; 0x2bb8 <vfprintf+0x2ee>
    2bb0:	9a 2d       	mov	r25, r10
    2bb2:	99 7e       	andi	r25, 0xE9	; 233
    2bb4:	a9 2e       	mov	r10, r25
    2bb6:	09 c0       	rjmp	.+18     	; 0x2bca <vfprintf+0x300>
    2bb8:	a2 fe       	sbrs	r10, 2
    2bba:	06 c0       	rjmp	.+12     	; 0x2bc8 <vfprintf+0x2fe>
    2bbc:	b3 94       	inc	r11
    2bbe:	b3 94       	inc	r11
    2bc0:	04 c0       	rjmp	.+8      	; 0x2bca <vfprintf+0x300>
    2bc2:	8a 2d       	mov	r24, r10
    2bc4:	86 78       	andi	r24, 0x86	; 134
    2bc6:	09 f0       	breq	.+2      	; 0x2bca <vfprintf+0x300>
    2bc8:	b3 94       	inc	r11
    2bca:	a3 fc       	sbrc	r10, 3
    2bcc:	11 c0       	rjmp	.+34     	; 0x2bf0 <vfprintf+0x326>
    2bce:	a0 fe       	sbrs	r10, 0
    2bd0:	06 c0       	rjmp	.+12     	; 0x2bde <vfprintf+0x314>
    2bd2:	b2 14       	cp	r11, r2
    2bd4:	88 f4       	brcc	.+34     	; 0x2bf8 <vfprintf+0x32e>
    2bd6:	28 0c       	add	r2, r8
    2bd8:	92 2c       	mov	r9, r2
    2bda:	9b 18       	sub	r9, r11
    2bdc:	0e c0       	rjmp	.+28     	; 0x2bfa <vfprintf+0x330>
    2bde:	b2 14       	cp	r11, r2
    2be0:	60 f4       	brcc	.+24     	; 0x2bfa <vfprintf+0x330>
    2be2:	b6 01       	movw	r22, r12
    2be4:	80 e2       	ldi	r24, 0x20	; 32
    2be6:	90 e0       	ldi	r25, 0x00	; 0
    2be8:	0e 94 5c 16 	call	0x2cb8	; 0x2cb8 <fputc>
    2bec:	b3 94       	inc	r11
    2bee:	f7 cf       	rjmp	.-18     	; 0x2bde <vfprintf+0x314>
    2bf0:	b2 14       	cp	r11, r2
    2bf2:	18 f4       	brcc	.+6      	; 0x2bfa <vfprintf+0x330>
    2bf4:	2b 18       	sub	r2, r11
    2bf6:	02 c0       	rjmp	.+4      	; 0x2bfc <vfprintf+0x332>
    2bf8:	98 2c       	mov	r9, r8
    2bfa:	21 2c       	mov	r2, r1
    2bfc:	a4 fe       	sbrs	r10, 4
    2bfe:	10 c0       	rjmp	.+32     	; 0x2c20 <vfprintf+0x356>
    2c00:	b6 01       	movw	r22, r12
    2c02:	80 e3       	ldi	r24, 0x30	; 48
    2c04:	90 e0       	ldi	r25, 0x00	; 0
    2c06:	0e 94 5c 16 	call	0x2cb8	; 0x2cb8 <fputc>
    2c0a:	a2 fe       	sbrs	r10, 2
    2c0c:	17 c0       	rjmp	.+46     	; 0x2c3c <vfprintf+0x372>
    2c0e:	a1 fc       	sbrc	r10, 1
    2c10:	03 c0       	rjmp	.+6      	; 0x2c18 <vfprintf+0x34e>
    2c12:	88 e7       	ldi	r24, 0x78	; 120
    2c14:	90 e0       	ldi	r25, 0x00	; 0
    2c16:	02 c0       	rjmp	.+4      	; 0x2c1c <vfprintf+0x352>
    2c18:	88 e5       	ldi	r24, 0x58	; 88
    2c1a:	90 e0       	ldi	r25, 0x00	; 0
    2c1c:	b6 01       	movw	r22, r12
    2c1e:	0c c0       	rjmp	.+24     	; 0x2c38 <vfprintf+0x36e>
    2c20:	8a 2d       	mov	r24, r10
    2c22:	86 78       	andi	r24, 0x86	; 134
    2c24:	59 f0       	breq	.+22     	; 0x2c3c <vfprintf+0x372>
    2c26:	a1 fe       	sbrs	r10, 1
    2c28:	02 c0       	rjmp	.+4      	; 0x2c2e <vfprintf+0x364>
    2c2a:	8b e2       	ldi	r24, 0x2B	; 43
    2c2c:	01 c0       	rjmp	.+2      	; 0x2c30 <vfprintf+0x366>
    2c2e:	80 e2       	ldi	r24, 0x20	; 32
    2c30:	a7 fc       	sbrc	r10, 7
    2c32:	8d e2       	ldi	r24, 0x2D	; 45
    2c34:	b6 01       	movw	r22, r12
    2c36:	90 e0       	ldi	r25, 0x00	; 0
    2c38:	0e 94 5c 16 	call	0x2cb8	; 0x2cb8 <fputc>
    2c3c:	89 14       	cp	r8, r9
    2c3e:	38 f4       	brcc	.+14     	; 0x2c4e <vfprintf+0x384>
    2c40:	b6 01       	movw	r22, r12
    2c42:	80 e3       	ldi	r24, 0x30	; 48
    2c44:	90 e0       	ldi	r25, 0x00	; 0
    2c46:	0e 94 5c 16 	call	0x2cb8	; 0x2cb8 <fputc>
    2c4a:	9a 94       	dec	r9
    2c4c:	f7 cf       	rjmp	.-18     	; 0x2c3c <vfprintf+0x372>
    2c4e:	8a 94       	dec	r8
    2c50:	f3 01       	movw	r30, r6
    2c52:	e8 0d       	add	r30, r8
    2c54:	f1 1d       	adc	r31, r1
    2c56:	80 81       	ld	r24, Z
    2c58:	b6 01       	movw	r22, r12
    2c5a:	90 e0       	ldi	r25, 0x00	; 0
    2c5c:	0e 94 5c 16 	call	0x2cb8	; 0x2cb8 <fputc>
    2c60:	81 10       	cpse	r8, r1
    2c62:	f5 cf       	rjmp	.-22     	; 0x2c4e <vfprintf+0x384>
    2c64:	22 20       	and	r2, r2
    2c66:	09 f4       	brne	.+2      	; 0x2c6a <vfprintf+0x3a0>
    2c68:	42 ce       	rjmp	.-892    	; 0x28ee <vfprintf+0x24>
    2c6a:	b6 01       	movw	r22, r12
    2c6c:	80 e2       	ldi	r24, 0x20	; 32
    2c6e:	90 e0       	ldi	r25, 0x00	; 0
    2c70:	0e 94 5c 16 	call	0x2cb8	; 0x2cb8 <fputc>
    2c74:	2a 94       	dec	r2
    2c76:	f6 cf       	rjmp	.-20     	; 0x2c64 <vfprintf+0x39a>
    2c78:	f6 01       	movw	r30, r12
    2c7a:	86 81       	ldd	r24, Z+6	; 0x06
    2c7c:	97 81       	ldd	r25, Z+7	; 0x07
    2c7e:	02 c0       	rjmp	.+4      	; 0x2c84 <vfprintf+0x3ba>
    2c80:	8f ef       	ldi	r24, 0xFF	; 255
    2c82:	9f ef       	ldi	r25, 0xFF	; 255
    2c84:	2b 96       	adiw	r28, 0x0b	; 11
    2c86:	e2 e1       	ldi	r30, 0x12	; 18
    2c88:	0c 94 0f 17 	jmp	0x2e1e	; 0x2e1e <__epilogue_restores__>

00002c8c <strnlen_P>:
    2c8c:	fc 01       	movw	r30, r24
    2c8e:	05 90       	lpm	r0, Z+
    2c90:	61 50       	subi	r22, 0x01	; 1
    2c92:	70 40       	sbci	r23, 0x00	; 0
    2c94:	01 10       	cpse	r0, r1
    2c96:	d8 f7       	brcc	.-10     	; 0x2c8e <strnlen_P+0x2>
    2c98:	80 95       	com	r24
    2c9a:	90 95       	com	r25
    2c9c:	8e 0f       	add	r24, r30
    2c9e:	9f 1f       	adc	r25, r31
    2ca0:	08 95       	ret

00002ca2 <strnlen>:
    2ca2:	fc 01       	movw	r30, r24
    2ca4:	61 50       	subi	r22, 0x01	; 1
    2ca6:	70 40       	sbci	r23, 0x00	; 0
    2ca8:	01 90       	ld	r0, Z+
    2caa:	01 10       	cpse	r0, r1
    2cac:	d8 f7       	brcc	.-10     	; 0x2ca4 <strnlen+0x2>
    2cae:	80 95       	com	r24
    2cb0:	90 95       	com	r25
    2cb2:	8e 0f       	add	r24, r30
    2cb4:	9f 1f       	adc	r25, r31
    2cb6:	08 95       	ret

00002cb8 <fputc>:
    2cb8:	0f 93       	push	r16
    2cba:	1f 93       	push	r17
    2cbc:	cf 93       	push	r28
    2cbe:	df 93       	push	r29
    2cc0:	fb 01       	movw	r30, r22
    2cc2:	23 81       	ldd	r18, Z+3	; 0x03
    2cc4:	21 fd       	sbrc	r18, 1
    2cc6:	03 c0       	rjmp	.+6      	; 0x2cce <fputc+0x16>
    2cc8:	8f ef       	ldi	r24, 0xFF	; 255
    2cca:	9f ef       	ldi	r25, 0xFF	; 255
    2ccc:	2c c0       	rjmp	.+88     	; 0x2d26 <fputc+0x6e>
    2cce:	22 ff       	sbrs	r18, 2
    2cd0:	16 c0       	rjmp	.+44     	; 0x2cfe <fputc+0x46>
    2cd2:	46 81       	ldd	r20, Z+6	; 0x06
    2cd4:	57 81       	ldd	r21, Z+7	; 0x07
    2cd6:	24 81       	ldd	r18, Z+4	; 0x04
    2cd8:	35 81       	ldd	r19, Z+5	; 0x05
    2cda:	42 17       	cp	r20, r18
    2cdc:	53 07       	cpc	r21, r19
    2cde:	44 f4       	brge	.+16     	; 0x2cf0 <fputc+0x38>
    2ce0:	a0 81       	ld	r26, Z
    2ce2:	b1 81       	ldd	r27, Z+1	; 0x01
    2ce4:	9d 01       	movw	r18, r26
    2ce6:	2f 5f       	subi	r18, 0xFF	; 255
    2ce8:	3f 4f       	sbci	r19, 0xFF	; 255
    2cea:	20 83       	st	Z, r18
    2cec:	31 83       	std	Z+1, r19	; 0x01
    2cee:	8c 93       	st	X, r24
    2cf0:	26 81       	ldd	r18, Z+6	; 0x06
    2cf2:	37 81       	ldd	r19, Z+7	; 0x07
    2cf4:	2f 5f       	subi	r18, 0xFF	; 255
    2cf6:	3f 4f       	sbci	r19, 0xFF	; 255
    2cf8:	26 83       	std	Z+6, r18	; 0x06
    2cfa:	37 83       	std	Z+7, r19	; 0x07
    2cfc:	14 c0       	rjmp	.+40     	; 0x2d26 <fputc+0x6e>
    2cfe:	8b 01       	movw	r16, r22
    2d00:	ec 01       	movw	r28, r24
    2d02:	fb 01       	movw	r30, r22
    2d04:	00 84       	ldd	r0, Z+8	; 0x08
    2d06:	f1 85       	ldd	r31, Z+9	; 0x09
    2d08:	e0 2d       	mov	r30, r0
    2d0a:	09 95       	icall
    2d0c:	89 2b       	or	r24, r25
    2d0e:	e1 f6       	brne	.-72     	; 0x2cc8 <fputc+0x10>
    2d10:	d8 01       	movw	r26, r16
    2d12:	16 96       	adiw	r26, 0x06	; 6
    2d14:	8d 91       	ld	r24, X+
    2d16:	9c 91       	ld	r25, X
    2d18:	17 97       	sbiw	r26, 0x07	; 7
    2d1a:	01 96       	adiw	r24, 0x01	; 1
    2d1c:	16 96       	adiw	r26, 0x06	; 6
    2d1e:	8d 93       	st	X+, r24
    2d20:	9c 93       	st	X, r25
    2d22:	17 97       	sbiw	r26, 0x07	; 7
    2d24:	ce 01       	movw	r24, r28
    2d26:	df 91       	pop	r29
    2d28:	cf 91       	pop	r28
    2d2a:	1f 91       	pop	r17
    2d2c:	0f 91       	pop	r16
    2d2e:	08 95       	ret

00002d30 <__ultoa_invert>:
    2d30:	fa 01       	movw	r30, r20
    2d32:	aa 27       	eor	r26, r26
    2d34:	28 30       	cpi	r18, 0x08	; 8
    2d36:	51 f1       	breq	.+84     	; 0x2d8c <__ultoa_invert+0x5c>
    2d38:	20 31       	cpi	r18, 0x10	; 16
    2d3a:	81 f1       	breq	.+96     	; 0x2d9c <__ultoa_invert+0x6c>
    2d3c:	e8 94       	clt
    2d3e:	6f 93       	push	r22
    2d40:	6e 7f       	andi	r22, 0xFE	; 254
    2d42:	6e 5f       	subi	r22, 0xFE	; 254
    2d44:	7f 4f       	sbci	r23, 0xFF	; 255
    2d46:	8f 4f       	sbci	r24, 0xFF	; 255
    2d48:	9f 4f       	sbci	r25, 0xFF	; 255
    2d4a:	af 4f       	sbci	r26, 0xFF	; 255
    2d4c:	b1 e0       	ldi	r27, 0x01	; 1
    2d4e:	3e d0       	rcall	.+124    	; 0x2dcc <__ultoa_invert+0x9c>
    2d50:	b4 e0       	ldi	r27, 0x04	; 4
    2d52:	3c d0       	rcall	.+120    	; 0x2dcc <__ultoa_invert+0x9c>
    2d54:	67 0f       	add	r22, r23
    2d56:	78 1f       	adc	r23, r24
    2d58:	89 1f       	adc	r24, r25
    2d5a:	9a 1f       	adc	r25, r26
    2d5c:	a1 1d       	adc	r26, r1
    2d5e:	68 0f       	add	r22, r24
    2d60:	79 1f       	adc	r23, r25
    2d62:	8a 1f       	adc	r24, r26
    2d64:	91 1d       	adc	r25, r1
    2d66:	a1 1d       	adc	r26, r1
    2d68:	6a 0f       	add	r22, r26
    2d6a:	71 1d       	adc	r23, r1
    2d6c:	81 1d       	adc	r24, r1
    2d6e:	91 1d       	adc	r25, r1
    2d70:	a1 1d       	adc	r26, r1
    2d72:	20 d0       	rcall	.+64     	; 0x2db4 <__ultoa_invert+0x84>
    2d74:	09 f4       	brne	.+2      	; 0x2d78 <__ultoa_invert+0x48>
    2d76:	68 94       	set
    2d78:	3f 91       	pop	r19
    2d7a:	2a e0       	ldi	r18, 0x0A	; 10
    2d7c:	26 9f       	mul	r18, r22
    2d7e:	11 24       	eor	r1, r1
    2d80:	30 19       	sub	r19, r0
    2d82:	30 5d       	subi	r19, 0xD0	; 208
    2d84:	31 93       	st	Z+, r19
    2d86:	de f6       	brtc	.-74     	; 0x2d3e <__ultoa_invert+0xe>
    2d88:	cf 01       	movw	r24, r30
    2d8a:	08 95       	ret
    2d8c:	46 2f       	mov	r20, r22
    2d8e:	47 70       	andi	r20, 0x07	; 7
    2d90:	40 5d       	subi	r20, 0xD0	; 208
    2d92:	41 93       	st	Z+, r20
    2d94:	b3 e0       	ldi	r27, 0x03	; 3
    2d96:	0f d0       	rcall	.+30     	; 0x2db6 <__ultoa_invert+0x86>
    2d98:	c9 f7       	brne	.-14     	; 0x2d8c <__ultoa_invert+0x5c>
    2d9a:	f6 cf       	rjmp	.-20     	; 0x2d88 <__ultoa_invert+0x58>
    2d9c:	46 2f       	mov	r20, r22
    2d9e:	4f 70       	andi	r20, 0x0F	; 15
    2da0:	40 5d       	subi	r20, 0xD0	; 208
    2da2:	4a 33       	cpi	r20, 0x3A	; 58
    2da4:	18 f0       	brcs	.+6      	; 0x2dac <__ultoa_invert+0x7c>
    2da6:	49 5d       	subi	r20, 0xD9	; 217
    2da8:	31 fd       	sbrc	r19, 1
    2daa:	40 52       	subi	r20, 0x20	; 32
    2dac:	41 93       	st	Z+, r20
    2dae:	02 d0       	rcall	.+4      	; 0x2db4 <__ultoa_invert+0x84>
    2db0:	a9 f7       	brne	.-22     	; 0x2d9c <__ultoa_invert+0x6c>
    2db2:	ea cf       	rjmp	.-44     	; 0x2d88 <__ultoa_invert+0x58>
    2db4:	b4 e0       	ldi	r27, 0x04	; 4
    2db6:	a6 95       	lsr	r26
    2db8:	97 95       	ror	r25
    2dba:	87 95       	ror	r24
    2dbc:	77 95       	ror	r23
    2dbe:	67 95       	ror	r22
    2dc0:	ba 95       	dec	r27
    2dc2:	c9 f7       	brne	.-14     	; 0x2db6 <__ultoa_invert+0x86>
    2dc4:	00 97       	sbiw	r24, 0x00	; 0
    2dc6:	61 05       	cpc	r22, r1
    2dc8:	71 05       	cpc	r23, r1
    2dca:	08 95       	ret
    2dcc:	9b 01       	movw	r18, r22
    2dce:	ac 01       	movw	r20, r24
    2dd0:	0a 2e       	mov	r0, r26
    2dd2:	06 94       	lsr	r0
    2dd4:	57 95       	ror	r21
    2dd6:	47 95       	ror	r20
    2dd8:	37 95       	ror	r19
    2dda:	27 95       	ror	r18
    2ddc:	ba 95       	dec	r27
    2dde:	c9 f7       	brne	.-14     	; 0x2dd2 <__ultoa_invert+0xa2>
    2de0:	62 0f       	add	r22, r18
    2de2:	73 1f       	adc	r23, r19
    2de4:	84 1f       	adc	r24, r20
    2de6:	95 1f       	adc	r25, r21
    2de8:	a0 1d       	adc	r26, r0
    2dea:	08 95       	ret

00002dec <__prologue_saves__>:
    2dec:	2f 92       	push	r2
    2dee:	3f 92       	push	r3
    2df0:	4f 92       	push	r4
    2df2:	5f 92       	push	r5
    2df4:	6f 92       	push	r6
    2df6:	7f 92       	push	r7
    2df8:	8f 92       	push	r8
    2dfa:	9f 92       	push	r9
    2dfc:	af 92       	push	r10
    2dfe:	bf 92       	push	r11
    2e00:	cf 92       	push	r12
    2e02:	df 92       	push	r13
    2e04:	ef 92       	push	r14
    2e06:	ff 92       	push	r15
    2e08:	0f 93       	push	r16
    2e0a:	1f 93       	push	r17
    2e0c:	cf 93       	push	r28
    2e0e:	df 93       	push	r29
    2e10:	cd b7       	in	r28, 0x3d	; 61
    2e12:	de b7       	in	r29, 0x3e	; 62
    2e14:	ca 1b       	sub	r28, r26
    2e16:	db 0b       	sbc	r29, r27
    2e18:	cd bf       	out	0x3d, r28	; 61
    2e1a:	de bf       	out	0x3e, r29	; 62
    2e1c:	09 94       	ijmp

00002e1e <__epilogue_restores__>:
    2e1e:	2a 88       	ldd	r2, Y+18	; 0x12
    2e20:	39 88       	ldd	r3, Y+17	; 0x11
    2e22:	48 88       	ldd	r4, Y+16	; 0x10
    2e24:	5f 84       	ldd	r5, Y+15	; 0x0f
    2e26:	6e 84       	ldd	r6, Y+14	; 0x0e
    2e28:	7d 84       	ldd	r7, Y+13	; 0x0d
    2e2a:	8c 84       	ldd	r8, Y+12	; 0x0c
    2e2c:	9b 84       	ldd	r9, Y+11	; 0x0b
    2e2e:	aa 84       	ldd	r10, Y+10	; 0x0a
    2e30:	b9 84       	ldd	r11, Y+9	; 0x09
    2e32:	c8 84       	ldd	r12, Y+8	; 0x08
    2e34:	df 80       	ldd	r13, Y+7	; 0x07
    2e36:	ee 80       	ldd	r14, Y+6	; 0x06
    2e38:	fd 80       	ldd	r15, Y+5	; 0x05
    2e3a:	0c 81       	ldd	r16, Y+4	; 0x04
    2e3c:	1b 81       	ldd	r17, Y+3	; 0x03
    2e3e:	aa 81       	ldd	r26, Y+2	; 0x02
    2e40:	b9 81       	ldd	r27, Y+1	; 0x01
    2e42:	ce 0f       	add	r28, r30
    2e44:	d1 1d       	adc	r29, r1
    2e46:	cd bf       	out	0x3d, r28	; 61
    2e48:	de bf       	out	0x3e, r29	; 62
    2e4a:	ed 01       	movw	r28, r26
    2e4c:	08 95       	ret

00002e4e <_exit>:
    2e4e:	f8 94       	cli

00002e50 <__stop_program>:
    2e50:	ff cf       	rjmp	.-2      	; 0x2e50 <__stop_program>
