///Fighter Stick Move - Kick
var kick_acc = 0.8;

if(image_index >= 1) hsp += kick_acc * sign(image_xscale);

sprite_index = sFighterStickKick;