create_animation_effect(s_explosion_effect, x, y, 1, true);
create_hitbox(s_bomb_hitbox, x, y-4, 0, 3, [o_destroyable, o_enemy], 2, 12);
audio_play_sound(a_explosion, 5, false);
