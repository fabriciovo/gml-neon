// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Gravity(){
	if(!place_meeting(x, y+1, o_solid)){
	    vsp_ += grav_
		grounded_ = false
	}else{ 
		grounded_ = true
	    vsp_ = 0
	}
}