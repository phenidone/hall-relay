
// with thanks to HAD...
module cylinders(points, radius, height)
{
    for (p=points){
        translate(p) cylinder(r=radius, h=height, center=true);
    }
}

// box, rounded in 2 dimensions but flat top+bottom
// is centred
module round2box(size, radius)
{
    points=[ [-size[0]/2+radius, -size[1]/2+radius, 0],
             [-size[0]/2+radius, size[1]/2-radius, 0],
             [size[0]/2-radius, -size[1]/2+radius, 0],
             [size[0]/2-radius, size[1]/2-radius, 0]];
    
    hull() cylinders(points, radius, size[2]);
}

// bracket dimensions
epsilon=0.05;
pcbrad=3;
fillet=2;
wall=1;
tablen=10;
tabthick=1.2;
outerrad=pcbrad+wall;
pcb=[12, 37, 2];  // PCB space
clearance=[11, 24, 9];  // component-area
outer=[pcb[0]+2*wall, pcb[1]+2*wall, clearance[2]+3];  // casing size
tabs=[outer[2], outer[1]+2*tablen, outer[0]/2];
tabfillet=[outer[0], tablen+2*outerrad, outer[2]+1];
screwpilot=2;
screw=3;
screwspace=1.15*25.4;
cable=5;

$fn=50;
$fs=epsilon;

// assemble, upside-down for ease of FDM printing
rotate(a=[0, 180, 0]) difference()
{
    union()
    {
        // datum: centre of bottom face
        translate([0, 0, outer[2]/2])
            // the main casing
            round2box([outer[0], outer[1]+epsilon, outer[2]], outerrad);

        // side tabs - overly thick to make room for fillet
        translate([outer[0]/2-tabs[2]/2, 0, outer[2]/2]) rotate(a=[0, 90, 0])
            round2box(tabs, outerrad);
    }

    // space for the PCBA
    translate([0, 0, -epsilon])
    {
        // datum: bottom centre of the PCB
        
        // pcb space
        translate([0, 0, pcb[2]/2])
            round2box(pcb, pcbrad);

        // component-area clearance
        translate([0, 0, clearance[2]/2+pcb[2]-epsilon])
            // cube(clearance, true);
            round2box(clearance, fillet);
        
        // cable clearance
        translate([0, clearance[1]/4, outer[2]/2])
            cylinder(d=cable, h=outer[2]+1, center=true);
        
        // PCB-screw pilot holes
        translate([0, 0, outer[2]/2-1])
            cylinders([[0, screwspace/2, 0], [0, -screwspace/2, 0]], screwpilot/2, outer[2]);

        
    }

    // fillets from backs of end tabs
    translate([-tabthick, -(tabfillet[1]+outer[1])/2, tabfillet[2]/2-epsilon])
            round2box(tabfillet, fillet);
    translate([-tabthick, (tabfillet[1]+outer[1])/2, tabfillet[2]/2-epsilon])
            round2box(tabfillet, fillet);
    
    // screw clearance holes in tabs
    translate([outer[0]/2, 0, outer[2]/2]) rotate(a=[0, 90, 0])
        cylinders([[0, (outer[1]+tablen+1)/2, 0], [0, -(outer[1]+tablen+1)/2, 0]], screw/2, outer[0]/2);
}
