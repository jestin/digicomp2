include<vars.scad>

//Switch();

switch_width = ball_radius * 2;
switch_height = ball_radius * 4;

module Switch()
{
	pitch = 15;

	difference()
	{
		union()
		{
			intersection()
			{
				rotate([0, 0, pitch/2]) arm();
				rotate([0, 0, -pitch/2]) arm();
			}
		}

		union()
		{
			circle(switch_hole_radius);
			translate([0, ball_radius]) circle(pin_hole_radius);
		}
	}
}

module arm()
{
	translate([0, switch_height]) circle(ball_radius, center = true);
	translate([0, switch_height/2]) square([switch_width, switch_height], center=true);
	circle(ball_radius, center = true);	
}