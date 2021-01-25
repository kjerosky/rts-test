var leftMouseButtonWasPressed = oInput.leftMouseButtonWasPressed;

if (state == PersonState.IDLE && leftMouseButtonWasPressed) {
	state = PersonState.WALKING;
} else if (state == PersonState.WALKING && x == walkTargetX && y == walkTargetY) {
	state = PersonState.IDLE;
}

switch (state) {
	case PersonState.IDLE: {
		sprite_index = sPersonIdle;
		image_index = lastCardinalDirection;
	} break;
	
	case PersonState.WALKING: {
		if (leftMouseButtonWasPressed) {
			walkTargetX = oInput.mouseX;
			walkTargetY = oInput.mouseY;
		}
		
		var walkDirection = point_direction(x, y, walkTargetX, walkTargetY);
		var cardinalDirection = floor(((walkDirection + 45) % 360) / 90);		
		switch (cardinalDirection) {
			case CardinalDirection.RIGHT: {
				sprite_index = sPersonWalkRight;
			} break;

			case CardinalDirection.UP: {
				sprite_index = sPersonWalkUp;
			} break;

			case CardinalDirection.LEFT: {
				sprite_index = sPersonWalkLeft;
			} break;

			case CardinalDirection.DOWN: {
				sprite_index = sPersonWalkDown;
			} break;
		}
		
		lastCardinalDirection = cardinalDirection;
		
		if (point_distance(x, y, walkTargetX, walkTargetY) <= WALK_SPEED) {
			x = walkTargetX;
			y = walkTargetY;
		} else {
			x += lengthdir_x(WALK_SPEED, walkDirection);
			y += lengthdir_y(WALK_SPEED, walkDirection);
		}
	} break;
}
