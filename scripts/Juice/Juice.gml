function Juice() {
	flash_alpha = 0;
	flash_color = c_white;
	is_taking_damage = false;
	
	x_scale = 1;
	y_scale = 1;
	
	x_scale_target = 1;
	y_scale_target = 1;
	
	scaling_speed = .1;
		
	juice_step_event = function(){
		x_scale = lerp(x_scale, x_scale_target, scaling_speed);
		y_scale = lerp(y_scale, y_scale_target, scaling_speed);
		
		if flash_alpha > 0 {
			flash_alpha -= 0.1;
		}
		
	}
	
	juice_draw_event = function(_x,_y){
		draw_sprite_ext(sprite_index, image_index,_x,_y,
		image_xscale * x_scale,
		image_yscale * y_scale, image_angle,image_blend,image_alpha);
		
		if flash_alpha > 0 { 
			shader_set(sh_flash);
			
			draw_sprite_ext(sprite_index, image_index,_x,_y,
			image_xscale * x_scale,
			image_yscale * y_scale, image_angle,flash_color,flash_alpha);
			
			shader_reset();
		}
	}
	
	apply_scaling_method = function(_x_scale, _y_scale,_x_scale_target, _y_scale_target) {
		x_scale = _x_scale;
		y_scale = _y_scale;
	
		x_scale_target = _x_scale_target;
		y_scale_target = _y_scale_target;
	}


	apply_flash_method = function(_f_color, _f_alpha) {
		flash_alpha = _f_alpha;
		flash_color = _f_color;
	}

}