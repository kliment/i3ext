module extruder_idler_base(){
 translate([0.25,0,0]) cube([24,42,8+3]);
	
}

module extruder_idler_holes(){
 translate([12,21,0]){
  // Main cutout
  cube([11,23,25], center= true);
  // Idler shaft
  translate([-12,0,4.1+2])rotate([0,90,0])cylinder(r=4.1, h=24);
  // Screw holes
  translate([7,-16,-1])cylinder(r=2.2, h=24);
  translate([-7,-16,-1])cylinder(r=2.2, h=24);
  translate([7,16,-1])cylinder(r=2.2, h=24);
  translate([-7,16,-1])cylinder(r=2.2, h=24);
 }
}


// Idler final part
module idler(){
 difference(){
  extruder_idler_base();
  extruder_idler_holes();
 }
}

idler();