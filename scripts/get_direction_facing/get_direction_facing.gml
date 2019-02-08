///@arg direction_facing

var _dir = argument[0];

_direction_facing = round(_dir / 90);

if (_direction_facing == 4) {
	_direction_facing = 0;
}