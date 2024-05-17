/// @description Dash State
	hspd = lengthdir_x(dash_spd, dash_direction)
	vspd = lengthdir_y(dash_spd, dash_direction)
	
	dash_energy -= dash_spd
	
	if dash_energy <= 0 {
		hspd = 0
		vspd = 0
		can_dash = true
		state = PLAYER_STATES.FREE_STATE
	}