moved = 0 //Used in some modes to check if any block moved this step.
moves = ""
time = 0 //Just a dummy, is replaced by the room creation code
alarm[0] = 60
valid = false //Contains whether the current move is valid.
matches = 0 //Amount of total valid matches made
gemsmatched = 0 //Total amount of gems included in all valid matches

__background_set( e__BG.Visible, 1, true ); 
__background_set( e__BG.Alpha, 1, 0.95 ); 
__background_set( e__BG.HSpeed, 0, -0.1 )
alarm[11] = 1
draw_set_font(f_droidmono20)

if audio_is_playing(mus_menu) 
{
    audio_stop_all();
    
    startmusic();
}

if zenabled() {mantra = rndmmantra(); alarm[10] = seconds(30)}
else if ascentabled() {raisespeed = 20; alarm[9] = raisespeed}
else if tunnelabled() {movesleft = 20}
else if decenabled()  {fallspeed = seconds(1); alarm[8] = fallspeed}

if global.coloricon
__background_set( e__BG.Alpha, 0, 0.5 ) //Colorblind thingy, more contrast

mouse_clear(mb_left); mouse_clear(mb_right); 

amount = 1;
movenr = 1;
