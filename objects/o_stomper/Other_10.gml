/// @description IDLE STATE
image_speed = 0
if distance_to_object(o_player) < 40 {
	state = STOMP_STATE.SMASH_STATE
}
show_debug_message(string(distance_to_object(o_player)))