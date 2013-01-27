include<vars.scad>
include<Switch.scad>

//Switch();
//%SwitchEnvelope();

module SwitchEnvelope()
{
	envelope_radius = switch_height * 1.25;

	difference()
	{
		union()
		{
			intersection()
			{
				circle(envelope_radius);

				union()
				{
					translate([0, envelope_radius/2])
					scale([1.5,1])
					rotate([0,0,30])
					circle(envelope_radius, $fn=3);
				}
			}
		}

		union()
		{
			translate([0, -envelope_radius/2]) square([envelope_radius * 2, envelope_radius - (ball_radius * 2)], center = true);
		}
	}
}