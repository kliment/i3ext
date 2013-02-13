
include <gear_script.scad>;

module big_gear()
{
	difference(){
	translate ([0,0,0])
	gear (
		number_of_teeth=20,
		circular_pitch=345,
		rim_thickness=5,
		bore_diameter=5.2);
	translate ([0,0,6])
	cylinder(r=9.2/2, h=5, $fn=6);


	}

}


module small_gear()
{
	translate([0,0,0])
	{

		translate ([29,0,0])
		rotate ([0,0,360*-1/20]) gear (number_of_teeth=10,
			circular_pitch=345,rim_thickness=10,hub_thickness=15,bore_diameter=5.4);
	}
}


//big_gear();
small_gear();