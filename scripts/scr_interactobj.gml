/// scr_interactobj
playerx = obj_player_main.playerpos[0];
playery = obj_player_main.playerpos[1];
objx = argument0; // x position of object that this is called in
objy = argument1; // y position ''

// initialize the 'facing side' variables
var facingl = false;
var facingr = false;
var facingu = false;
var facingd = false;

instanceid = id; // get instance id of obj this is called 
var height = instanceid.sprite_height; // get hight of instance this is called in
var width = instanceid.sprite_width; // get width of instance this is called in

// get apothem of instance center to the bounding box (defined as 20 pcx from edge of instance sprite)
var xdist = (width/2) + 20;
var ydist = (height/2) + 20;

// gets boundary lines for all sides of the instance
var xleft = argument0 - xdist; // left boundary line
var xright = argument0 + xdist; // right boundary line
var yup = argument1 - ydist; // upward boundary line
var ydown = argument1 + ydist; // downward boundary line

if ((playerx < xright) && (playerx > (argument0 + width/2) - 5) && (obj_player_main.sprite_index == spr_main_left)) { // facing left towards obj
    var facingl = true // is facing left
}

if ((playerx > xleft) && (playerx < (argument0 - width/2) + 5) && (obj_player_main.sprite_index == spr_main_right)) { // facing right towards obj
    var facingr = true // is facing right
}

if ((playery < ydown) && (playery > (argument1 + height/2) - 5) && (obj_player_main.sprite_index == spr_main_up)) { //facing up towards obj
    var facingu = true // is facing up
}

if ((playery > yup) && (playery < (argument1 - height/2) + 5) && (obj_player_main.sprite_index == spr_main_down)) {  //facing down towards obj
    var facingd = true // is facing down
}

if (facingd or facingu or facingl or facingr) { // return true if player is facing one side of the object and is close enough to activate
    return true
}
