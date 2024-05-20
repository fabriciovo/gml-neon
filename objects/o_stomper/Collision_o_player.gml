if (y < other.y - other.sprite_height / 2 && abs(x - other.x) < sprite_width / 2) and image_index >= 2 {
	instance_destroy(other)
}