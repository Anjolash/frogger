Frog frog;
Car[] cars;
Log[] logs;
PImage bImg;
PImage fImg;
PImage cImg1;
PImage cImg2;
PImage cImg3;
PImage cImg4;
PImage cImg5;
PImage cImg6;
PImage lImg;

float grid = 50;

void resetGame() {
  frog = new Frog(width / 1.75 - grid / 1.25,height-grid,grid,grid);
}

void safe() {
  frog = new Frog(width/2-grid/2,height-grid*12,grid,grid);
  frog.attach(null);
}
  

void setup() {
  size(1722,941);
  //frog= new Frog(width/2-grid/2,height-grid,grid,grid);
  resetGame();
  bImg = loadImage("Background.jpg");
  fImg = loadImage("frog.png");
  cImg1 = loadImage("car1.png");
  cImg2 = loadImage("car2.png");
  cImg3 = loadImage("car3.png");
  cImg4 = loadImage("car4.png");
  cImg5 = loadImage("car5.png");
  cImg6 = loadImage("car6.png");
  lImg = loadImage("log.png");
  
  cars = new  Car[24];
  
  
  
  int index = 0;
//row 1  

  for (int i = 0; i < 4; i++){
    float x = i * 288 ;
    
  
  cars[index] = new Car(x, height-grid*3.05, grid*2, grid*0.85, 1.75, 1);
  index++;
}
//row 2 

  for (int i = 0; i < 4; i++){
    float x = i * 320 ;
    
  
  cars[index] = new Car(x, height-grid*5.05, grid*3, grid*3, 2, 2);
  index++;
}



//row 5 

  for (int i = 0; i < 4; i++){
    float x = i * 320 ;
    
  
  cars[index] = new Car(x, height-grid*6, grid*5, grid*2, 1.5, 3);
  index++;
}
//row 6

  for (int i = 0; i < 4; i++){
    float x = i * 220 ;
    
  
  cars[index] = new Car(x, height-grid*6.75,  grid*2, grid*0.85, -2, 4);
  index++;
}
//row 7

  for (int i = 0; i < 4; i++){
    float x = i * 420 ;
    
  
  cars[index] = new Car(x, height-grid*8.75, grid*3, grid*3, -4, 5);
  index++;
}
//row 6

  for (int i = 0; i < 4; i++){
    float x = i * 520 ;
    
  
  cars[index] = new Car(x, height-grid*9.75, grid*5, grid*2, -3.75, 6);
  index++;
}

logs = new  Log[15];

//row 8
  
  index =0;
  for (int i = 0; i < 2; i++){
    float x = i * 270 + 60;
     logs[index] = new Log(x, height-grid*13, grid*3, grid,  1, 1);
  index++;
}
 //row 9
  for (int i = 0; i < 3; i++){
    float x = i * 320 + 60;
     logs[index] = new Log(x, height-grid*14, grid*3, grid,  -1.3, 1);
  index++;
}

//row 10
  for (int i = 0; i < 2; i++){
    float x = i * 400 + 60;
     logs[index] = new Log(x, height-grid*15, grid*5, grid,  0.5, 1);
  index++;
}
//row 11
  for (int i = 0; i < 3; i++){
    float x = i * 200 + 60;
     logs[index] = new Log(x, height-grid*16, grid*3, grid, -0.5, 1);
  index++;
}
//row 12
 for (int i = 0; i < 3; i++){
    float x = i * 300 + 60;
     logs[index] = new Log(x, height-grid*17, grid*3, grid,  0.5, 1);
  index++;
}
//row 13
 for (int i = 0; i < 2; i++){
   float x = i * 400 + 160;
    logs[index] = new Log(x, height-grid*18, grid*4, grid,  0.5, 1);
  index++;
}
}

void preload(){
  //bImg = loadImage("Background.jpg");
  //println(bImg);
}

void moveCars() {
  for (Car car : cars) {
    car.update();
  }

  for (Log log : logs) {
    log.update();
  }
}


void draw() {
  println(bImg);
  //println(dataPath(""));
  
  //println(dataPath(""));
  //print(bImg);
  background(bImg);
  fill(215, 100);
  //rect(0, height-grid, width,grid);
  //rect(0, height-grid*11, width,grid);
  rect(0,0, width, grid*2);
  frog.show();
  moveCars();
  for (Car car : cars) {
    
  car.show();
  car.update();
  if (frog.intersects(car)) {
  resetGame();
  //  println("game322ddd321 over");
  }
}

for (Log log : logs) {
  log.show();
  log.update();
}

  if (frog.y < height-grid*12 && frog.y > grid*0) {
  boolean ok = false;
  for (Log log : logs) {
  if (frog.intersects(log)) {
    ok=true;
    frog.attach(log);
  } 
  }
if(!ok) {
  safe();
  //  println("game322ddd321 over");
 }
}
else { 
  frog.attach(null); 
}
frog.update();
frog.show();

}

void keyPressed() {
  
  if (keyCode == UP) {
    frog.move(0,-1);
  } else if (keyCode == DOWN) {
    frog.move(0,1);
  } else if (keyCode == RIGHT) {
    frog.move(1,0);
  } else if (keyCode == LEFT) {
    frog.move(-1,0);
  }
}
