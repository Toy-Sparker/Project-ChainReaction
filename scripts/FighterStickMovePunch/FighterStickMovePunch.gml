/// Fighter Stick Move - Punch
var punch_acc = 1;

if(image_index >= 2) 
hsp += acc * sign(image_xscale);

sprite_index = sFighterStickPunch;

if(image_index >= 4) {
	// Destroy Damage object as moves
	with(oDamage) {
		if(creator = other.id) {
			instance_destroy();
		}
	}	
}