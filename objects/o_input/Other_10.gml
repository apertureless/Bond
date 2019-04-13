/// @description Get input

#region Movement
_right = keyboard_check(vk_right) || gamepad_button_check(0, gp_padr);
_left = keyboard_check(vk_left) || gamepad_button_check(0, gp_padl);
_up = keyboard_check(vk_up) || gamepad_button_check(0, gp_padu);
_down = keyboard_check(vk_down) || gamepad_button_check(0, gp_padd);
#endregion

#region Inventory
_right_pressed = keyboard_check_pressed(vk_right) || gamepad_button_check_pressed(0, gp_padr);
_left_pressed = keyboard_check_pressed(vk_left) || gamepad_button_check_pressed(0, gp_padl);
#endregion

#region Actions
_action_one_pressed = keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(0, gp_face3);
_action_two_pressed = keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0, gp_face1);
#endregion

#region Other
_paused_pressed = keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0, gp_start);
#endregion