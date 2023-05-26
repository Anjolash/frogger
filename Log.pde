class Log extends Car {
  
  Log(float x, float y, float w, float h, float s) {
    super(x, y, w, h, s);
   
  }
  
  void show() {
  fill(139, 69, 19); // Brown color for logs
  rect(x, y, w, h);
  }
}
