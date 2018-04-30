// Checking if we finished moves
if(state = FighterStickMovePunch) state = FighterStickStep;
if(state = FighterStickMoveKick) state = FighterStickStep;
if(state = FighterStickMoveAerialPunch) state = FighterStickStep;

// Destroy Damage object as moves
with(oDamage) {
	if(creator = other.id) {
		instance_destroy();
	}
}