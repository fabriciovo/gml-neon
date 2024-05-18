event_user(state)
juice_step_event();
if alarm[0] == -1 {
	alarm[0] = random_range(10,140)
}

	if (!place_meeting(x, y+1, o_solid)) {
	    vspd += grav;
    
	    image_speed = 0;
	    image_index = (vspd > 0);
		
	} else {
	    vspd = 0;
    
	    if (hspd == 0) {
	        sprite_index = s_player_idle;
			 image_speed = .1;
	    } else {
	        sprite_index = s_player_walk;
	        image_speed = .3;
	    }
	}


	if (hspd != 0) {
	    image_xscale = sign(hspd);
	}	

	
	
	if(!place_meeting(x+5,y+1,o_solid)){
		hspd = -spd
	}
	

	if(!place_meeting(x-5,y+1,o_solid)){
		hspd = spd
	}
	
	collisions_with_solid(o_solid);