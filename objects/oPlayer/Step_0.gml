#region Key & Input

key_left = keyboard_check_direct(ord("A"));
key_right = keyboard_check_direct(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
key_punch = keyboard_check_pressed(vk_up);
key_kick = keyboard_check_pressed(vk_down);

#endregion

#region Calculating Movement 

// Horizontal
jump_wall_delay = max(jump_wall_delay-1,0);

if(jump_wall_delay == 0) {
	var move_side = key_right - key_left;
	
	if(state = FighterStickStep) {
		hsp += acc * move_side;
	}
	
	hsp = clamp(hsp,-spd,spd);
	hsp = Approach(hsp,0,fric);
}

// Vertical
var grv_final = grav;
var vsp_max_final = grav_max;

if(onwall != 0) && (vsp > 0) {
	grv_final = grav_wall;
	vsp_max_final = grav_wall_max;
}
vsp += grav;
vsp = clamp(vsp,-vsp_max_final,vsp_max_final);

onground = place_meeting(x,y+1,parCollide);
onwall = place_meeting(x+1,y,parCollide) - place_meeting(x-1,y,parCollide);



FighterCollide();

#endregion

#region Image Control

if(state == FighterStickStep) {

	if(onground) {
		sprite_index = sFighterStickWalk;
		if(hsp != 0) {
			image_speed = 1;
		} else {
			image_speed = 0;
		}
	} else if(!onground) {
		if(onwall != 0) {
			sprite_index = sFighterStickAir;
			image_xscale = onwall;
		} else {
			sprite_index = sFighterStickAir;
			image_speed = 0;
		}	
	}
}

if(hsp != 0) image_xscale = sign(hsp);
 
#endregion 

#region Take Damage

FighterTakeDamage();

#endregion

#region Special Control

FighterStickCallSpecials();
if(special_delay > 0) special_delay=max(special_delay-1,0);

#endregion

// Execute State
script_execute(state);

// Restart game
if(keyboard_check_pressed(ord("R"))) game_restart();