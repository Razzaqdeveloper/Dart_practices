void main() {
  String name = "AbdurRazzaq";
  var marks = 949;
   if (marks >= 900 && marks < 1100){
     print ("$name: you are passed and got high marks");
   }
  else if (marks >= 700 && marks < 900){
    print ("$name: you are average student");
  }
  else if (marks >= 550 && marks < 700){
    print ("$name: you are failed you got low marks");
  }
  else if (marks >= 500 && marks < 550){
    print ("$name: you are the 1st year student and you got high marks");
  }
  else if (marks >= 300 && marks < 500){
    print ("$name: you are failed focus on study");
  }
  else{
    print ("$name: you are not eligible for any classes");
  }

}
