if(key_punch) {
	if(place_meeting(x,y+1,parCollide)) {
		alarm[0]=10;
		image_speed = 1;
		state = FighterStickMovePunch;
	}
}

if(key_kick) {
	if(place_meeting(x,y+1,parCollide)) {
		alarm[0]=10;
		image_speed = 1;
		state = FighterStickMoveKick;
	}
}