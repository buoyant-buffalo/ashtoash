///scr_text("Text", spd, x, y);
// where spd is the speed the text is shown
// x and y is the position on the map it will be shown
// 0,0 is top left
// 0, 1080 (ish) is bottom left
// 1920 (ish), 0 is top right
txt = instance_create(argument2, argument3, obj_text);

with (txt)
{
    padding = 16;
    maxlength = view_wview[0];
    text = argument0;
    spd = argument1;
    font = fnt;
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    draw_set_font(font);
    
    text_width = string_width_ext(text, font_size+(font_size/2), maxlength);
    text_height = string_height_ext(text, font_size+(font_size/2), maxlength);
    
    box_width = text_width + (padding*2);
    box_height = text_height + (padding*2);
}    
