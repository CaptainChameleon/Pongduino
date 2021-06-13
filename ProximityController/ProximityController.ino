int proximitySensorPin = 0;
float distance = 0.0;

void setup() 
{
  Serial.begin(9600);
}

void loop()
{
  distance = analogRead ( proximitySensorPin ) ;
  Serial.println(distance);
  delay(100);
}
