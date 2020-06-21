//Mouse wheel up is designed to raise the current indexed character
if (index >= ds_list_size(global.enemyList) - 1){//This is to handle overflow
	index = 0;
} else {
	index++;
}