// Inherit the parent event
event_inherited();

draw_text(x, y, ds_list_find_index(global.enemyList, id)+1);

//When the character is selected, the highlight sprite surronds the player
if (clicked){
	draw_sprite(characterHighlightSprite, -1, x, y);
}