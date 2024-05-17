Juice();

flash_alpha = 0;
flash_color = c_white;

enum ENEMY_STATES {
	WALKING,
	CHASING,
	ACTION,
	DAMAGE,
	JUMP
}


state = ENEMY_STATES.WALKING
initial_state = state

spd = random_range(-3,3)
hspd = spd
vspd = 0
hp = 3
grav = .3

