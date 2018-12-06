PImage img;

void setup(){
  size(500,698);
  img = loadImage("Squirrel-Drinking-Water-Funny-Picture.jpg");
  background(255);
  noStroke();
  
}
  
void draw(){
  //img.resize(250,349);
  //image(img,0,0);
  int w = mouseX;//int(random(0,width));
  int h = mouseY;//int(random(0,height));
  color c = img.get(w,h);
  //float b = brightness(c);
  //int f;
  
  //if(b<150){
  //  f=0;
  //}else{f=255;}
  
 // fill(c);
 // rect(w,h,10,10);
 
 img.loadPixels();
   for(int i=0;i<img.width;i++){
     for(int j=0; j<img.height; j++){
       int pos = i+j*img.width;
       
       if(brightness(img.pixels[pos])<150){
       img.pixels[pos] = color(0);
       }else{
       img.pixels[pos] = color(255);
       }
     }
   
   }
   img.updatePixels();
   image(img,0,0);
}
