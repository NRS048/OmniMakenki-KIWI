
# OmniMakenki-KIWI
A KIWI Omni drive firmware for the Malenki Nano all-in-one RX &amp; Tri-ESC platform


## Acknowledgements

 - [MarkR42](https://github.com/MarkR42) origional creator of the Malenki ESC
 - [Turnabot](https://turnabot.com/) Licensed seller & Knowledge of ESC flashing
 - [MacroBot.us Discord](https://discord.gg/SXwArmv) Tech help & Laughs
 - [Tom_Bottiglieri & Joel Johnson on ChiefDelphi](https://www.chiefdelphi.com/t/pic-kiwi-vex-robot/71688/7) Origional Equations for Kiwi Mixing


## Authors

- [@NRS048 - Nathan Story](https://github.com/NRS048)


## Version
- This program uses the base files released before 6/22/23
  - 6/22/23 - deploy
## Usage
To control you need access to three channels.
Ex. Flysky FS-i6 the right stick up/down will be your forward & backward, right stick left/right will be strafe left & right, left stick left/right will be your turn left & right

To flash new firmware, you need to connect to the SOICbite debug pads, the pinout is listed below

|pin #|usage|pin #|usage|
|-----|-----|-----|-----|
|`8`|TXDEBUG|`1`|VBAT (5V)|   
|`7`|nc|`2`|nc|
|`6`|UPDI interface|`3`|GND|
|`5`|nc|`4`|GND|

![alt text](https://github.com/NRS048/OmniMakenki-KIWI/blob/main/img/Malaxi.PNG)

Pin 8 is the top pin on the front, and pin 1 is the top pin on the back, and is indicated with a white outline, shown below.

The flashing instructions are listed in a [issue request](https://github.com/MarkR42/malenki-nano/issues/6) on the Malenki-nano Repo.

install the listed programs and libraries, and use the script [flash1616.sh](https://github.com/MarkR42/malenki-nano/blob/master/flashcmd/flash1616.sh) to flash the Malenki Nano with the bin file.

You can also compile your own code with the instructions given [here](https://github.com/MarkR42/malenki-nano/blob/master/firmware/README.md)
## Theory
The three channels of the Malenki lend well to this usage, with the addition of the third channel allowing movement in all 360 degrees.

Equations:
```
//left-Front Wheel
left = (-steering - (1.732050808)*throttle + weapon) / 3;

//Right-Front Wheel
right = (-steering + (1.732050808)*throttle + weapon) / 3;

//Back Wheel
back = (2*steering + weapon) / 3;
```
(left, right, & back are final motor outputs, but may need to be mapped to standard 1000-2000ms PWM for your usage)
- input numbers should be in the form of EX. +-100, +-400, +-1000, as long as 0=no movement
- as your numbers get bigger, it theoretically gets more accurate, but is harder to calculate
- 1.732050808 is used as a replacement to sqrt(3) in the calculations.\

## License

[GPL-3.0](https://choosealicense.com/licenses/gpl-3.0/)


## Support

For support, dm `dat_monkey06two` on discord, find him on the [MACRObot.us discord](https://discord.gg/SXwArmv)
