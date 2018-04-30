///Fighter Stick Move - Kick
var kick_acc = 0.8;

if(image_index >= 1) hsp += kick_acc * sign(image_xscale);

sprite_index = sFighterStickKick;

if(image_index >= 2) {
	// Destroy Damage object as moves
	with(oDamage) {
		if(creator = other.id) {
			instance_destroy();
		}
	}	
}