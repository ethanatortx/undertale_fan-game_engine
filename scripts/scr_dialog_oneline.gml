/// scr_dialog_ext

// called in step event, create with that in mind

// if dialog is happening; do this whole thing
if (is_talking) {
    if (characters < line_length) {
        if (!keyboard_check_pressed(ord("X"))) {
            
            // iterate down the pause timer
            if (count_of_pause > 0 && pause_talking) {
                count_of_pause -= 1;
            } else { // add dialog to the drawn text var
                characters += talking_speed // increase the character count based on the specified display speed
                pause_talking = false // no longer paused
            }

            // check if the current character is a period
            if (string_char_at(dialog_line, characters) == "." && !pause_talking) {
                count_of_pause = 10; // pause for ten frames
                pause_talking = true; // boolean indicating pause
                no_speech_sound = true; // pause the dialog speech sound
                alarm_set(6,5); // set a buffer for the no_speech_sound switch
            }
            
            // take a pause at a comma for 5
            if (string_char_at(dialog_line, characters) == "," && !pause_talking) {
                count_of_pause = 5; // pause for five frames
                pause_talking = true; // boolean indicating pause
                no_speech_sound = true; // pause the dialog speech sound
                alarm_set(6,5); // set a buffer for the no_speech_sound switch
            }
            
            // add text to the currently drawn line
            current_drawn_text = string_copy(dialog_line,1,characters);
            
            // start playing the speech sound again if it is not during a pause and the buffer has run out
            if (alarm_get(6) <= 0) {
                if (!pause_talking) {
                    no_speech_sound = false;
                }
            }
            
            // play the speech sound at designated frequency
            if ((10*characters) % speech_frequency == 0 && !no_speech_sound) {
                audio_play_sound(speech_sound,10,false);
            }
        } else if (keyboard_check_pressed(ord("X"))) {
            current_drawn_text = dialog_line;
            characters = line_length;
        }
    } else if (keyboard_check_pressed(vk_enter)) {
        is_talking = false; // all dialog has happened
        characters = 0;
        current_drawn_text = ""; // no text is drawn
    }
}
