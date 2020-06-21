//When the enemy object is destroyed, remove it from the enemy list
//When this happens, every enemy that comes after this one will go up in index by one
ds_list_delete(global.enemyList, ds_list_find_index(global.enemyList, id));