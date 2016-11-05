PrintWriter output;
int day = day();
int month = month();
int year = year();
int hour = hour();
int minute = minute();
String timestamp =  day + ":" + month + ":" + year + "_time_" + hour + "-" + minute;


void setup() {
    output = createWriter("log" + "/" + "shapes_" + timestamp +  ".txt");
    size(300, 300, P2D); 
    background(255);
}

void draw() {
  point(mouseX, mouseY);
}

void mouseDragged() {
 output.print(mouseX + "," + mouseY + ",");
}

void keyPressed() {
      if (keyCode == ESC) {
          output.flush();
          output.close(); 
          exit();
      }
}