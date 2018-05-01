/// Check for Damage and if they should take damage
var _damage = instance_nearest(x,y,oDamage);

if(place_meeting(x,y,_damage)) {
	if(_damage.creator != id) {
		hp -= Approach(hp,0,_damage.damage);
		hsp = other.knockback * other.knockback_dir;
		
		var soundplayed = audio_is_playing(snDamage1);
		
		if(!soundplayed) {
			audio_play_sound(snDamage1,0,0);
		}
	}
}