enum PersonState {
	IDLE,
	WALKING
};

enum CardinalDirection {
	RIGHT,
	UP,
	LEFT,
	DOWN
};

WALK_SPEED = 0.5;

state = PersonState.IDLE;
lastCardinalDirection = CardinalDirection.DOWN;

walkTargetX = -1;
walkTargetY = -1;
