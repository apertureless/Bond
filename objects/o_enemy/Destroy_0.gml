create_animation_effect(s_enemy_death_effect, x, y-8, 0.6, true);
if chance(0.75) {
	var _item = choose(o_gem, o_heart);
	instance_create_layer(x-8, y, "Instances", _item);
}
