include<vars.scad>
include<Switch.scad>
include<SwitchEnvelope.scad>
include<FlipFlop.scad>
include<FlipFlopEnvelope.scad>
include<Regulator.scad>
include<RegulatorEnvelope.scad>
include<Path.scad>

// dimensions
board_width = 420;
board_height = 800;

// part locations
reservoir = [120, 736];
regulator = [375, 707];

multiply = [200, 640];
clear = [260, 605];
count = [320, 570];
off = [380, 535];

//DigiComp_Board();
//color([0.8, 0, 0]) Parts();

module DigiComp_Board()
{
	reservoir_width = ball_radius * 35;
	reservoir_height = ball_radius * 5;

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

			// the regulator starts another ball down the track
			translate(regulator)
			{
				RegulatorEnvelope();
				Path(100, ball_radius * 25);
			}

			translate(multiply)
			{
				render() SwitchEnvelope();
				translate([0, ball_radius])
				{
					Path(-100, ball_radius * 9);
					Path(100, ball_radius * 9);
				}
			}

			translate(clear)
			{
				render() SwitchEnvelope();
				translate([0, ball_radius])
				{
					Path(-100, ball_radius * 9);
					Path(100, ball_radius * 9);
				}
			}

			translate(count)
			{
				render() SwitchEnvelope();
				translate([0, ball_radius])
				{
					Path(-100, ball_radius * 9);
					Path(100, ball_radius * 9);
				}
			}

			translate(off)
			{
				render() FlipFlopEnvelope();
				translate([0, -ball_radius])
				{
					Path(100, ball_radius * 9);
				}
			}
		}
	}
}

module Parts()
{
	translate(regulator) Regulator();

	translate(multiply) render() Switch();
	translate(clear) render() Switch();
	translate(count) render() Switch();
	translate(off) render() FlipFlop();
}