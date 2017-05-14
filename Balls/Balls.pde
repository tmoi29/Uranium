class Ball {

  float x;
  float y;
  float rad;
  color c;
  float dx;
  float dy;
  int state;

  Ball() {
    x = random((width-rad) + rad/2);
    y = random((height-rad) + rad/2);
    dx = random(10)-5;
    dy = random(10)-5;
    rad = 10;
    float r = random(256);
    float g = random(256);
    float b = random(256);
    c = color(r,g,b);
    state = 0;
    
    fill(c);
    ellipse(x,y,rad,rad);
  }

  void move() {
    x = x + dx;
    y = y + dy;
    bounce();
  }
  
  void stop(){
     dx = 0;
     dy = 0;
     state ++;
  }
  
  void bounce() {
    if (x > width || x < 0) {
      dx = -1 * dx;
    }
    if (y > height || y < 0) {
      dy = -1 * dy; 
    }
  }
  
  void grow(){
     rad ++;
     if (rad > 21){
       state ++; 
     }
  }
  
  void shrink(){
     rad --;
  }
  
 
}