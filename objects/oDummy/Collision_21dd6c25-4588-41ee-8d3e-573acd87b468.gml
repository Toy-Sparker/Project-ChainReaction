sprite_index = sDummyHurt;
alarm[0] = 30;
hsp = other.knockback * other.knockback_dir;

var soundplayed = audio_is_playing(snDamage1);

if(!soundplayed) {
audio_play_sound(snDamage1,0,0);
}