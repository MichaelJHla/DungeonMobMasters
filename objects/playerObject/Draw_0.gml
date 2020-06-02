draw_self(); //Needed to be able to redraw the object properly

draw_sprite(emptyHealthSprite, 0, x-20, y-30);//Draws the red background of the health
draw_sprite_stretched(filledHealthSprite, 0, x-20, y-30, 4*hp, 4);//Draws the current health level