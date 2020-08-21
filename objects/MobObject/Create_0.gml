// Inherit the parent event
event_inherited();

//This represents if this is the actively selected mob.
//By defualt this value is set to false until the LevelLogic says otherwise
selected = false;

//When created, add the id of this object to the list of mobs in the level
ds_list_add(LevelLogic.mobList, id);

//Handles the shader
upixelW = shader_get_uniform(WhiteOutlineShader, "pixelW");
upixelH = shader_get_uniform(WhiteOutlineShader, "pixelH");
texelW = texture_get_texel_width(sprite_get_texture(MobSprite, 0));
texelH = texture_get_texel_height(sprite_get_texture(MobSprite, 0));