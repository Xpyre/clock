public class MHand{
  private int x;
  private int y;
  private int sizeX;
  private int sizeY;
  
  
  public MHand(int x, int y, int sizeX, int sizeY){
    this.x = x;
    this.y = y;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    
  }
  public void rotator(){
    
  rotate(2*PI/60*minute());
  
  }
   void draw(){
  
  fill(255,0,0);
  rect(this.x,this.y,this.sizeX,this.sizeY);
  }
}
