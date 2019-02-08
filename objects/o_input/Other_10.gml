/// @description Get input

#region Movement
_right = keyboard_check(vk_right);
_left = keyboard_check(vk_left);
_up = keyboard_check(vk_up);
_down = keyboard_check(vk_down);
#endregion

#region Inventory
_right_pressed = keyboard_check_pressed(vk_right);
_left_pressed = keyboard_check_pressed(vk_left);
#endregion

#region Actions
_action_one_pressed = keyboard_check_pressed(ord("A"));
_action_two_pressed = keyboard_check_pressed(ord("S"));
#endregion

#region Other
_paused_pressed = keyboard_check_pressed(vk_escape);
#endregion