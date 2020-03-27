/// @description time flow


if(state == state.running){

	global.time += 1/240;

}

if(minute(global.time)<10){
	
	s_time = string(hour(global.time))+":0"+string(minute(global.time));
	
}else{
	
	s_time = string(hour(global.time))+":"+string(minute(global.time));
	
}
