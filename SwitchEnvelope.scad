include<vars.scad>
include<Switch.scad>

//Switch();
//rotate([0, 0, 45]) Switch();
//rotate([0, 0, -45]) Switch();
//%SwitchEnvelope();

module SwitchEnvelope(roomy)
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
					scale([1.35,1])
					rotate([0,0,30])
					circle(envelope_radius, $fn=3);
				}
			}

			if(roomy == 1)
			{
				circle(ball_radius * 3.5);
			}
		}

		union()
		{
			translate([0, -(envelope_radius/2) - 2]) square([envelope_radius * 2, envelope_radius - (ball_radius * 2)], center = true);
		}
	}
}