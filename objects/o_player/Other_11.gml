/// @description Sword State

image_speed = 0.8;


if (animation_hit_frame(1)) {
	var angle = _direction_facing * 90;
	var ttl = 3;
	var damage = 1;
	var knockback = 8;
	
	var _hitbox = create_hitbox(
		s_sword_hitbox,
		x,
		y,
		angle,
		ttl,
		[o_enemy, o_destroyable],
		damage,
		knockback
	);
	
	audio_play_sound(a_swipe, 8, false);
	
	
	switch(_direction_facing) {
		case dir.up:
			_hitbox.y -= 4;
			break;
		default:
			_hitbox.y -= 8;
			break;
	}
}

if (animation_hit_frame(image_number - 1)) {
	_state = player.move;
}