int trigPin = 6; 
int echoPin = 7;


long sure;
long uzaklik;

void setup() {
  // put your setup code here, to run once:

  pinMode(trigPin, OUTPUT); /* trig pini çıkış olarak ayarlandı */
  pinMode(echoPin,INPUT); /* echo pini giriş olarak ayarlandı */
  
pinMode(9,OUTPUT);
Serial.begin(9600);
}

void loop() {
  int a=0;
  // put your main code here, to run repeatedly:
digitalWrite(9,HIGH);
for(;;){
  Serial.println((a),DEC);
  delay(1);
  a=a+1;
  if(a>=200)
  a=0;
/*
  digitalWrite(trigPin, LOW); /* sensör pasif hale getirildi 
  delayMicroseconds(5);
  digitalWrite(trigPin, HIGH); /* Sensore ses dalgasının üretmesi için emir verildi 
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);  /* Yeni dalgaların üretilmemesi için trig pini LOW konumuna getirildi
  sure = pulseIn(echoPin, HIGH); /* ses dalgasının geri dönmesi için geçen sure ölçülüyor 
  uzaklik= sure /29.1/2; /* ölçülen sure uzaklığa çevriliyor            
  Serial.println(uzaklik,DEC);
  */
}}

