/// Fighter Stick - Call Moves & Specials

if(key_punch) {
	if(onground) { // Move - Regular Punch
		alarm[0]=10;
		image_speed = 1;
		image_index = 0;
		state = FighterStickMovePunch;
	} else if(!onground) { // Move - Aerial Punch
		alarm[0]=10;
		image_speed = 1;
		image_index = 0;
		state = FighterStickMoveAerialPunch;
	}
} 

if(key_kick) {
	if(onground) { // Move - Regular Kick
		alarm[0]=10;
		image_speed = 1;
		image_index = 0;
		state = FighterStickMoveKick;
	} else if(!onground) { // Move - Aerial Kick
		
	}
}