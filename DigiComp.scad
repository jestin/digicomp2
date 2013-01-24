include<vars.scad>
include<DigiComp_Board.scad>
include<FlipFlop.scad>
include<Switch.scad>
include<Regulator.scad>

DigiComp_Board();

translate([0, -100, 0]) Switch();
translate([100, -100, 0]) FlipFlop();
translate([200, -100, 0]) Regulator();