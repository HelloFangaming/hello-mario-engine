///scr_canpull()

/*
**  Usage:
**      scr_canpull()
**
**  Returns:
**      Whether or not Mario is able to start pulling on a Subcon item.
*/
if not instance_exists(obj_mario)
    return false
if keyboard_check_pressed(vk_control)
and obj_mario.holding = 0
and obj_mario.isduck = 0
and obj_mario.state < 2
and obj_mario.vspeed > -0.1
and not instance_exists(obj_slider)
    return true
else
    return false
