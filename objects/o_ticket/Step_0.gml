/// @description ticket movement

//slide at the beggining
if(slide == true)
if(speed > 0){

    speed -= 0.4;

}else{

    pickable = true;
    slide = false;

}

//moving the ticket
if(pickable == true){

    if(mouse_check_button_pressed(mb_left) && state == state.free){
    
        if(collision_point(mouse_x,mouse_y,id,0,0)){
        
            state = state.picked;
            
            pick_offset_x = x - mouse_x;
            pick_offset_y = y - mouse_y;
            
        }
    
    }
    
    if(state == state.picked && mouse_check_button_released(mb_left)){
    
        state = state.free;
    
    }

}

if(state == state.picked){

    x = mouse_x + pick_offset_x;
    y = mouse_y + pick_offset_y;

}

