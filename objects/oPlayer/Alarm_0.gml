/// @desc Create Damage
if(state = FighterStickMovePunch) {
	with(instance_create_layer(x + xx,y,"Damage",oDamage)) {
		creator = other.id;
		knockback_dir = sign(other.image_xscale);
		knockback = 2;
		image_xscale = 0.75;
		image_yscale = 0.75;
	}
}

if(state = FighterStickMoveKick) {
	with(instance_create_layer(x + xx,y + yy,"Damage",oDamage)) {
		creator = other.id;
		knockback_dir = sign(other.image_xscale);
		knockback = 4;
		image_xscale = 1;
		image_yscale = 0.8;
	}
}