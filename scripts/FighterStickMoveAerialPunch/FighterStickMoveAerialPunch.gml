/// Fighter Stick Move - Aerial Punch
var jump_boost = 0.2;
var punch_acc = 1.5;

if(image_index >= 1) {
	hsp += punch_acc * sign(image_xscale);	
	vsp -= jump_boost;
}

sprite_index = sFighterStickAerialPunch;

if(image_index >= 3) {
	// Destroy Damage object as moves
	with(oDamage) {
		if(creator = other.id) {
			instance_destroy();
		}
	}	
}