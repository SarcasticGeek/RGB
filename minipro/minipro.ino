int valR, valG , valB ;
int r , g , b;
const int potR = A0;
const int potG = A1;
const int potB = A2;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
}


void loop() {
  // put your main code here, to run repeatedly:
  valR = analogRead(potR);
  valG = analogRead(potG);
  valB = analogRead(potB);
  
  r = (valR  / 1023.0) * 255.0 ;
  g = (valG  / 1023.0) * 255.0 ;
  b = (valB / 1023.0) * 255.0 ;
  /*Serial.print("Red");
  Serial.println(r);
  Serial.print("Green");
  Serial.println(g);
  Serial.print("Blue");
  Serial.println(b);*/
  Serial.println(addzeros(String(r)) +addzeros(String(g))
  + addzeros(String(b)));
  delay(1000);
}
String addzeros(String  x){
  String y = "";
  switch(x.length()){
  case 3:
    y = x;
    break;
  case 2:
    y = x + "0";
    break;
  default:
    y = x + "00";
  break;  
}
return y ;
}
  

