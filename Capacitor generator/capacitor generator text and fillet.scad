// VARIABLES
volume = 10;            // [mL]

wall_thickness = 3;     // [mm]
stem_length = 20;       // [mm]
stem_OD = 6;            // [mm]
stem_ID = 3;            // [mm]
text_size = 4;

cross_section = false;

/*  E12 SERIES
    10
    12
    15
    18
    22
    27
    33
    39
    47
    56
    68
    82
    100
*/

// CALCULATED VARIABLES
PI = 3.1416;            // Good enough and faster
volume_m3 = volume*1000;
radius_inner = ((3*volume_m3) / (4*PI))^(1/3);
radius_outer = radius_inner + wall_thickness;
cross_section_size = 1000;

/*
radius_inner = 10;
wall_thickness = 2;
radius_outer = radius_inner + wall_thickness;
stem_OD = 6;
stem_ID = 3;
stem_length = 20;
*/


radius_fillet = 10;


qx = -stem_OD/2;
qy = -sqrt((radius_fillet+radius_outer)^2 - (radius_fillet+stem_OD/2)^2);
px = -((radius_inner+wall_thickness) * (radius_fillet + stem_OD/2)) / (radius_fillet + radius_outer);
py = ((radius_inner+wall_thickness-0.2) * qy) / (radius_fillet + radius_outer);

o = tan(54)*(px - stem_OD);


difference(){
    rotate_extrude(angle = 360, $fn=40) 2D();
    
    if (cross_section){
        translate([-500,0,-500])
        cube(1000);
    }
}

translate([0,radius_outer,0]) volume_text();

//2D();


module 2D(){
    difference(){
        union(){
            polygon([[px, py], [-stem_OD/2, o], [-stem_ID/2, -radius_outer] ]);
            translate([0,-radius_inner-stem_length/2,0])
            square([stem_OD, stem_length], center=true);
            difference(){
                circle(radius_outer, $fn=60);
                circle(radius_inner, $fn=60);
            }
        }
        translate([0,-radius_inner-stem_length/2,0])
        square([stem_ID, stem_length+1], center=true);
        
        translate([0,-250,0])
        square(500);
    }
}

module volume_text(){
    translate([0,(stem_OD/2-stem_ID/2)/2,-text_size/2])
    mirror([1,0,0])
    rotate([90,0,0])
    linear_extrude(height=(stem_OD/2-stem_ID/2))
        text(str(volume), size = text_size, halign = "center", font ="Arial:style=Bold");
}



