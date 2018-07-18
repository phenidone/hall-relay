
// a flat bracket to hold a cylindrical magnet
// the magnet is on the INSIDE of the bracket, which
// means it's not visible from the direction the bracket would normally be looked at from

// there are optional tiny retaining tabs

mag_diam=8.3;
mag_thick=1.2;
mag_ctr=7;
skin=0.4;
wall=1.2;
screw=3;
screw_ctr=4.5;
tabs=false;

// total width of the bracket
width=mag_diam+2*wall;

epsilon=1e-2;
$fn=32;

// flip part on its back for easy FDM printing
rotate(a=[0, 180, 0]){
    difference(){
        hull(){
            translate([mag_ctr, 0, 0]) cylinder(d=width, h=mag_thick+skin, center=false);
            translate([-screw_ctr, 0, 0]) cylinder(d=width, h=mag_thick+skin, center=false);
        }

        // magnet hole
        translate([mag_ctr, 0, -epsilon]) cylinder(d=mag_diam, h=mag_thick, center=false);

        // screw hole
        translate([-screw_ctr, 0, -epsilon]) cylinder(d=screw, h=(mag_thick+skin+1), center=false);
    }

    if(tabs){
        // retaining tabs
        for(y=[mag_diam/2, -mag_diam/2]){
            translate([mag_ctr, y, 0]) {
                translate([0, 0, -0.2]) sphere(d=0.8);
            }
        }
    }
    
}

