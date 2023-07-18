
public class Car  extends Rectangle{
  float speed;
  int row;
  Car(float x, float y, float w, float h, float s, int row) {
    super(x, y, w, h);
    speed= s;
    this.row = row;
    
  }

  void update (){
    x= x + speed;
    
    if (speed > 0 && x> width) {
      x= w-grid;
    } else if (x <- grid){
      x=width + grid;}
 
  }
  
  void show() {
      PImage currentCarImage;
      
      switch (row){
        case 1:
          currentCarImage = cImg1;
          break;
        case 2:
          currentCarImage = cImg2;
          break;
        case 3:
          currentCarImage = cImg3;
          break;
        case 4:
          currentCarImage = cImg4;
          break;
        case 5:
          currentCarImage = cImg5;
          break;
        case 6:
          currentCarImage = cImg6;
          break;
        
        default:
          currentCarImage = cImg3;      
    }
    
    image(currentCarImage,x,y,w,h);
} 

}
