include<vars.scad>

//Switch();

switch_width = ball_radius * 2;
switch_height = ball_radius * 4;

module Switch()
{
	difference()
	{
		union()
		{
			intersection()
			{
				arm();
				rotate([0, 0, 15]) arm();
			}
		}

		union()
		{
			circle(switch_hole_radius);
		}
	}
}

module arm()
{
	translate([0, switch_height]) circle(ball_radius, center = true);
	translate([0, switch_height/2]) square([switch_width, switch_height], center=true);
	circle(ball_radius, center = true);	
}