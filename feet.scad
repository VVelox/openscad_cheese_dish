include <vars.scad>;

// rotate is so it one does not need to flip it when importing the generated STL
rotate([0,180,0]){
    difference(){
        // size is doubled here so the value for feet_size is the actual height
        sphere(d=feet_size*2);
        translate([-feet_size,-feet_size,0]){
            cube(size=feet_size*2);
        };
    };
};
