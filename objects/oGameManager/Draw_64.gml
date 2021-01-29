if (!gameIsPaused) {
	exit;
}

draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_color(c_red);
draw_text(oCamera.VIEW_WIDTH / 2, oCamera.VIEW_HEIGHT, "PAUSED");
