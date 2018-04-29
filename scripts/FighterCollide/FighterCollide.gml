#region Check Collisions

// Horizontal
if(place_meeting(x+hsp,y,parCollide)) {
	while(!place_meeting(x+sign(hsp),y,parCollide)) x += sign(hsp);
	hsp = 0;
}
x += hsp;

// Vertical
if(place_meeting(x,y+vsp,parCollide)) {
	while(!place_meeting(x,y+sign(vsp),parCollide)) y += sign(vsp);
	vsp = 0;
}
y += vsp;

#endregion