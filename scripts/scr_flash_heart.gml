/// scr_flash_heart

if (heart_tick_count < 3 && alarm[0] <= 0) {
    
    temp_alpha = 1;
    alarm[0] = 5;
    audio_play_sound(snd_fight_flashingheart,10,false);
    heart_tick_count += 1;
    
} else if (heart_tick_count < 3 && alarm[0] <= 3) {
    
    temp_alpha = 1;
    
} else if (heart_tick_count < 3) {
    
    temp_alpha = 0;
    
} else if (alarm[0] <= 0) {
    heart_flashing = 0;
    audio_play_sound(snd_fight_enterfight,10,false);

}

return temp_alpha;
