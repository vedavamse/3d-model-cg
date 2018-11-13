float r = 0;
float posZ = 0;
int targetZ = 100;

void setup() {
size(400, 400, P3D);
}

void draw() {
background(80);
translate(mouseX, mouseY, posZ);
rotateY(sin(r));

box(50);
r = r + 0.04;
// Move 10% from wherever we are towards the destination
posZ = lerp(posZ, targetZ, 0.1);
}

void keyPressed() {
if (keyCode == UP) {
// set destination = 100
targetZ = 100;
} else if (keyCode == DOWN) {
// set destination = -100
targetZ = -100;
}
}
