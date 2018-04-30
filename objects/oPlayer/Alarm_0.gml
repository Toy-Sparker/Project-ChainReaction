/// @desc Create Damage
if(state != FighterStickStep) {	
	// Create Damage for Punching
	if(state = FighterStickMovePunch) {
		FighterCreateDamage(48, 0, 0.75, 0.75, 4, 10);
	// Aerial Punching
	} else if(state = FighterStickMoveAerialPunch) {
		FighterCreateDamage(48, 8, 0.75, 0.8, 4, 10);	
	}
	
	// Create Damage for Kicking
	if(state = FighterStickMoveKick) {
		FighterCreateDamage(36, 8, 0.8, 0.8, 4, 10);
	}
	
	// Create Damage for Special 1
	if(state = FighterStickSpecial1) {
		
		// Left
		FighterCreateDamage(-36, 0, 1, 1, 12, 30);
		
		// Right
		FighterCreateDamage(36, 0, 1, 1, 12, 30);
	}
	
}