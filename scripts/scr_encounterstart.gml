/// scr_encounterstart
if (encounter_start = true) {
    if (alarm[0] <= 0 && heart_tick_count < 4) {
        alarm[0] = 5;
        heart_tick_count +=1
        audio_play_sound(snd_fight_flashingheart,10,false);
        image_alpha = 1;
    } else if (alarm[0] <=3 && heart_tick_count < 4) {
        image_alpha = 1;
    } else if (heart_tick_count < 4) {
        image_alpha = 0;
    } else {
        encounter_start = false;
        encounter_transition = true;
        image_alpha = 1;
        alarm[2] = 1;
        audio_play_sound(snd_fight_enterfight,10,false);
    }
}
