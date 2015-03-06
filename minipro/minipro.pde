import processing.serial.*;

Serial myPort;  // Create object from Serial class
String   val = "#000000";
int r , g , b;
void setup(){
  String portName = Serial.list()[1]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 9600); 
  size(320,240);
  background(0);
  fill(0);
  smooth();
}


void draw(){
     if ( myPort.available() > 0) {  // If data is available,
      val = myPort.readStringUntil('\n');   // read it and store it in val
      if(val != null){
        val = val.toUpperCase();
       // val =  "FF" + val.substring(1);  
      
       
        try { 
          println(val);
           r = Integer.parseInt(val.substring(0,3));
       g = Integer.parseInt(val.substring(3,6));
       b = Integer.parseInt(val.substring(6,9));
       //print("red");
       println(r);
       //print("green");
       println(g);
       //print("blue");
       println(b);
        stroke(color(r,g,b));
        fill(color(r,g,b));
        rect(0,0,width,height);
        }catch (NumberFormatException e) {
        println("can't be converted to a number!");
        }
      }
    }
}
