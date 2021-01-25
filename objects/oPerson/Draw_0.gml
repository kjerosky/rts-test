draw_self();

if (id != oPersonManager.selectedPerson) {
	exit;
}

var spriteWidth = sprite_get_width(sprite_index);
var spriteHeight = sprite_get_height(sprite_index);
var spriteOffsetX = sprite_get_xoffset(sprite_index);
var spriteOffsetY = sprite_get_yoffset(sprite_index);

var boxLeftX = x - spriteOffsetX - 1;
var boxRightX = x + (spriteWidth - spriteOffsetX) + 1;
var boxTopY = y - spriteOffsetY - 1;
var boxBottomY = y + (spriteHeight - spriteOffsetY) + 1;

draw_set_color(c_lime);
draw_rectangle(boxLeftX, boxTopY, boxRightX, boxBottomY, true);

if (hasWalkTarget) {
	draw_line(x, y, walkTargetX, walkTargetY);
	draw_rectangle(walkTargetX, walkTargetY, walkTargetX, walkTargetY, false);
}
