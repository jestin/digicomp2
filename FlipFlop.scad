include<vars.scad>

FlipFlop();


module FlipFlop()
{
	flipflop_width = ball_radius * 2;
	flipflop_height = ball_radius * 4;

	flipflop_arm_radius = ball_radius * 2;

	difference()
	{
		union()
		{
			square([flipflop_width, flipflop_height], center=true);
			translate([0, flipflop_height/2]) circle(ball_radius);
			translate([0, -flipflop_height/2])
			{
				circle(ball_radius);

				difference()
				{
					translate([flipflop_width, 0]) circle(flipflop_arm_radius);
					translate([flipflop_width + (ball_radius * 0.5), ball_radius * 0.5]) circle(flipflop_arm_radius);
				}

				difference()
				{
					translate([-flipflop_width, 0]) circle(flipflop_arm_radius);
					translate([-(flipflop_width + (ball_radius * 0.5)), ball_radius * 0.5]) circle(flipflop_arm_radius);
				}
			}
		}

		union()
		{
		}
	}
}