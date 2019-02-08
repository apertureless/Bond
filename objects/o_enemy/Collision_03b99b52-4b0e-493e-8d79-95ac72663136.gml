if _health <= 0 exit;

if hurtbox_entity_hit_by(other) {
	_invincible = true;
	alarm[0] = global.one_second * 0.5;
	_health -= other._damage;
	_state = enemy.hit;
	var _knockback_direction = point_direction(other.x, other.y, x, y);
	create_animation_effect(s_hit_effect, x, y-8, 1, true);
	set_movement(_knockback_direction, other._knockback);
	audio_play_sound(a_hit, 7, false);
}

