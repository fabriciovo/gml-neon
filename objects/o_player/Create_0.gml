/// @description Player create
get_input()
Juice();

enum PLAYER_STATES {
	FREE_STATE,
	DASH_STATE
}

initial_state = PLAYER_STATES.FREE_STATE
state = initial_state

spd = 3
acc = .3
hspd = 0
vspd = 0
hspd_dir = 0
grav = 0.3
can_dash = true
dash_time = 12
dash_distance = 96
dash_direction = 0
dash_spd = 0
dash_energy = 10
can_shoot = true
invencible = false
