mouseX = mouse_x;
mouseY = mouse_y;

leftMouseButtonWasPressed = mouse_check_button_pressed(mb_left);

moveCameraHorizontal = keyboard_check(ord("D")) - keyboard_check(ord("A"));
moveCameraVertical = keyboard_check(ord("S")) - keyboard_check(ord("W"));
