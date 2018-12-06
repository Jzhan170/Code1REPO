class Fruit{
  
  float fHeight;
  float fWidth;
  
  color fColor;
  int xPos;
  
  
  Fruit(int _xPos,float _fHeight, float _fWidth){
    xPos = _xPos;
    fHeight = _fHeight;
    fWidth = _fWidth;
    
  }
  
  void display(color _fColor){
    
    
    fill(_fColor);
    
  }
  
 


}
