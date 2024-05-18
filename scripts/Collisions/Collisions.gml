/// @description move(collision_object)
/// @param collision_object
function collisions_with_solid(_collision_object) {
	// Horizontal Collisions
	if (place_meeting(x+hspd + other_hspd, y, _collision_object)) {
	    while (!place_meeting(x+sign(hspd + other_hspd), y, _collision_object)) {
	        x += sign(hspd);
	    }
	    hspd = 0;
	}
	x += hspd + other_hspd;

	// Vertical Collisions
	if (place_meeting(x, y+vspd, _collision_object)) {
	    while (!place_meeting(x, y+sign(vspd), _collision_object)) {
	        y += sign(vspd);
	    }
	    vspd = 0;
	}
	y += vspd;
}

function collision_with_rolling() {
    var _on_ground = place_meeting(x, y+vspd+1, o_rolling);
    
    if (_on_ground) {
        if (!place_meeting(x, y-1, o_rolling)) {
            other_hspd = -1; 
        }
    } else {
        other_hspd = 0;
    }

	
}