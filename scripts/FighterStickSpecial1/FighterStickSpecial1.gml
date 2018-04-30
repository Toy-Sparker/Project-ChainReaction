/// Fighter Stick Special - Double Stretch
sprite_index = sFighterStickSpecial1;

if(image_index >= 7) {
	// Destroy Damage object as moves
	with(oDamage) {
		if(creator = other.id) {
			instance_destroy();
		}
	}	
}