/// scr_interactbattle
playerx = obj_player_battle.x;
playery = obj_player_battle.y;

// area to check
checkx = argument0;
checky = argument1;

if (playerx == checkx && playery == checky) {
    return true;
}
