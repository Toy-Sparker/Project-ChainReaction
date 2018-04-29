/// @desc Create Damage
if(state != FighterStickStep) {

	//var _damage = instance_create_layer(x + xx,y + yy,"Damage",oDamage);
	
	// Create Damage for Punching
	if(state = FighterStickMovePunch) {

		FighterCreateDamage(48, 0, 0.75, 0.75, 4, 10);

	}
	
	// Create Damage for Kicking
	if(state = FighterStickMoveKick) {
	
		FighterCreateDamage(36, 8, 0.8, 0.8, 4, 10);
	
	}
}