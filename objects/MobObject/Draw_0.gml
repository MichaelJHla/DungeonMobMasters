//If the mob is currently selected, then draw the shader around it
// otherwise draw without the shader
if (selected){
	shader_set(WhiteOutlineShader);
	shader_set_uniform_f(upixelW, texelW);
	shader_set_uniform_f(upixelH, texelH);
	draw_self();
	shader_reset();
} else {
	draw_self();
}

draw_text(x, y, ds_list_find_index(LevelLogic.mobList, id) + 1);