// Capacitor pouch generator by Katrien van Riet - Jan '23

// VARIABLES
V_desired = 0.039;      // L
w = 50;                 // mm
V_tolerance = 0.001;    // L
stem_height = 10;       // mm
stem_width = 12;        // mm
tab_height = 15;        // mm   (height of the tab that indicates the cap value)
text_size = 7;          // mm   (height of the text on the tab)


// VARIABLES TO SI
V_desired_SI = V_desired / 1000;        // m3
w_SI = w / 1000;                        // m
V_tolerance_SI = V_tolerance / 1000;    // m3  

tab_offset = 1;         // mm   (makes sure that tab is sealed separately
                        //      instead of being added to cap volume)
chamfer_length = 10;    // mm

h_attempted_SI = w_SI*3;    // m
h_increment_SI = 0.001;     // m
cycles_allowed = 1000;      // Times the algorithm is allowed to run

pi = 3.1416;
counter = 0;

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

calculate_V(h_attempted_SI, 0, false);

module calculate_V(h_attempted_SI_, i_, isDone_) {
    V_calculated_SI = pow(w_SI, 3) * ( h_attempted_SI_/(pi*w_SI) - 0.142*(1-pow(10, -h_attempted_SI_/w_SI)) );

    echo(i_);
    echo("Volume calculated: ", V_calculated_SI*1000, " L");
    echo("height: ", h_attempted_SI_*1000, " mm");    

    if (i_ < cycles_allowed){
        if (!isDone_) {
            if (V_calculated_SI > (V_desired_SI + V_tolerance_SI)) {
              calculate_V(h_attempted_SI_-h_increment_SI, i_+1, false);
            } else if (V_calculated_SI < (V_desired_SI - V_tolerance_SI)) {
              calculate_V(h_attempted_SI_+h_increment_SI, i_+1, false);
            } else {
              calculate_V(h_attempted_SI_, i_+1, true);
              echo("done!");
            }
        }
    }
    
    if (isDone_){
        pouch(w_SI*1000, h_attempted_SI_*1000);
    }
}

module pouch(width_, height_){
    union(){
        translate([0,height_/2,0])
        square([width_, height_], center = true);
        translate([0,-stem_height/2,0])
        square([stem_width, stem_height], center= true);
    }
    
    translate([0, height_+tab_height/2+tab_offset, 0]){
        difference(){
            square([width_, tab_height], center = true);
            
            text(str(V_desired*1000), size = text_size, halign = "center", valign = "center", font ="Arial:style=Bold");
        }
    }
    translate([0,-stem_height,0])
    polygon(points = [
        [stem_width/2, 0],
        [stem_width/2 + sqrt(0.5)*chamfer_length, -sqrt(0.5)*chamfer_length],
        [-stem_width/2 - sqrt(0.5)*chamfer_length, -sqrt(0.5)*chamfer_length],
        [-stem_width/2, 0]
        ]
    );
    
    echo("width: ", width_, " mm");
    echo("Volume desired: ", V_desired, " L");
}