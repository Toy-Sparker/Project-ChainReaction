/// Check for Damage and if they should take damage

if(place_meeting(x,y,oDamage)) {
	if(other.creator != id) hp -= Approach(hp,0,other.damage);
}