/// @description Hit Logic

if (hurtbox_entity_hit_by(other)) {
	_invincible = true;
	alarm[0] = global.one_second * 0.75;
	global.player_health -= other._damage;

	var _direction = point_direction(other.x, other.y, x, y);
	set_movement(_direction, other._knockback);
	
	_state = player.hit;
	event_user(_state);
	audio_play_sound(a_hurt, 6, false);
}