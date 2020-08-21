for (i = 0; i < ds_list_size(mobList); i++){
	if (i == curIndex){
		ds_list_find_value(mobList, i).selected = true;
	} else {
		ds_list_find_value(mobList, i).selected = false;
	}
}

if (keyboard_check(ord("1"))){
	if (ds_list_size(mobList) >= 1){
		curIndex = 0;
	}
} else if (keyboard_check(ord("2"))){
	if (ds_list_size(mobList) >= 2){
		curIndex = 1;
	}
} else if (keyboard_check(ord("3"))){
	if (ds_list_size(mobList) >= 3){
		curIndex = 2;
	}
} else if (keyboard_check(ord("4"))){
	if (ds_list_size(mobList) >= 4){
		curIndex = 3;
	}
} else if (keyboard_check(ord("5"))){
	if (ds_list_size(mobList) >= 5){
		curIndex = 4;
	}
} else if (keyboard_check(ord("6"))){
	if (ds_list_size(mobList) >= 6){
		curIndex = 5;
	}
} else if (keyboard_check(ord("7"))){
	if (ds_list_size(mobList) >= 7){
		curIndex = 6;
	}
} else if (keyboard_check(ord("8"))){
	if (ds_list_size(mobList) >= 8){
		curIndex = 7;
	}
} else if (keyboard_check(ord("9"))){
	if (ds_list_size(mobList) >= 9){
		curIndex = 8;
	}
}