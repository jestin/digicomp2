include<vars.scad>
include<Regulator.scad>

//Regulator();
//%RegulatorEnvelope();

regulator_envelope_radius = regulator_radius * 1.1;

module RegulatorEnvelope()
{
	circle(regulator_envelope_radius);
}