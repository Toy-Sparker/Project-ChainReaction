#region Calculating speeds

hsp += acc * move_side;

#endregion

#region Check for jumping/walljumping
if(onground) {
	if(key_jump) vsp -= jump_spd;
} else {
}

#endregion

#region Moves

FighterStickCallMoves();

#endregion

sprite_index = sFighterStickWalk;