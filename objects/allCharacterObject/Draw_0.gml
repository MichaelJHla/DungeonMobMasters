draw_self(); //Needed to be able to redraw the object properly

//This is used to draw the health bar
draw_sprite(emptyHealthSprite, 0, x-sprite_get_width(emptyHealthSprite)/2, 
			y-sprite_height/2 - 3*sprite_get_height(emptyHealthSprite));
draw_sprite_stretched(filledHealthSprite, 0, x-sprite_get_width(emptyHealthSprite)/2, 
						y-sprite_height/2 - 3*sprite_get_height(emptyHealthSprite), 4*hp, 4);