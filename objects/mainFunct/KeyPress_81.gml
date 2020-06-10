//Pressing Q is designed to lower the current indexed character
if (index <= 0){//This is to handle overflow 
	index = ds_list_size(global.enemyList) - 1;
} else {
	index--;
}