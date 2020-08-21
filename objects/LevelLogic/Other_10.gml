/// @description Switch the selection to the proper character
//This for loop makes the proper mob selected and does not select the others
for (i = 0; i < ds_list_size(mobList); i++){
	if (i == curIndex){
		ds_list_find_value(mobList, i).selected = true;
	} else {
		ds_list_find_value(mobList, i).selected = false;
	}
}