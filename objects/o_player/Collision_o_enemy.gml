is_taking_damage = true
if(is_taking_damage and not invencible and not dashing){
	apply_scaling_method(.6,.9,1,1);
	apply_flash_method(c_white,1)
	is_taking_damage = false;
	invencible = true;
	alarm[2] = 100;
}
	
