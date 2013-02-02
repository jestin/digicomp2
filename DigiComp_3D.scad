include<vars.scad>
include<DigiComp_Board.scad>
include<FlipFlop.scad>
include<FlipFlopEnvelope.scad>
include<Switch.scad>
include<SwitchEnvelope.scad>
include<Regulator.scad>
include<RegulatorEnvelope.scad>

linear_extrude(height = thickness) DigiComp_Board();
color([0.8, 0, 0]) linear_extrude(height = thickness)Parts();
