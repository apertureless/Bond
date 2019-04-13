initialize_movement_entity(0.5, 1, o_solid);
initialize_hurtbox_entity();

image_speed = 0;
_acceleration = 0.5;
_max_speed = 1.7;
_roll_speed = 2;

_direction_facing = dir.right;
_roll_direction = 0;

enum player {
	move,
	sword,
	evade,
	bomb,
	bow,
	found_item,
	hit
}

enum dir {
	right,
	up,
	left,
	down
}

_starting_state = player.move;	
_state = _starting_state;

// Lookup Table
#region Move
_sprite[player.move, dir.right] = s_player_run_right;
_sprite[player.move, dir.left] = s_player_run_right;
_sprite[player.move, dir.up] = s_player_run_up;
_sprite[player.move, dir.down] = s_player_run_down;
#endregion

#region Sword
_sprite[player.sword, dir.right] = s_player_attack_right;
_sprite[player.sword, dir.left] = s_player_attack_right;
_sprite[player.sword, dir.up] = s_player_attack_up;
_sprite[player.sword, dir.down] = s_player_attack_down;
#endregion

#region Evade
_sprite[player.evade, dir.right] = s_player_roll_right;
_sprite[player.evade, dir.left] = s_player_roll_right;
_sprite[player.evade, dir.up] = s_player_roll_up;
_sprite[player.evade, dir.down] = s_player_roll_down;
#endregion

#region Hit
_sprite[player.hit, dir.right] = s_player_roll_right;
_sprite[player.hit, dir.left] = s_player_roll_right;
_sprite[player.hit, dir.up] = s_player_roll_up;
_sprite[player.hit, dir.down] = s_player_roll_down;
#endregion

#region Bomb
_sprite[player.bomb, dir.right] = s_player_run_right;
_sprite[player.bomb, dir.left] = s_player_run_right;
_sprite[player.bomb, dir.up] = s_player_run_up;
_sprite[player.bomb, dir.down] = s_player_run_down;
#endregion