include<vars.scad>
include<Switch.scad>
include<SwitchEnvelope.scad>
include<FlipFlop.scad>
include<FlipFlopEnvelope.scad>
include<Regulator.scad>
include<RegulatorEnvelope.scad>
include<Path.scad>

//DigiComp_Board();
//color([0.8, 0, 0]) Parts();

// dimensions
board_width = 420;
board_height = 800;

// part locations
reservoir = [120, 736];
regulator = [375, 707];

multiply = [200, 640];
clear = [260, 605];
count = [320, 570];

cf1 = [380, 535];

d1 = [100, 555];
d2 = [140, 605];
d3 = [180, 555];

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
				}
			}

			translate(count)
			{
				render() SwitchEnvelope();
				translate([0, ball_radius])
				{
					Path(-100, ball_radius * 9);
				}
			}

			translate(cf1)
			{
				render() FlipFlopEnvelope();
			}

			translate(d2)
			{
				render() FlipFlopEnvelope();
				translate([0, -ball_radius])
				{
					Path(100, ball_radius * 5);
					Path(-100, ball_radius * 5);
				}
			}

			translate(d1)
			{
				render() FlipFlopEnvelope();
			}

			translate(d3)
			{
				render() FlipFlopEnvelope();
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
	translate(cf1) render() FlipFlop();
	translate(d2) render() FlipFlop();
	translate(d1) render() FlipFlop();
	translate(d3) render() FlipFlop();
}