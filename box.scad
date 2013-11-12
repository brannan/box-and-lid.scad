_length = 50; // x
_width = 50; // y
_height = 15; // z
_wall = 4;

// The box
difference(){
cube([_length, _width, _height]);
translate([_wall, _wall, _wall + .1])
cube([_length - _wall * 2, _width - _wall * 2,  _height - _wall]);
	translate([0, 0, _height - _wall])
	difference() {
		cube([_length, _width, _wall]);
		translate([_wall / 2, _wall / 2, 0])
		cube([_length - _wall, _width - _wall, _wall + 2]);
	}
}



// The Lid
rotate([0,180,0])
translate([5, 0, _wall * -2]) 
difference() {
cube([_length, _width, _wall * 2]);
// Cut out in middle of box
translate([_wall / 2, _wall / 2, -1])
cube([_length - _wall, _width - _wall, _wall + 1]);
}


