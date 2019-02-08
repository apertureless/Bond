initialize_movement_entity(1, 0.5, o_solid);
initialize_hurtbox_entity();

image_speed = 0;
_max_health = 2;
_health = _max_health;
_attack_range = 16;
_starting_state = noone;
_state = _starting_state;


enum enemy {
	hit
}