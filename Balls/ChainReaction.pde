Ball[] balls;

boolean reactionStarted;

void setup(){
     //size(600, 600);
     background(random(256));
     reactionStarted = false;
     balls = new Ball[25];
     for (int i = 0; i < balls.length; i++){
        balls[i] = new Ball(); 
     }
     
  }

void draw(){
   background(0);

   for (int i = 0; i < balls.length; i ++){
      if (balls[i].state == 0){
         balls[i].move(); 
      }
      if (reactionStarted && balls[i].state == 0){
         balls[i].change(); 
      }
      else if (balls[i].state == 1 && reactionStarted){
          balls[i].halt();
      }
      else if (balls[i].state == 2){
          balls[i].grow();
      }
      else if (balls[i].state == 3){
         balls[i].shrink();
      }
   }
}
void mouseClicked() {
   reactionStarted = true;
}