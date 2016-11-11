///scr_text("Text", spd, x, y);
// where spd is the speed the text is shown
// x and y is the position on the map it will be shown
// 0,0 is top left
// 0, 1080 (ish) is bottom left
// 1920 (ish), 0 is top right

/*
arg0 = speed of text    arg4 = test
arg1 = x coord          arg5 = color of speaker
arg2 = y coord          arg6 = color of text
arg3 = speaker
*/
myX = view_xview[0];
myY = view_yview[0];
speaker = instance_create(myX + argument1, myY + argument2, obj_text);
text = instance_create(myX + argument1, myY + argument2+(1.5*font_get_size(fnt)), obj_text);
// we dont care where this one is created?
text_background = instance_create(myX + 81.5, myY + 10, obj_text_background);
//instance_create()




with (speaker)
{
    // rectangle on right side is 206 by 25
    maxlength = 190; // the number of pixels before we start a new line
    text = argument3;
    spd = argument0;
    font = fnt;
    
    font_color = argument5;
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    draw_set_font(font);
    
}

with (text)
{
    // rectangle on right side is 206 by 25
    maxlength = 190; // the number of pixels before we start a new line
    text = argument4;
    spd = argument0;
    font = fnt;
    
    font_color = argument6;
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    draw_set_font(font);
    
}

