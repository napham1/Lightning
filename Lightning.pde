int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;

void setup(){
  size(300,300);
  strokeWeight(5);
  background(201);
}
void draw(){
  stroke((int)(Math.random() * 256),(int)(Math.random() * 256), (int)(Math.random() * 256));
  while (endX <= 300){
    endX = startX + (int)(Math.random() * 19) - 9;
    endY = startY + (int)(Math.random() * 10);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  noStroke();
  fill(255);
  ellipse(0,0,100,100);
  ellipse(50,0,110,110);
  ellipse(100,0,90,90);
  ellipse(150, 0, 100,100);
  ellipse(200, 0, 120, 120);
  ellipse(270, 0, 80,80);
}

void mousePressed(){
  startX = (int)(Math.random() * 51)+125;
  startY = 0;
  endX = (int)(Math.random() * 51)+125;
  endY = 0;
}
