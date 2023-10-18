void main() {
  
  print ("Write your name (first letter must capital)  on stringe");
  
  //switch case allow only 'int' and 'string'
  // not allow to 'boolean' and 'double' 
  
  
  
  String name = "Hariskhan";
  
  switch (name){
      
    case 'Abdurrazzaq':
      print ("$name: you are the expert on HTML,CSS,PHP,MySqli and learn Dart");
      break;
      
    case 'Waqasahmad':
      print ("$name: you are learning Dart and Flutter");
      break;
      
    case 'Hariskhan':
      print ("$name: you are learning C++ and also playing PUBG mobile game");
      break;
      
    default:
      print ("You are failed sorry");
      
  }
}
