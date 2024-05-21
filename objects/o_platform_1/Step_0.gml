if place_meeting(x+hspd,y, o_player) {
	while !place_meeting(x+sign(hspd), y, o_player){
		x += sign(hspd);
	}
	if place_meeting(x+sign(hspd), y,o_player){
		with instance_place(x+sign(hspd),y,o_player) x += floor(other.hspd)
	}
}
x+=hspd