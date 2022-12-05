//import processing.serial.*;
double h=1;
double w = 2;
int iteration =0;
double depth = 4.0;

void setup(){
  size(800, 800);
  background(255);
  pixelDensity(2);
}

void draw(){
  print(iteration);
  for(int x = 0; x<width*2; x++){
    for(int y=0; y<height*2; y++){
      //print(x,y,translate_x(x), translate_y(y)+"\n");
      if(I.abs(I.iteration(new I(translate_x(x,depth), translate_y(y,depth)),iteration))<2){
        set(x, y, getColor(iteration));
      }
    //  else{          
    //    set(x, y, color(255));}
    }
  }
  delay(500);
  //depth *= 0.9;
  iteration++;

}


double translate_x(double x, double d){
  return (x-(width))* (d/(width*2));
}

double translate_y(double y, double d){
  return (y-height)* (d/(height*2));
}

color getColor(int iteration){
  switch(iteration%7){
    case 0: 
      return color(253, 1,0);
    case 1:
      return color(247, 105, 21);
    case 2:
      return color(238, 222, 4);
    case 3:
      return color(160, 214, 54);
    case 4:
      return color(47, 162, 54);
    case 5:
      return color(51, 62, 212);
    case 6:
      return color(152,32,106);
    default:
      return color(25);
  }
}
