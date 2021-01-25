// We position the camera in the end step event because we should do so after all
// movement has completed.

#macro view view_camera[0]

camera_set_view_size(view, VIEW_WIDTH, VIEW_HEIGHT);

x += CAMERA_MOVE_SPEED * oInput.moveCameraHorizontal;
y += CAMERA_MOVE_SPEED * oInput.moveCameraVertical;

x = clamp(x, VIEW_WIDTH / 2, room_width - VIEW_WIDTH / 2);
y = clamp(y, VIEW_HEIGHT / 2, room_height - VIEW_HEIGHT / 2);
camera_set_view_pos(view, x - VIEW_WIDTH / 2, y - VIEW_HEIGHT / 2);
