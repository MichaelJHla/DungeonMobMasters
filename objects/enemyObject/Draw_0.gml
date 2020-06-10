draw_self(); //Needed to be able to redraw the object properly

//This is used to draw the health bar
draw_sprite(emptyHealthSprite, 0, x-20, y-30);
draw_sprite_stretched(filledHealthSprite, 0, x-20, y-30, 4*hp, 4);