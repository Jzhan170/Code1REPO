class Plant{
//data
  int plantHeight;
  int leaves;
  color plantColor;
  int xPos;

//constructor
  Plant(int _xPos){
    xPos = _xPos;
     
  }
  
  
  
  void display(int _plantHeight, int _numLeaves, color _PlantColor){
    plantHeight = _plantHeight;
    
    fill(_PlantColor);
    leaves = _numLeaves;
    
    for(int i = 0; i<_numLeaves;i++){
      ellipse(xPos, plantHeight + 30*i, 50 + i, 20);
    }
    rect(xPos, plantHeight, 10, 500);
  }
  
  void grow(){
    plantHeight -=1;
  
  }
  
}
