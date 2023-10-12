// Dart language
import 'dart:html';

void main() {
  final header = querySelector('#header');
  header?.text = "Wellcome to Razzaqdeveloper site";
  final para = querySelector('#para');
  para?.text = "This is my dart and html css code and i can focus on Dart";
}

  // HTML 
<h1 id="header"></h1>
<p id="para"></p>

  // CSS
  body {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  position: absolute;
  width: 100%;
  height: 100%;
}

h1 {
  color: orange;
  font-size: 24px;
  font-family: Arial, Helvetica, sans-serif;
}

  
