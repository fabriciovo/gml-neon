/// @description move(collision_object)
/// @param collision_object
function collisions_with_solid(argument0) {
	var collision_object = argument0;

	// Horizontal Collisions
	if (place_meeting(x+hspd, y, collision_object)) {
	    while (!place_meeting(x+sign(hspd), y, collision_object)) {
	        x += sign(hspd);
	    }
	    hspd = 0;
	}
	x += hspd + other_hspd;

	// Vertical Collisions
	if (place_meeting(x, y+vspd, collision_object)) {
	    while (!place_meeting(x, y+sign(vspd), collision_object)) {
	        y += sign(vspd);
	    }
	    vspd = 0;
	}
	y += vspd;
}

