# hall-relay

This is a PCB design for a hall-effect sensor with normally-closed, high-current open-drain output.

The intended purpose is to directly control a low-voltage DC load, e.g. cupboard lighting
or it can be integrated with an alarm or building-management system as a door/window sensor.

The open-drain output is active when a magnetic field is not present, i.e. when the door is open and the magnet is away from this sensor.

## Power Supply

This relay will operate between 5V and 24V DC nominal; the absolute-maximum voltage rating is 28V.  It is not reverse-polarity protected.

It has an open-drain output capable of driving up to 1A into an inductive load (relay or solenoid)
or up to 2A into simple (LED tape) loads.

## Magnet

To shut off the relay, align a magnet pole with the OSHW (gear) logo on the non-component side of the board.

The sensor is omnipolar so it doesn't matter which way the magnet is installed.

## Installation

This sensor should be placed in a door frame with the non-component side of the board exposed to the moving item (door?) that
is to be detected.  Two screw-holes are provided for fixing, and these screws can double as magnetic latching/anchor points.

The PCB assembly must be potted in epoxy after assembly to protect it from moisture.

Connect a 5V-24V isolated plugpack to the + and - terminals.

Connect a DC load (expecting the same voltage as supplied by the plugpack) between the + and OD terminals

## License

This hardware design is (C) 2017 William Brodie-Tyrrell and is licensed under the CERN OHL; see cern_ohl_v_1_2.pdf
