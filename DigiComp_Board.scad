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

mq1 = [60, 505];
mq2 = [60, 455];
mq3 = [60, 405];
mqReturn = [60, 395];

m1 = [220, 505];
m2 = [220, 450];
m3 = [220, 395];
m4 = [220, 340];

a1 = [300, 460];
a2 = [300, 400];
a3 = [300, 340];
a4 = [300, 280];
a5 = [300, 220];
a6 = [300, 160];
a7 = [300, 100];

aReturn = [277, 100];

t1 = [340, 420];
t2 = [340, 360];
t3 = [340, 300];
t4 = [340, 240];
t5 = [340, 180];
t6 = [340, 120];

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
				translate([0, -ball_radius])
				{
					Path(100, ball_radius * 5);
				}

				translate([ball_radius * 2.5, 0])
				{
					rotate(-170)
					{
						Path(0, ball_radius * 17);
						translate([0, ball_radius * 17])
						{
							Path(70, ball_radius * 11);
						}
					}
				}
			}

			translate(d3)
			{
				render() FlipFlopEnvelope();
				translate([0, -ball_radius])
				{
					Path(-100, ball_radius * 5);
				}

				translate([-ball_radius * 3, 0])
				{
					rotate(-170)
					{
						Path(0, ball_radius * 9.5);
						translate([0, ball_radius * 9.5])
						{
							Path(65, ball_radius * 6);
						}
					}
				}
			}

			translate(mq1)
			{
				render() FlipFlopEnvelope();
				translate([-ball_radius* 3, -ball_radius * 2])
				{
					circle(ball_radius * 2);
				}
			}

			translate(mq2)
			{
				render() FlipFlopEnvelope();
				translate([-ball_radius* 3, -ball_radius * 2])
				{
					circle(ball_radius * 2);
				}
			}

			translate(mq3)
			{
				render() FlipFlopEnvelope();
				translate([-ball_radius* 3, -ball_radius * 2])
				{
					circle(ball_radius * 2);
				}

				translate([0, -10]) Path(-100, ball_radius * 21);
			}

			translate(mqReturn)
			{
				square([ball_radius * 6, ball_radius * 17]);
			}

			translate(m1)
			{
				render() SwitchEnvelope(1);
				Path(-100, ball_radius * 10);
			}

			translate(m2)
			{
				render() SwitchEnvelope(1);
				Path(-100, ball_radius * 10);
			}

			translate(m3)
			{
				render() SwitchEnvelope(1);
				Path(-100, ball_radius * 10);
			}

			translate(m4)
			{
				render() SwitchEnvelope(1);
				Path(-100, ball_radius * 10);
			}

			translate(a1)
			{
				render() FlipFlopEnvelope();
				Path(100, ball_radius * 4);
				Path(-100, ball_radius * 4);
			}

			translate(a2)
			{
				render() FlipFlopEnvelope();
				Path(100, ball_radius * 4);
				Path(-100, ball_radius * 4);
			}

			translate(a3)
			{
				render() FlipFlopEnvelope();
				Path(100, ball_radius * 4);
				Path(-100, ball_radius * 4);
			}

			translate(a4)
			{
				render() FlipFlopEnvelope();
				Path(100, ball_radius * 4);
				Path(-100, ball_radius * 4);
			}

			translate(a5)
			{
				render() FlipFlopEnvelope();
				Path(100, ball_radius * 4);
				Path(-100, ball_radius * 4);
			}

			translate(a6)
			{
				render() FlipFlopEnvelope();
				Path(100, ball_radius * 4);
				Path(-100, ball_radius * 4);
			}

			translate(a7)
			{
				render() FlipFlopEnvelope();
				Path(100, ball_radius * 4);
				Path(-100, ball_radius * 4);
			}

			translate(aReturn)
			{
				square([ball_radius * 7, ball_radius * 54]);
			}

			translate(t1)
			{
				render() SwitchEnvelope();
			}

			translate(t2)
			{
				render() SwitchEnvelope();
			}

			translate(t3)
			{
				render() SwitchEnvelope();
			}

			translate(t4)
			{
				render() SwitchEnvelope();
			}

			translate(t5)
			{
				render() SwitchEnvelope();
			}

			translate(t6)
			{
				render() SwitchEnvelope();
			}
		}
	}
}

module Parts()
{
	translate(regulator) rotate(0) Regulator();

	translate(multiply) rotate(0) render() Switch();
	translate(clear) rotate(0) render() Switch();
	translate(count) rotate(0) render() Switch();
	translate(cf1) rotate(0) render() FlipFlop();
	translate(d2) rotate(0) render() FlipFlop();
	translate(d1) rotate(0) render() FlipFlop();
	translate(d3) rotate(0) render() FlipFlop();
	translate(mq1) rotate(0) render() FlipFlop();
	translate(mq2) rotate(0) render() FlipFlop();
	translate(mq3) rotate(0) render() FlipFlop();
	translate(m1) rotate(0) render() Switch();
	translate(m2) rotate(0) render() Switch();
	translate(m3) rotate(0) render() Switch();
	translate(m4) rotate(0) render() Switch();
	translate(a1) rotate(0) render() FlipFlop();
	translate(a2) rotate(0) render() FlipFlop();
	translate(a3) rotate(0) render() FlipFlop();
	translate(a4) rotate(0) render() FlipFlop();
	translate(a5) rotate(0) render() FlipFlop();
	translate(a6) rotate(0) render() FlipFlop();
	translate(a7) rotate(0) render() FlipFlop();
	translate(t1) rotate(0) render() Switch();
	translate(t2) rotate(0) render() Switch();
	translate(t3) rotate(0) render() Switch();
	translate(t4) rotate(0) render() Switch();
	translate(t5) rotate(0) render() Switch();
	translate(t6) rotate(0) render() Switch();
}