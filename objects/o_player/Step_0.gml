// @description Event User
get_input();
juice_step_event();
event_user(state);

collision_with_rolling();
collisions_with_solid(o_solid);
	

if(place_meeting(x,y,o_player)) instance_destroy()