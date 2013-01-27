include<vars.scad>
include<DigiComp_Board.scad>
include<FlipFlop.scad>
include<FlipFlopEnvelope.scad>
include<Switch.scad>
include<SwitchEnvelope.scad>
include<Regulator.scad>
include<RegulatorEnvelope.scad>

DigiComp_Board();
Parts();

translate([0, -100, 0])
{
	Switch();
	%SwitchEnvelope();
}

translate([150, -100, 0])
{
	FlipFlop();
	%FlipFlopEnvelope();
}

translate([300, -100, 0])
{
	Regulator();
	%RegulatorEnvelope();
}