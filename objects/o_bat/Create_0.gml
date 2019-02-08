// Inherit the parent event
event_inherited();

initialize_movement_entity(0.25, 0.5, o_solid)

enum bat {
	HIT,
	MOVE,
	ATTACK
}

_starting_state = bat.MOVE;
_state = _starting_state;
_range = 64;

image_index = 0;
image_xscale = choose(1, -1);
image_speed = 0.5;

alarm[1] = global.one_second * random_range(0, 1);
