void main() {
  
  //simple marks project
  
   var myMarks = 949;
  
  if(myMarks >= 1050 && myMarks < 1100){
    print ("Your are the topper student in Kohat board.");
  }
  else if(myMarks >= 1000 && myMarks < 1050){
    print ("Your are the top 100 in your board and collage.");
  }
  else if(myMarks >= 900 && myMarks < 1000){
    print ("Your Grade is A1 OR A+");
  }
  else if(myMarks >= 800 && myMarks < 900){
    print ("Your Grade is B");
  }
  else if(myMarks >= 700 && myMarks < 800){
    print ("Your Grade is C");
  }
   else if(myMarks >= 600 && myMarks < 700){
    print ("Your Grade is D");
  }
   else if(myMarks < 600){
    print ("Your are failed please focus on study");
  }
  else {
    print ("your not student bcz this not marks you are failed.");
  }
}
