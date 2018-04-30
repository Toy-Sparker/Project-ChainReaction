#region Check for jumping
if(onground) {
	if(key_jump) vsp -= jump_spd;
}

#region Wall Jump

if(onwall != 0) && (!onground) && (key_jump) {
	jump_wall_delay = jump_wall_delay_max;
	hsp = -onwall * jump_wall_hsp;
	vsp -= jump_wall_vsp;
}
#endregion

#endregion

#region Moves

FighterStickCallMoves();

#endregion