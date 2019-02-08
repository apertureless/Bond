event_inherited();
initialize_movement_entity(0.5, 0.5, o_solid);

enum porcupine {
	hit,
	idle,
	move,
	attack,
	wait
}

_starting_state = porcupine.idle;
_state = _starting_state;

image_index = 0;
image_xscale = choose(1, -1);
alarm[1] = random_range(0, 1) * global.one_second;