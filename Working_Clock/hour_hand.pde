public class HHand{
  private int x;
  private int y;
  private int sizeX;
  private int sizeY;
  
  
  public HHand(int x, int y, int sizeX, int sizeY){
    this.x = x;
    this.y = y;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    
    
  }
  public void rotator(){
  rotate(-2*PI/60*second());
  rotate(2*PI/12*hour());
  
  rotate(-2*PI/60*minute());
  
  
  
 } 
  public void draw(){
  
  fill(255);
  rect(this.x,this.y,this.sizeX,this.sizeY);
  
}
}
