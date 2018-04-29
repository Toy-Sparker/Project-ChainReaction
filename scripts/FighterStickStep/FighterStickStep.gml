#region Calculating speeds

hsp += acc * move_side;

#endregion

#region Check ground for jumping

if(place_meeting(x,y+1,parCollide)) {
	if(key_jump) vsp -= jump_spd;
}

#endregion

#region Moves

FighterStickCallMoves();

#endregion

sprite_index = sFighterStickWalk;