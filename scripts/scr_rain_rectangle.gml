/// scr_rain_rectangle
xlim = argument0;
ylim = argument1;
xorig = argument2;
yorig = argument3;
var xn = xorig + (xlim / 2) - random(xlim);
var yn = yorig + (ylim / 2) - random(ylim);

part_particles_create(global.rain_part_sys,xn,xy,global.rain_part,1);
