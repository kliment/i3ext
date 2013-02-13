/*
bearing diameter 16mm


*/

module nozzlemount(){
rotate([0,90,0]) cylinder(r=2, h=70);
translate([0,15,0]) rotate([0,90,0]) cylinder(r=2, h=70);
translate([10-2.8,15,0]) rotate([0,90,0]) cylinder(r=3.3, h=70,$fn=6);
translate([0,-25,0]) rotate([0,90,0]) cylinder(r=2, h=70);
translate([10-2.8,-25,0]) rotate([0,90,0]) cylinder(r=3.3, h=70,$fn=6);
}


difference(){
union(){
cube([42,18,52]);
translate([0,-42,0]) cube([42,42+3,3]);
translate([-7.99,-42,0])cube([8,80,52]);
}

//antiwarpagenation

translate([46,-91,-1])rotate([0,0,45])cube(40);
translate([-11,-91,-1])rotate([0,0,45])cube([40,40,60]);
translate([46,12,-1])rotate([0,0,45])cube([40,40,60]);
translate([-32,12,-1])rotate([0,0,45])cube([40,40,60]);
translate([4,32,-1])rotate([0,0,45])cube([40,40,60]);

// motor circle cut
translate([21,-21,-1]) cylinder(r=12, h=5);

translate([21+15.5,-21+15.5,-1]) cylinder(r=2, h=5);
translate([21+15.5,-21-15.5,-1]) cylinder(r=2, h=5);
translate([21-15.5,-21+15.5,-1]) cylinder(r=2, h=5);
translate([21-15.5,-21-15.5,-1]) cylinder(r=2, h=5);




// idler bearing cutout

translate([21,24,5.5]) cylinder(r=12, h=60);



translate([21,8.1,5.5]) cylinder(r=6, h=52);
translate([21,8.1,-1]) cylinder(r=8.1, h=6);
translate([21,8.1,-5+52-4]) cylinder(r=8.1, h=10);
translate([-6+21,8,5.5]) cube([12,12,50]);

translate([-6+21,8,-50+5]) cube([12,12,50]);

//mounting to carriage
translate([-5,0,-28]){
translate([0,0,0])rotate([0,0,0])cylinder(r=3.3, h=70, $fn=15);
translate([0,0-20,0])rotate([0,0,0])cylinder(r=3.3, h=70, $fn=15);
translate([0,0,30])rotate([0,0,0])cylinder(r=3.1/2, h=70, $fn=15);
translate([0,0-20,30])rotate([0,0,0])cylinder(r=3.1/2, h=70, $fn=15);
}

// idler nuts and filament channels

translate([0,0,-2]){
translate([-10,2+8+4,52-12]) nozzlemount();
translate([-10,2+8+4,52-12-25]) nozzlemount();

translate([5,-1,52-12+7]) rotate([0,90,90]) rotate([0,0,30]) cylinder(r=3.5, h=10, $fn=6);

translate([5,-1,52-12-7]) rotate([0,90,90]) rotate([0,0,30]) cylinder(r=3.5, h=10, $fn=6);

translate([5+32,-1,52-12+7]) rotate([0,90,90]) rotate([0,0,30]) cylinder(r=3.5, h=10, $fn=6);

translate([5+32,-1,52-12-7]) rotate([0,90,90]) rotate([0,0,30]) cylinder(r=3.5, h=10, $fn=6);


translate([5,-1,52-12+7]) rotate([0,90,90]) rotate([0,0,30]) cylinder(r=2, h=40, $fn=6);

translate([5,-1,52-12-7]) rotate([0,90,90]) rotate([0,0,30]) cylinder(r=2, h=40, $fn=6);

translate([5+32,-1,52-12+7]) rotate([0,90,90]) rotate([0,0,30]) cylinder(r=2, h=40, $fn=6);
translate([5+32,-1,52-12-7]) rotate([0,90,90]) rotate([0,0,30]) cylinder(r=2, h=40, $fn=6);
}
}