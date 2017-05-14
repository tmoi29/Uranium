Ball[] balls;

boolean reactionStarted;

void setup(){
     //size(600, 600);
     background(random(256));
     reactionStarted = false;
     balls = new Ball[25];
     
  }

void draw(){
   background(0);
   
   for (int i = 0; i < balls.length; i++){
        balls[i] = new Ball(); 
     }
   for (int i = 0; i < balls.length; i ++){
      if (reactionStarted == true) {
          balls[i].state = 1; 
      }
      if (balls[i].state == 0){
         balls[i].move(); 
      }
      else if (balls[i].state == 1){
         balls[i].stop();
      }
      else if (balls[i].state == 2){
          balls[i].grow();
      }
      else{
         balls[i].shrink();
      }
   }
}
void mouseClicked() {
   reactionStarted = true;
}
