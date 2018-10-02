/// draw hearts
var xoffset = 48;

// for loop
for (var i=0; i<obj_fox.hp; i++)
{
    draw_sprite(spr_heart, 0, xstart+(xoffset*i), ystart)
}

//set size of gui layer
display_set_gui_size(view_wview[0], view_hview[0]);
