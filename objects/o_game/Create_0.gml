global.one_second = game_get_speed(gamespeed_fps);
global.destroyed = [];

instance_create_layer(0, 0, "Instances", o_input);

#region Fonts
var _font_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ.abcdefghijklmnopqrstuvwxyz1234567890>,!':-+";
global.font = font_add_sprite_ext(s_font, _font_string, true, 1);
global.font_small = font_add("m5x7.ttf", 8, false, false, 32, 128);
draw_set_font(global.font);
#endregion

#region Player Globals
global.player_max_health = 3;
global.player_health = global.player_max_health;
global.player_max_stamina = 3;
global.player_stamina = global.player_max_stamina;

global.player_gems = 0;
global.player_start_position = noone;
#endregion

//audio_play_sound(a_music, 10, true);

#region GUI
var _view_width = camera_get_view_width(view_camera[0]);
var _view_height = camera_get_view_height(view_camera[0]);
display_set_gui_size(_view_width, _view_height);
#endregion

#region Pausing
_paused = false;
_paused_sprite = noone;
_paused_sprite_scale = display_get_gui_width() / view_wport[0];
#endregion

#region Inventory
global.item[0] = o_sword_item;
global.item[1] = o_ring_item;

_item_index = 0;
inventory_create(6);
inventory_add_item(o_ring_item);
inventory_add_item(o_sword_item);
inventory_add_item(o_bomb_item);
#endregion