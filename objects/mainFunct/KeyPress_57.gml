//This first line detects if a val exists at this index
var indexDNE = is_undefined(ds_list_find_value(global.enemyList, 8));

//If an object exists at this index, then assign the index based on the keyboard input
if (!indexDNE){
	index = 8;
}