/// @description apply_friction(Acceleration)
/// @param _acc
function apply_friction(_acc) {
	if (hspd != 0) {
	    if (abs(hspd)-_acc > 0) {
	        hspd -= _acc*image_xscale;
	    } else {
	        hspd = 0;
	    }
	}
}
