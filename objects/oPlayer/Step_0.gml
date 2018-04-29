key_left = keyboard_check_direct(ord("A"));
key_right = keyboard_check_direct(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
key_punch = keyboard_check_pressed(vk_up);
key_kick = keyboard_check_pressed(vk_down);

move_side = key_right - key_left;

hsp = clamp(hsp,-spd,spd);
vsp += grav;
vsp = clamp(vsp,-grav_max,grav_max);

FighterCollide();

#region Image Control

if(state = FighterStickStep) {
	if(hsp != 0) image_speed = 1; else image_speed = 0;
} else {
image_speed = 1; 
}

if(hsp > 0) image_xscale = 1;
if(hsp < 0) image_xscale = -1;

#endregion 

// Execute State
script_execute(state);

// Decelerate
hsp = Approach(hsp,0,fric);

// Restart game
if(keyboard_check_pressed(ord("R"))) game_restart();