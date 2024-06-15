/// @description move(collision_object)
/// @param collision_object
function collisions_with_solid(_collision_object) {
	// Horizontal Collisions
	if (place_meeting(x + hspd + other_hspd * (hspd_dir), y, _collision_object)) {
	    while (!place_meeting(x+sign(hspd + other_hspd * sign(hspd_dir)), y, _collision_object)) {
	        x += sign(hspd + other_hspd);
	    }
	    hspd = other_hspd;
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
    var _hsp = 0
    if (_on_ground) {
        if (!place_meeting(x, y-1, o_rolling)) {
            _hsp = -1; 
        }
    } else {
        _hsp = 0;
    }
	other_hspd = _hsp
}
