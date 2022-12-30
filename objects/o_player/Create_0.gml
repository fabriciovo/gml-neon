/// @description Player create

enum player_state {
	normal,
	jump,
	dash,
	hit,
	dead
}

vsp_ = 0
hsp_ = 0
acceleration_ = 0.5
max_speed_ = 1.5
dir_ = image_xscale
grav_ = 0.5

x_scale_ = 1
y_scale_ = 1

hp_ = 0
max_hp_ = 10
coin_ = 0

can_dash_ = false
dash_distance_ = 96
dash_time_ = 12

starting_state_ = player_state.normal;
state_ = starting_state_;


sprite_[player_state.normal] = s_player_idle;
sprite_[player_state.jump] = s_player_idle;
sprite_[player_state.hit] = s_player_idle;
sprite_[player_state.dead] = s_player_idle;