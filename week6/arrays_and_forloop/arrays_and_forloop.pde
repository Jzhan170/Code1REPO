int myIntegerArray[] = {1,2,3,4,5};
String myStringArray[] = {"whatever", "we", "want"};

int newArray[] = new int[4];//{,,,,}

void setup(){
 println(myIntegerArray[4]);
 
 println(myStringArray[1]);
 for(int i =0; i<3; i++){
   println(myStringArray[i]);
 }   
 
  newArray[0] = 3;
  newArray[3] = 5;
  
  for(int i = 0; i<4; i++){
    
    println(newArray[i]);
    
  }    
  
}
