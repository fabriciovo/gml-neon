draw_self()

if flash_alpha > 0 {
	shader_set(sh_flash)
	draw_sprite_ext(sprite_index, image_index,x,y, image_xscale, image_yscale, image_angle, flash_color, flash_alpha)
	shader_reset()
}