_z += _z_speed;
_z_speed += _gravity;

if (_z > 0) {
	_can_pickup = true;
	var bounce_amount = 0.25
	_z_speed = -_z_speed * bounce_amount;
	
	if (_z_speed > -1) {
		_z_speed = 0;
		_z = 0;
	}
}