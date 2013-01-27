include<vars.scad>
include<Regulator.scad>

//Regulator();
//%RegulatorEnvelope();

regulator_envelope_radius = ball_radius * 2.75;

module RegulatorEnvelope()
{
	circle(regulator_envelope_radius);
}