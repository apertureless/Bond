/// @description Insert description here
// You can write your code in this editor

if hurtbox_entity_hit_by(other) {
	instance_destroy();
	instance_destroy(_wall);
	create_animation_effect(s_bush_effect, x, y, 1, true);
}