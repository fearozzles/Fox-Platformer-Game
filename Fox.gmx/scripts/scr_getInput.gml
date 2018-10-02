if(global.paws) exit;

//Get the player's input
key_right = keyboard_check(vk_right);
key_left = -keyboard_check(vk_left);
key_jump_hold = keyboard_check(vk_space);
key_jump = keyboard_check_pressed(vk_space);

//React to inputs
move = key_left+key_right;
hsp = move * movespeed;
if (vsp < 15) vsp += grav;

if (place_meeting(x,y+1,obj_wall)) 
{
    vsp = key_jump * -jumpspeed;
}

//Horizontal collision
if (place_meeting(x+hsp,y,obj_wall)) 
{
     while(!place_meeting(x+sign(hsp),y,obj_wall))
     {
          x += sign(hsp);
     }
     hsp = 0;
}
x += hsp;

//Vertical collision
if (place_meeting(x,y+vsp,obj_wall))
{
    while(!place_meeting(x,y+sign(vsp),obj_wall))
    {
        y += sign(vsp);
    }
    vsp = 0;
 
 if(vsp <0) && (! key_jump_hold) vsp = max(vsp, 0)
}
y +=vsp;

//Animate
if (move!=0) image_xscale = move;
if(place_meeting(x,y+1,obj_wall))
{
    if (move!=0) sprite_index = spr_run; else sprite_index = spr_Idle;
}
else
{
    if (vsp <0)
    {
        sprite_index = spr_jump;
        foxJump = false;
    }
    else
    {
        sprite_index = spr_fall;
        foxJump = true;
    }
}
