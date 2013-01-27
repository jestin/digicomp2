include<vars.scad>
include<Switch.scad>
include<SwitchEnvelope.scad>
include<FlipFlop.scad>
include<FlipFlopEnvelope.scad>
include<Regulator.scad>
include<RegulatorEnvelope.scad>

// dimensions
board_width = 420;
board_height = 800;

// part locations
reservoir = [150, 730];
regulator = [370, 710];

multiply = [200, 640];
clear = [260, 605];
count = [320, 570];
off = [380, 535];

//DigiComp_Board();
//color([0.8, 0, 0]) Parts();

module DigiComp_Board()
{
	reservoir_width = ball_radius * 30;
	reservoir_height = ball_radius * 4;

	difference()
	{
		union()
		{
			// board
			square([board_width, board_height]);
		}

		union()
		{
			// ball reservoir
			// this should hold around 30 balls
			translate(reservoir)
			rotate([0, 0, -5])
			{
				square([reservoir_width, reservoir_height]);
			}

			translate(regulator) RegulatorEnvelope();
			translate(multiply) SwitchEnvelope();
			translate(clear) SwitchEnvelope();
			translate(count) SwitchEnvelope();
			translate(off) FlipFlopEnvelope();
		}
	}
}

module Parts()
{
	translate(regulator) Regulator();

	translate(multiply) Switch();
	translate(clear) Switch();
	translate(count) Switch();
	translate(off) FlipFlop();
}