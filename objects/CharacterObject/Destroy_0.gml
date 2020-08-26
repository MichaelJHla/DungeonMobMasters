//This for loop destroys all weapons that the given character has
for (var i = 0; i < array_length(weapons); i++){
	with (weapons[i]){
		instance_destroy();
	}
}