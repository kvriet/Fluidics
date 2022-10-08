// Fluidic Capacitor generator - by C.M. van Riet
// Version 1 - Oct 2022

// VARIABLES
volume = 10;            // [mL]

wall_thickness = 2;     // [mm]
stem_length = 20;       // [mm]
stem_OD = 6;            // [mm]
stem_ID = 3;            // [mm]
text_size = 4;

cross_section = true;

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
PI = 3.1416;
volume_m3 = volume*1000;
radius_inner = ((3*volume_m3) / (4*PI))^(1/3);
radius_outer = radius_inner + wall_thickness;
cross_section_size = 1000;


translate([0,0,stem_length])
difference(){
    union(){
        cap_sphere();        
        stem();
        volume_text();
    }
    translate([0,0,-stem_length/2])
    cylinder(h = stem_length*1.5, r = stem_ID/2, center = true, $fn = 40);
    
    if (cross_section){
        translate([-cross_section_size,-cross_section_size*2,-cross_section_size]){
            cube(cross_section_size*2);
        }
    }
}

module volume_text(){
    translate([0,stem_OD/2+(stem_OD/2-stem_ID/2)/4,-text_size*2])
    mirror([1,0,0])
    rotate([90,0,0])
    linear_extrude(height=(stem_OD/2-stem_ID/2))
        text(str(volume), size = text_size, halign = "center", font ="Arial:style=Bold");
}

module stem(){
    translate([0,0,-stem_length/2])
    cylinder(h = stem_length, r = stem_OD/2, center = true, $fn = 40);
}

module cap_sphere(){
    translate([0,0,radius_inner])
    difference(){
        sphere(radius_outer, $fn = 75);
        sphere(radius_inner, $fn = 75);
    }
}