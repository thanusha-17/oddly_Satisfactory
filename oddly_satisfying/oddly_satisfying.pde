float u,v,w = 0;
float x,y,z = 0;
float uMin,uMax,vMin,vMax,wMin,wMax;
float iter = 120;
float scalar = 150;

void setup() {
  size(600,600,P3D);
  // https://processing.org/tutorials/p3d/
  background(#F5B041);
 blendMode(ADD);
stroke(102);
strokeWeight(2);
line(25, 25, 75, 75);
line(75, 25, 25, 75);

}
void draw() {
  u = 0;
  v = 0;
  uMin = 0;
  uMax = (4*PI)/2;
  vMin = 0;
  vMax = PI;

  background(#F5B041);
  translate(width/2,height/2,0);


  pushMatrix();

  rotateX(frameCount*PI/200);
  rotateY(frameCount*PI/250);

  
  v = 0;
  for(u = uMin; u <= uMax; u+=((uMax-uMin)/iter))  {
      for(v = vMin; v <= vMax; v+=((vMax-vMin)/iter)) {
        x = ((cos(1*u)/4) + sin(v)*cos(u) )*scalar;
        y = ((sin(1*u)/4) + sin(v)*sin(u))*scalar;
        z = cos(v)*scalar;
        point(x,y,z);
      }
  }
  popMatrix();
}
