hsp = clamp(hsp,-spd,spd);

FighterCollide();

hsp = Approach(hsp,0,fric);

if(hsp > 0) image_xscale = 1;
if(hsp < 0) image_xscale = -1;