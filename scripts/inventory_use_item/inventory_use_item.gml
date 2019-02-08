///@arg input
///@arg item

var _input = argument0;
var _item = argument1;

if _input {
	if instance_exists(_item) && global.player_stamina >= _item._cost {
		_state = _item._action;
		global.player_stamina = max(0, global.player_stamina - _item._cost);
		alarm[1] = global.one_second;
		image_index = 0;
	}
}