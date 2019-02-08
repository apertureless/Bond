#region Inventory Navigation
if _paused {
	var _array_size = array_length_1d(global.inventory);
	if (o_input._right_pressed) {
		_item_index = min(_item_index + 1, _array_size - 1);
		audio_play_sound(a_menu_move, 1, false);
	}
	if (o_input._left_pressed) {
		_item_index = max(_item_index - 1, 0);
		audio_play_sound(a_menu_move, 1, false);
	}
	if o_input._action_one_pressed {
		global.item[0] = global.inventory[_item_index];
		audio_play_sound(a_menu_select, 3, false);
	}
	if o_input._action_two_pressed {
		global.item[1] = global.inventory[_item_index];
		audio_play_sound(a_menu_select, 3, false);
	}
}

#endregion

#region Pause State
if (o_input._paused_pressed) {
	if _paused {
		_paused = false;
		if (sprite_exists(_paused_sprite)) {
			sprite_delete(_paused_sprite);
		}
		instance_activate_all();
		audio_play_sound(a_unpause, 5, false);
	} else {
		_paused = true;
		_paused_sprite = sprite_create_from_surface(
			application_surface,
			0,
			0,
			view_wport[0],
			view_hport[0],
			false,
			false,
			0,
			0
		);
		instance_deactivate_all(true);
		var _array_size = array_length_1d(global.inventory);
		for (var i = 0; i < _array_size; i++) {
			instance_activate_object(global.inventory[i]);
		}
		instance_activate_object(o_input);
		audio_play_sound(a_paused, 5, false);
	}
}

#endregion