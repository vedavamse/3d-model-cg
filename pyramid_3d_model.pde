void setup(){
  size(500, 500, P3D);
}

void draw(){
  //Setting the backgrounf to black
  background(0);
  //Setting some simple lights
  lights();
  //Setting the position of the triangle
  translate(250, 250, 0);
  //This makes so you can move the pyramid woth your mouse
  rotateX(mouseY*0.01);
  rotateY(mouseX*0.01);
  fill(255, 0, 255);
  //Making the pyramid
  beginShape(TRIANGLE);
  triVert(0, 0, 0, 0, 100, 0, 86.6, 50, 0);
  triVert(0, 0, 0, 86.6, 50, 0, 50, 50, -86.6);
  triVert(0, 0, 0, 50, 50, -86.6, 0, 100, 0);
  triVert(0, 100, 0, 86.6, 50, 0, 50, 50, -86.6);
  endShape();
}
//Creating a function that allows you to make a triangle with one command
void triVert(float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3){
  vertex(x1, y1, z1);
  vertex(x2, y2, z2);
  vertex(x3, y3, z3);
}
