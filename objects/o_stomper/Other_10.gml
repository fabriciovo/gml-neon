/// @description IDLE STATE

if distance_to_object(o_player) < 40 {
	image_speed = 0.1
	image_index = 0
	state = STOMP_STATE.SMASH_STATE
}else{
	image_speed = 0
}
