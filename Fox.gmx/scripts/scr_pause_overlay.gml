///pause overlay
if (global.paws)
{
    draw_set_colour(c_black);
    draw_set_alpha(0.5);
    draw_rectangle(0,0,room_width,room_height,0);
    draw_set_halign(fa_center);
    draw_set_font(font_menu);
    draw_set_colour(c_white);
    draw_set_alpha(1);
    draw_text(room_height/2, room_width/2,"Paused");
    draw_set_colour(c_black);
    
    
}
