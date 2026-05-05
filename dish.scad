include <vars.scad>;

resolution=360;

// rotate is so it one does not need to flip it when importing the generated STL
rotate([0,180,0]){
    union(){
        difference(){
            cylinder(h=height, d=diameter, center=false, $fn=resolution);
            cylinder(h=recess_height, d=recess_outer_diameter, center=false, $fn=resolution);
        }
        cylinder(h=recess_height+1, d=recess_inner_diameter, center=false, $fn=resolution);
    }
}
