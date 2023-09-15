// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dash_state(){
	Collisions(o_solid);
	hspd = lengthdir_x(dash_spd, dash_direction)
	vspd = lengthdir_y(dash_spd, dash_direction)
	
	dash_energy -= dash_spd
	
	if dash_energy <= 0 {
		hspd = 0
		vspd = 0
		can_dash = true
		state = free_state
	}
}