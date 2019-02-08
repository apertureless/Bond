var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

#region Pause State
if sprite_exists(_paused_sprite) {
	draw_sprite_ext(
		_paused_sprite, 
		0, 
		0, 
		0, 
		_paused_sprite_scale, 
		_paused_sprite_scale,
		0,
		c_white,
		1
	)
	
	draw_set_alpha(0.6);
	draw_rectangle_color(
		0, 
		0, 
		_gui_width, 
		_gui_height, 
		c_black, 
		c_black, 
		c_black, 
		c_black, 
		false
	);
	draw_set_alpha(1);
}

#endregion


var _hud_right_edge = max(
	3 + global.player_max_health * 15, 
	2 + global.player_max_stamina * 17
);

#region UI - Health

draw_sprite_ext(s_hud, 0, 0, _gui_height, _hud_right_edge, 1, 0, c_white, 1);
draw_sprite(s_hud_edge, 0, _hud_right_edge, _gui_height);

for (var i = 0; i < global.player_max_health; i++) {
	var filled = i < global.player_health;
	draw_sprite(s_heart_ui, filled, 4+15*i, _gui_height - 29);
}
#endregion

#region UI - Stamina
for (var i = 0; i < global.player_max_stamina; i++) {
	var filled = i < global.player_stamina;
	draw_sprite(s_stamina_ui, filled, 4+17*i, _gui_height - 17);
}
#endregion

#region UI - Gems
var _gem_string = string(global.player_gems);
var _text_width = string_width(_gem_string);

var _x = _gui_width - _text_width + 4;
var _y = _gui_height - 16 + 4;

draw_sprite(s_gem, 0, _x - 16, _y + 7);
draw_text(_x - 8, _y - 1, _gem_string);
#endregion

#region UI - Inventory
inventory_draw(4, 36);
#endregion

#region UI - Selected Actions

draw_sprite(s_inventory_box, 0, 4, 4);
draw_sprite(s_inventory_box, 0, 36, 4);

if instance_exists(global.item[0]) {
	draw_sprite(global.item[0]._sprite, 0, 20, 20);
}

if instance_exists(global.item[1]) {
	draw_sprite(global.item[1]._sprite, 0, 52, 20);
}

#endregion

