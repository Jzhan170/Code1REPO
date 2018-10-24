String str = "I am a string!";
String anotherStr = "I want to use the myFunc function to print this String!";

void setup() {
  
  myFunc(anotherStr);
}

void myFunc(String myStr) {
  println(myStr);
}
