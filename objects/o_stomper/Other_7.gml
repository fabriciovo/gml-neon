/// @description Insert description here
// You can write your code in this editor
if state == STOMP_STATE.SMASH_STATE {
	state = STOMP_STATE.WAIT_STATE
}

if state == STOMP_STATE.SMASH_STATE {
	image_speed = 0	
}

if state == STOMP_STATE.RETURN_TO_IDLE_STATE {
	image_speed = 0
	image_index = 3
	if alarm[1] == -1{
		alarm[1] = 120
	}
	
}