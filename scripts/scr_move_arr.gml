//[#,0] is hspeed, [#, 1] is vspeed
//argument1 is max speed
//Will return a 1-d array with h and v speed in that order
//Anything consisting of more then 2 keys is ignored
arr[0,0] = 0;
arr[0,1] = 0;

//Down
arr[1,0] = 0;
arr[1,1] = argument1;

//Up
arr[2,0] = 0;
arr[2,1] = -argument1;

//Up + Down
arr[3,0] = 0;
if(oldArrow != argument0)
arr[3,1] = -vspeed;
else
arr[3,1] = vspeed;

//Right
arr[4,0] = argument1;
arr[4,1] = 0;

//Right + Down
arr[5,0] = argument1;
arr[5,1] = argument1;

//Right + Up
arr[6,0] = argument1;
arr[6,1] = -argument1;

//Right + Up + Down
arr[7,0] = argument1;
arr[7,1] = vspeed;

//Left
arr[8,0] = -argument1;
arr[8,1] = 0;

//Left + Down
arr[9,0] = -argument1;
arr[9,1] = argument1;

//Left + Up
arr[10,0] = -argument1;
arr[10,1] = -argument1;

//Left + Up + Down
arr[11,0] = -argument1;
arr[11,1] = vspeed;

// Left + Right
if(oldArrow != argument0)
arr[12,0] = -hspeed;
else
arr[12,0] = hspeed;
arr[12,1] = vspeed;

//Left + Right + Down
arr[13,0] = hspeed;
arr[13,1] = vspeed;

//Left + Right + Up
arr[14,0] = hspeed;
arr[14,1] = vspeed;

//Left + Right + Up + Down
arr[15,0] = hspeed;
arr[15,1] = vspeed;

//Assemble return array
arrfin[0] = arr[argument0, 0];
arrfin[1] = arr[argument0, 1];

//return movement speed array
oldArrow = argument0;
return arrfin;
