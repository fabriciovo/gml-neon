/// @description Event User
event_user(state_)
var _key_up = keyboard_check(vk_up);
var _key_down = keyboard_check(vk_down);
var _key_left = keyboard_check(vk_left);
var _key_right = keyboard_check(vk_right);
var _key_up_released = keyboard_check_released(vk_up);
var _collision_object = o_solid;

if(!place_meeting(x, y+1, _collision_object)){
    vsp_ += grav_
    //sprite_index = spr_player_jump;
    image_speed = 0
    image_index = (vsp_ > 0)
    
    if(_key_up_released && vsp_ < -6){
	 vsp_ = -4
    }
}else{ 
    vsp_ = 0

    if(_key_up){
        vsp_ = -8
    }

    if (hsp_ == 0){
        //sprite_index = spr_player_idle;
    }else{
        //sprite_index = spr_player_walk;
        image_speed = .6
    }
}

if(_key_right || _key_left){
    hsp_ += (_key_right-_key_left)*acceleration_
    var _hsp_dir = _key_right - _key_left
    
    if(hsp_ > max_speed_) hsp_ = max_speed_
    if(hsp_ < -max_speed_) hsp_ = -max_speed_ 
}else { 
    //scr_apply_friction(acc)
	hsp_ = 0
}

if(hsp_ != 0){
    image_xscale = sign(hsp_)
}



//Horizontal Collisions
if (place_meeting(x+hsp_,y, _collision_object)){
    while(!place_meeting(x+sign(hsp_),y,_collision_object)){ 
        x += sign(hsp_)
    }
    hsp_ = 0
}

//Vertical Collisions
if (place_meeting(x,y+vsp_, _collision_object)){
    while(!place_meeting(x,y+sign(vsp_),_collision_object)){ 
        y += sign(vsp_)
    }
    vsp_ = 0
}


y+= vsp_
x+= hsp_

