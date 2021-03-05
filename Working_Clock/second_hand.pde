public class SHand{
  private int x;
  private int y;
  private int sizeX;
  private int sizeY;
  private float rotateSpeed;
  
  public SHand(int x, int y, int sizeX, int sizeY){
    this.x = x;
    this.y = y;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    
  }
  public void rotator(){
    
  s = PI/30; 
  rotateSpeed = s*second();
  rotate(2*PI/60*second());
  
  
  }
  public void draw(){
  
  fill(0);
  rect(this.x,this.y,this.sizeX,this.sizeY);
  }
}
