depth = -y;

if _health <= 0 && _state != enemy.hit {
	instance_destroy()
}

if _state != noone {
	event_user(_state);
}