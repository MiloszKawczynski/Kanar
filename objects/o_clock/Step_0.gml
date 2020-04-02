/// @description time flow


if(state == state.running){

	global.time += 1/240;

}

if(minute(global.time)<10){
	
	s_time = string(hour(global.time))+":0"+string(minute(global.time));
	
}else{
	
	s_time = string(hour(global.time))+":"+string(minute(global.time));
	
}

if room==r_test and global.arrive_time_hour==hour(global.time) and global.arrive_time_minute==minute(global.time)
{
	room_goto(r_map);
}