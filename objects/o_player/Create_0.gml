/// @description Player create

enum player_state {
	normal,
	dash,
	hit,
	dead
}
image_speed = 0.1
vsp_ = 0
hsp_ = 0
acceleration_ = 0.5
max_speed_ = 1.5
dir_ = image_xscale
grav_ = 0.5
grounded_ = true
x_scale_ = 1
y_scale_ = 1
hit = false
can_shoot_ = true
hp_ = 0
max_hp_ = 10
coin_ = 0

can_dash_ = false
dash_distance_ = 96
dash_time_ = 12

starting_state_ = player_state.normal;
state_ = starting_state_;

flash_alpha = 0
flash_color = c_white