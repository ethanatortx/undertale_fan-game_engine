/// scr_encounterstart
if (encounter_start = true) { // set to true by scr_encounter, it allows this stage of the func to run
    if (alarm[0] <= 0 && heart_tick_count < 4) { 
        
        alarm[0] = 5; // set the countdown to 5 steps
        heart_tick_count +=1 // increase the total count of ticks shown on screen
        audio_play_sound(snd_fight_flashingheart,10,false); // play the sound for the initial ticks
        image_alpha = 1; // set the heart to visible
        
    } else if (alarm[0] <=3 && heart_tick_count < 4) {
        
        image_alpha = 1; // set the heart to visible
    
    } else if (heart_tick_count < 4) {
    
        image_alpha = 0; // set the heart to invisible
    
    } else {

        encounter_start = false; // change the fase of the encounter ...
        encounter_transition = true; // ... to encounter_transition (or second)
        image_alpha = 1; // set the heart to a visible state
        alarm[2] = 1; 
        audio_play_sound(snd_fight_enterfight,10,false); // play the final enter fight noise
    
    }
}
