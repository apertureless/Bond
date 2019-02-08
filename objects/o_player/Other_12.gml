/// @description Evade State

image_speed = 0.7;

set_movement(_roll_direction, _roll_speed);
move_movement_entity(false);

if animation_hit_frame(image_number - 1) {
	_state = player.move;
}

