include<vars.scad>
include<Switch.scad>

//FlipFlop();

flipflop_width = ball_radius * 2;
flipflop_height = ball_radius * 4;
flipflop_arm_width = 3;
flipflop_arm_radius = ball_radius * 1.75;
flipflop_arm_offset = (flipflop_width / 2) + (flipflop_arm_radius - flipflop_arm_width) - 1.5;

module FlipFlop()
{
	union()
	{
		Switch();

		translate([0, flipflop_height/4])
		{
			flipflop_arm();
			mirror([1, 0]) flipflop_arm();
		}
	}
}

module flipflop_arm()
{
	difference()
	{
		translate([flipflop_arm_offset, 0])
		{
			intersection()
			{
				circle(flipflop_arm_radius);
				translate([-flipflop_arm_offset, -flipflop_arm_radius])
				{
					square([flipflop_arm_radius * 1.5, flipflop_arm_radius]);
				}
			}
		}
		translate([flipflop_arm_offset, 0]) circle(flipflop_arm_radius - flipflop_arm_width);
	}
}