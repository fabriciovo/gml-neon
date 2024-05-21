juice_draw_event(x,y)

//DRAW COLLISION MASK
draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,c_yellow,c_yellow,c_yellow,c_yellow,1);
//DRAW X/Y
draw_circle_colour(x,y,1,c_green,c_green,0);

draw_text(x,y, string(other_hspd))