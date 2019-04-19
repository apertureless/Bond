/// @description Get input

#region Movement
_right = keyboard_check(vk_right) || 
	gamepad_button_check(gp_one, gp_padr) ||
	gamepad_axis_value(gp_one, gp_axislh) > 0;
	
_left = keyboard_check(vk_left) || 
	gamepad_button_check(gp_one, gp_padl) || 
	gamepad_axis_value(gp_one, gp_axislh) < 0;
	
_up = keyboard_check(vk_up) || 
	gamepad_button_check(gp_one, gp_padu) ||
	gamepad_axis_value(gp_one, gp_axislv) < 0;
	
_down = keyboard_check(vk_down) || 
	gamepad_button_check(gp_one, gp_padd) ||
	gamepad_axis_value(gp_one, gp_axislv) > 0;;
#endregion

#region Inventory
_right_pressed = keyboard_check_pressed(vk_right) || 
	gamepad_button_check_pressed(gp_one, gp_padr) ||
	gamepad_axis_value(gp_one, gp_axislh) > 0;
	
_left_pressed = keyboard_check_pressed(vk_left) ||
	gamepad_button_check_pressed(gp_one, gp_padl) ||
	gamepad_axis_value(gp_one, gp_axislh) < 0;
#endregion

#region Actions
_action_one_pressed = keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(gp_one, gp_face1);
_action_two_pressed = keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(gp_one, gp_face3);
#endregion

#region Other
_paused_pressed = keyboard_check_pressed(vk_escape) || 
	gamepad_button_check_pressed(gp_one, gp_start) || 
	gamepad_button_check_pressed(gp_one, gp_face4);
#endregion