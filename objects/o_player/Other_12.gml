/// @description Hit
if flash_alpha > 0 {
	flash_alpha -= 0.05
}


if flash_alpha <= 0 {
	flash_alpha = 0
	state_ = player_state.normal
}