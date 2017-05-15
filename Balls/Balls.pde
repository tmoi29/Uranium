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
    ellipse(x,y,rad,rad);
    fill(c);
    x = x + dx;
    y = y + dy;
    bounce();
    
  }
  
  void change(){
    if (get((int)x, (int)y) != color(0)){
      state = 1; 
    } 
  }
  
  void halt(){
    ellipse(x,y,rad,rad);
    fill(c);
     dx = 0;
     dy = 0;
     state = 2;
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
     ellipse(x, y, rad, rad);
     fill(c);
     rad ++;
     if (rad > 21){
       state = 3; 
     }
  }
  
  void shrink(){
     rad --;
  }
  
 
}