
if !instance_exists(o_player) exit;

_distance_to_player = point_distance(x, y, o_player.x, o_player.y);

if  _distance_to_player < _attack_range {
	_state = porcupine.attack;
	image_index = 0;
	sprite_index = s_porcupine_attack;
}