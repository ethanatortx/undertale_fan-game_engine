/// scr_rain_circle
rad = argument0;
xcent = argument1;
ycent = argument2;

rot = random(360);
dist = random(rad);

xn = xcent + lengthdir_x(dist,rot);
yn = ycent + lengthdir_y(dist,rot);

part_particles_create(global.rain_part_sys,xn,yn,global.rain_part,1);
