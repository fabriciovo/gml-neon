// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Collisions(_collision_object){
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

}