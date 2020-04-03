/// @description Insert description here
// You can write your code in this editor

//rhythm tracker
if(delay <= 0 + frames_valid && delay >= 0 - frames_valid){
	beat_valid = true;
	
}
else if(delay<0-frames_valid){
	delay = room_speed/(bpm/60);
	beat_valid = false;	
}

delay--;

//create beat tracker gui

if(orb == noone){
	orb = instance_create_layer(x,y, "Instances", objorb);
}

if(delay == room_speed/(bpm/60)-1){
	var bar_r = instance_create_layer(x+5*delay, y, "Instances", objwave);
	var bar_l = instance_create_layer(x-5*delay, y, "Instances", objwave);
	bar_l.image_xscale = -1;
	
	//show_debug_message(bar_r.x);
	
	bar_r.x = lerp(x,y, .1);
	bar_l.x = lerp(x,y, .1);
}

//show_debug_message(beat_valid);



//state machine for player movement