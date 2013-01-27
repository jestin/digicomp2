include<vars.scad>

//Path(-45, ball_radius * 5);

module Path(rotation, length)
{
	rotate([0, 0, rotation])
	{
		circle(gap_radius);
		translate([-gap_radius, 0]) square([path_width, length]);
		translate([0, length]) circle(gap_radius);
	}
}