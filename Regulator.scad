include<vars.scad>
include<Path.scad>

//Regulator();

regulator_radius = ball_radius * 3;

module Regulator()
{
	difference()
	{
		union()
		{
			circle(regulator_radius);
		}

		union()
		{
			// axel hole
			circle(switch_hole_radius);

			// hole for attachment to regulator arm
			rotate([0, 0, -35]) translate([ball_radius, 0]) circle(pin_hole_radius);

			// hole for pin that restricts motion
			translate([0, -ball_radius]) circle(pin_hole_radius);

			// gap for ball
			rotate([0, 0, -45]) translate([-ball_radius * 2, 0])
			{
				Path(90, ball_radius * 3);

				// ball for sizing
				%sphere(ball_radius);
			}
		}
	}
}
