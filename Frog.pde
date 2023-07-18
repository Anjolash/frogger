class Frog extends Rectangle {
  
  Log attached = null ;
  
  
  Frog(float x, float y, float w, float h) {
    super(x, y, w, h);
    
  }
  
    void attach(Log log) {
      attached = log;
    }
    
    void update() {
      if (attached != null) {
        frog.x += attached.speed;
      }
      frog.x= constrain(x, 0, width-w);
    }
    
    void show() {
      image(fImg,x,y,w,h);
      
    }
    void move(float xdir, float ydir) {
      
      x += xdir * grid;
      y += ydir *grid;
      
    }
}
