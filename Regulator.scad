include<vars.scad>

//Regulator();

module Regulator()
{
	difference()
	{
		union()
		{
			circle(ball_radius * 2.5);
		}

		union()
		{
			// axel hole
			circle(switch_hole_radius);

			// hole for attachmentto regulator arm
			rotate([0, 0, -35]) translate([ball_radius, 0]) circle(pin_hole_radius);

			// hole for pin that restricts motion
			translate([0, -ball_radius]) circle(pin_hole_radius);

			// gap for ball
			rotate([0, 0, -45]) translate([-ball_radius * 2, 0]) circle(ball_radius * 1.2);
		}
	}
}
