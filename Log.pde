class Log extends Car {
  
  Log(float x, float y, float w, float h, float s, int row) {
    super(x, y, w, h, s, row);
   
  }
  
  void show() {
  image(lImg,x,y,w,h);
  }
}
