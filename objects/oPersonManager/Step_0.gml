var mouseX = oInput.mouseX;
var mouseY = oInput.mouseY;
var addPersonWasPressed = oInput.addPersonWasPressed;
var selectWasPressed = oInput.selectWasPressed;
var executeWasPressed = oInput.executeWasPressed;

if (addPersonWasPressed) {
	instance_create_layer(mouseX, mouseY, "Instances", oPerson);
}

if (selectWasPressed) {
	selectedPerson = collision_point(mouseX, mouseY, oPerson, false, true);
}

if (executeWasPressed && selectedPerson != noone) {
	selectedPerson.hasWalkTarget = true;
	selectedPerson.walkTargetX = mouseX;
	selectedPerson.walkTargetY = mouseY;
}
