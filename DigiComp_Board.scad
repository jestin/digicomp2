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
board_height = 900;

// part locations
reservoir = [120, 836];
regulator = [375, 807];

multiply = [200, 740];
clear = [260, 705];
count = [320, 670];

cf1 = [380, 635];

d1 = [100, 655];
d2 = [140, 705];
d3 = [180, 655];

mq1 = [60, 605];
mq2 = [60, 555];
mq3 = [60, 505];
mqReturn = [60, 490];

m1 = [220, 605];
m2 = [220, 545];
m3 = [220, 485];
m4 = [220, 425];

a1 = [300, 560];
a2 = [300, 495];
a3 = [300, 430];
a4 = [300, 365];
a5 = [300, 300];
a6 = [300, 235];
a7 = [300, 170];

aReturn = [277, 200];

t1 = [335, 520];
t2 = [335, 455];
t3 = [335, 390];
t4 = [335, 325];
t5 = [335, 260];
t6 = [335, 195];

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
				Path(125, ball_radius * 12);
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
							Path(63, ball_radius * 11);
						}
					}
				}
			}

			translate(d3)
			{
				render() FlipFlopEnvelope();
				translate([0, -ball_radius])
				{
					Path(-110, ball_radius * 5);
				}

				translate([-ball_radius * 3, 0])
				{
					rotate(-170)
					{
						Path(0, ball_radius * 9.5);
						translate([0, ball_radius * 9.5])
						{
							Path(60, ball_radius * 6);
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

				translate([0, -10]) Path(-105, ball_radius * 22);
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
				Path(110, ball_radius * 4);
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
				render() SwitchEnvelope(1);
				rotate(-100)
				{
					Path(0, ball_radius * 5);
					translate([0, ball_radius * 5]) Path(-110, ball_radius * 5);
				}
			}

			translate(t2)
			{
				render() SwitchEnvelope(1);
				rotate(-100)
				{
					Path(0, ball_radius * 5);
					translate([0, ball_radius * 5]) Path(-110, ball_radius * 5);
				}
			}

			translate(t3)
			{
				render() SwitchEnvelope(1);
				rotate(-100)
				{
					Path(0, ball_radius * 5);
					translate([0, ball_radius * 5]) Path(-110, ball_radius * 5);
				}
			}

			translate(t4)
			{
				render() SwitchEnvelope(1);
				rotate(-100)
				{
					Path(0, ball_radius * 5);
					translate([0, ball_radius * 5]) Path(-110, ball_radius * 5);
				}
			}

			translate(t5)
			{
				render() SwitchEnvelope(1);
				rotate(-100)
				{
					Path(0, ball_radius * 5);
					translate([0, ball_radius * 5]) Path(-110, ball_radius * 5);
				}
			}

			translate(t6)
			{
				render() SwitchEnvelope(1);
				Path(-100, ball_radius * 5);
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

	translate(a1) rotate() render() FlipFlop();
	translate(a2) rotate() render() FlipFlop();
	translate(a3) rotate() render() FlipFlop();
	translate(a4) rotate() render() FlipFlop();
	translate(a5) rotate() render() FlipFlop();
	translate(a6) rotate() render() FlipFlop();
	translate(a7) rotate() render() FlipFlop();

	translate(t1) rotate(0) render() Switch();
	translate(t2) rotate(0) render() Switch();
	translate(t3) rotate(0) render() Switch();
	translate(t4) rotate(0) render() Switch();
	translate(t5) rotate(0) render() Switch();
	translate(t6) rotate(0) render() Switch();
}