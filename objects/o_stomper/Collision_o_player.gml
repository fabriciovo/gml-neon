if (y < other.y - other.sprite_height / 2 && abs(x - other.x) < sprite_width / 2) {
	instance_destroy(other)
}