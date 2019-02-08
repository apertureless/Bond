depth = -y;
event_user(_state);
sprite_index = _sprite[_state, _direction_facing];

if (global.player_health <= 0 && !_invincible) {
	instance_destroy();
}