include<vars.scad>
include<Path.scad>
include<Regulator.scad>
include<RegulatorEnvelope.scad>
include<FlipFlop.scad>
include<FlipFlopEnvelope.scad>
include<Switch.scad>
include<SwitchEnvelope.scad>

Test_Bed();
color([1, 0, 0]) Parts();

board_width = 200;
board_height = 250;

reservoir = [25, 205];
regulator = [175, 175];
flipflop = [120, 135];
switch = [80, 85];

well = [10, 10];

module Test_Bed()
{
	difference()
	{
		union()
		{
			square([board_width, board_height]);
		}

		union()
		{
			translate(reservoir) rotate(-10)
			{
				square([ball_radius * 20, ball_radius * 4]);
			}

			translate(regulator)
			{
				RegulatorEnvelope();
				Path(100, ball_radius * 6);
			}

			translate(flipflop)
			{
				FlipFlopEnvelope();
				Path(-115, ball_radius * 6);
				Path(115, ball_radius * 6);

				rotate(-115) translate([0, ball_radius * 6])
				{
					Path(-45, ball_radius * 10);
				}
			}

			translate(switch)
			{
				SwitchEnvelope();
				translate([0, ball_radius])
				{
					Path(-115, ball_radius * 6);
					rotate(-115) translate([0, ball_radius * 6])
					{
						Path(-45, ball_radius * 4);
					}

					Path(115, ball_radius * 6);
					rotate(115) translate([0, ball_radius * 6])
					{
						Path(45, ball_radius * 4);
					}
				}
			}

			translate(well)
			{
				square([180, 40]);
			}
		}
	}
}

module Parts()
{
	translate(regulator) Regulator();
	translate(flipflop) rotate() render() FlipFlop();
	translate(switch) rotate() render() Switch();
}