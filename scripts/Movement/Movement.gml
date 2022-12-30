// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Movement(){
var _key_up = keyboard_check(vk_up);
var _key_down = keyboard_check(vk_down);
var _key_left = keyboard_check(vk_left);
var _key_right = keyboard_check(vk_right);
var _key_up_released = keyboard_check_released(vk_up);

sprite_index = s_player_idle


if(_key_right || _key_left){
    hsp_ += (_key_right-_key_left)*acceleration_
    var _hsp_dir = _key_right - _key_left
    
    if(hsp_ > max_speed_) hsp_ = max_speed_
    if(hsp_ < -max_speed_) hsp_ = -max_speed_ 
}else { 
    //scr_apply_friction(acc)
	hsp_ = 0
}

if(_key_up && grounded_){
	vsp_ = -8
}

if(hsp_ != 0){
    image_xscale = sign(hsp_)
}



}