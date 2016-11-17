void setup() {
  size(400, 400,P2D);
}

float px=0;
float py=0;


void draw() {
  background(0);
  
  int pas=5;
  float passB=0.5;

  for (int i=0; i<width; i+=pas) {  
    for (int j=0; j<height; j+=pas) {  
      noStroke();
      float v = noise(i*0.01+px, j*0.01+py);
      
      if(v>passB){
        fill(map(v,passB,1,0,255));
        rect(i, j, pas, pas);
      }
      
    }
  }  
  px+=0.01;
  py+=0.01;
}