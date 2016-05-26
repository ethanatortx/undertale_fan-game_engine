/// scr_rain_circle
rad = argument0;
xcent = argument1;
ycent = argument2;

var rot = random(360);
var dist = random(rad);

var xn = lengthdir_x(dist,rot);
var yn = lengthdir_y(dist,rot);

part_particles_create(global.rain_part_sys,xn,yn,global.rain_part,1);
