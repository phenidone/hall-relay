
// a 90-degree bracket to hold a cylindrical magnet
// the magnet is on the INSIDE of the bracket, which helps with printing and also
// means it's not visible from the direction the magnet would normally be looked at from

// this version has tiny press-retaining tabs so no magnet glue is required.

mag_diam=8.3;
mag_thick=1.2;
mag_ctr=7;
tab_thick=1.2;
skin=0.4;
wall=tab_thick;
screw=3;
screw_ctr=4.5;
wall_ctr=screw_head;

// total width of the bracket
width=mag_diam+2*wall;

epsilon=1e-2;
$fn=32;

// flip part on its back for easy FDM printing
rotate(a=[0, -90, 0]) union() {

    // magnet-holding vertical thing
    rotate(a=[0, -90, 0]){
        difference(){
            union(){
                translate([mag_ctr, 0, 0]) cylinder(d=width, h=mag_thick+skin, center=false);
                translate([0, -width/2, 0]) cube([mag_ctr, width, mag_thick+skin], center=false);
            }

            translate([mag_ctr, 0, -epsilon]) cylinder(d=mag_diam, h=mag_thick, center=false);
        }
        
        // retaining tabs
        for(y=[mag_diam/2, -mag_diam/2]){
            translate([mag_ctr, y, 0]) {
                translate([0, 0, -0.2]) sphere(d=0.8);
                // rotate(a=[45, 0, 0]) cube(0.8, center=true);
            }
        }

    }

    // screw-down tab
    difference(){
        union(){
            translate([screw_ctr, 0, 0]) cylinder(d=width, h=tab_thick, center=false);
            translate([0, -width/2, 0]) cube([screw_ctr, width, tab_thick], center=false);
        }

        translate([screw_ctr, 0, -epsilon]) cylinder(d=screw, h=tab_thick+1, center=false);
    }
    
    // bracing
    for(y=[-width/2, width/2-wall]){
        hull(){
            translate([-1, y, tab_thick-1]) cube([screw_ctr+1, wall, 1], center=false);
            translate([-1, y, 1]) cube([1, wall, mag_ctr-1 /*+0.2*/], center=false);
        }
    }
}
