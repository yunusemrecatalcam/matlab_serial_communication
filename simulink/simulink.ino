int trigPin = 6; 
int echoPin = 7;


long sure;
long uzaklik;
float time_now=0;
int delta_time;
unsigned long t1=0;
int a=0;
void setup() {
  // put your setup code here, to run once:

  pinMode(trigPin, OUTPUT); /* trig pini çıkış olarak ayarlandı */
  pinMode(echoPin,INPUT); /* echo pini giriş olarak ayarlandı */
  
  pinMode(9,OUTPUT);
  Serial.begin(9600);

}

void loop() {

  for(;;){

    time_now =((millis())/1000.0);
    
    Serial.println(time_now,DEC);    
    Serial.println(a,DEC);
    delay(100);
    a=a+1;
    if(a>=100)
      a=0;
    
}}

