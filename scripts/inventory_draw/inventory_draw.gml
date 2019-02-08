///@arg x
///@arg y

if !o_game._paused exit;

var _x = argument0;
var _y = argument1;
var _array_size = array_length_1d(global.inventory);

for (var i = 0; i < _array_size; i++) {
	var _box_x = _x + i * 32;
	var _box_y = _y;
	
	draw_sprite(s_inventory_box, 0, _box_x, _box_y);
	
	var _item = global.inventory[i];
	if instance_exists(_item) {
		draw_sprite(_item._sprite, 0, _box_x + 16, _box_y + 16);
	}
	
	if i == _item_index {
		draw_sprite(s_pause_cursor, image_index / 8, _box_x, _box_y);
		if instance_exists(_item) {
			draw_text(_x + 4, _y + 36, _item._description);
			var _description_height = string_height(_item._description);
			draw_text(_x + 4, _y + 48 + _description_height, "Stamina cost: " + string(_item._cost));
		}
	}
}
