include<vars.scad>
include<FlipFlop.scad>
include<SwitchEnvelope.scad>

//FlipFlop();
//rotate([0, 0, 45]) FlipFlop();
//rotate([0, 0, -45]) FlipFlop();
//%FlipFlopEnvelope();

module FlipFlopEnvelope()
{
	envelope_radius = switch_height * 1.25;

	difference()
	{
		union()
		{
			circle(ball_radius * 3.25);
			SwitchEnvelope();
		}

		union()
		{
		}
	}
}
