/// scr_displaydialog

//argument0 - what character is talking
//characters : sans
scr_createfont();

// set original message length
message_length = string_length(message[message_current]);
// check if player is actually close enough to trigger dialog
dialogallowed = scr_interactobj(x,y);
if (dialogallowed == true) { // if player can trigger dialog, it checks if they press enter
    if (keyboard_check_pressed(vk_enter)) {
        obj_player_main.image_index = 0; // stand straight
        obj_player_main.image_speed = 0; // stop moving
        global.dialog = true; // can go ahead with dialog
    }
}


if (global.dialog && dialogallowed) {
    // draw/write text
    draw = true;
    if (argument0 == "sans") {
        char = scr_sansmap();
        mapid = "scr_sansmap()";
    } else if (argument0 == "chara") {
        char = scr_charamap();
        mapid = "scr_sansmao()";
    }
    if (characters < message_length) { // checks if the whole thing has been written, if not it writes more text each step
        
        if (emotion_currentnum < array_length_1d(emotions)) {
            emotion_current = ds_map_find_value(char,emotions[emotion_currentnum]); // set the emotion to be displayed to the correct one provided via the character map that was generated
        }
        
        if (keyboard_check_pressed(ord("X")) == true) { // pressing X skips through dialog
            message_draw = message[message_current];
            characters = message_length;
            
        } else { // normal display of characters
            
            if (string_char_at(message[message_current],characters) == (".") && takepause = false) { // checks to see if there is a period (to take a pause)
                pausecount = 10;
                takepause = true;
            }
            
            if (string_char_at(message[message_current],characters) == (",") && takepause = false) { // takes a shorter pause on commas
                pausecount = 5;
                takepause = true;
            }
            
            if (pausecount > 0 && takepause = true) { // if pausecount is higher than zero, then it takes a pause
                pausecount -= 1; // counts down the pause timer
                pausetalk = true; // pauses dialog voice
                
            } else {
                characters += increase; // when pause is over, resume char increase
                pausecount = 5; // reset the pause timer for the next time
                talkcount += 10; // and resume speech fequency count
                pausetalk = false; // resume dialog voice
                takepause = false;
            }
            
            if (talkcount % ds_map_find_value(char,"talkspeed") == 0 && pausetalk == false) { // every how many frames (argument1) do they talk
                audio_play_sound(ds_map_find_value(char,"voice"),10,false); // talk in the specified voice
            }
            
            message_draw = string_copy(message[message_current],0,characters); // set the dialog to be drawn CURRENTLY in the draw_gui event for the object this is called in
        }
        
    } else if (message_current < (message_end-1) && (keyboard_check_pressed(vk_enter))) { // checks if everything is ready to proceed to the next peice of dialog
            asterisks = "*"
            message_current += 1; // switches to the next stored dialog
            emotion_currentnum += 1 // switched to the next face in the character's map
            message_length = string_length(message[message_current]); // and erases the text written by last step of script
            characters = 0;
            message_draw = "";
    } else if (keyboard_check_pressed(vk_enter)) { // if there is no more dialog, then it deletes dialog box and text, and resets message vars to initial values
        global.dialog = false;
        draw = false;
        message_end = array_length_1d(message);
        message_length = string_length(message[message_current]);
        characters = 0;
        message_current = 0;
        emotion_current = emotions[0];
        emotion_currentnum = 0;
        ds_map_destroy(script_execute(mapid));
        if (font_exists(global.comicsans)) {
            font_delete(global.comicsans);
        }
    }
}













