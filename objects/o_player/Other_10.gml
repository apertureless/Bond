/// @description Move State

image_speed = 0;
var _animation_speed = 0.6;
var _x_input = o_input._right - o_input._left;
var _y_input = o_input._down - o_input._up;
var _input_dir = point_direction(0,0,_x_input, _y_input);
var _attack_input = o_input._action_one_pressed;
var _roll_input = o_input._action_two_pressed;

_roll_direction = _direction_facing * 90;

#region Player Movement

if (_x_input == 0 && _y_input == 0) {
	image_index = 0;
	image_speed = 0;
	apply_friction_to_movement_entity();
} else {
	image_speed = _animation_speed;
	if (_x_input != 0) {
		image_xscale = _x_input;
	} 
	get_direction_facing(_input_dir);
	add_movement_maxspeed(_input_dir, _acceleration, _max_speed);
	_roll_direction = _direction_facing * 90;
}

#endregion


#region Player Inventory Actions
inventory_use_item(o_input._action_one_pressed, global.item[0]);
inventory_use_item(o_input._action_two_pressed, global.item[1]);
#endregion

move_movement_entity(false);