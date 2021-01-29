mouseX = mouse_x;
mouseY = mouse_y;

selectWasPressed = mouse_check_button_pressed(mb_left);
executeWasPressed = mouse_check_button_pressed(mb_right);

moveCameraHorizontal = keyboard_check(ord("D")) - keyboard_check(ord("A"));
moveCameraVertical = keyboard_check(ord("S")) - keyboard_check(ord("W"));

addPersonWasPressed = keyboard_check_pressed(ord("B"));
pauseWasPressed = keyboard_check_pressed(vk_space);
