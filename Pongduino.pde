import processing.serial.*;

final float SLOW = 1.2;
final float MEDIUM = 0.90;
final float FAST = 0.70;

float speedFactor = SLOW;

Ball ball;
Paddle player1;
Paddle player2;
Scoreboard scores;
SoundManager soundManager;

Serial myPort;  // Create object from Serial class
String val;
float proximity = 60.0;     // Data received from the serial port

boolean wPressed;
boolean sPressed;
boolean upPressed;
boolean downPressed;

void setup() {
  size(1200,800);
  
  ball = new Ball(speedFactor);
  player1 = new Paddle(speedFactor, 1);
  player2 = new Paddle(speedFactor, 2);
  scores = new Scoreboard();
  soundManager = new SoundManager(this);
  
  // I know that the first port in the serial list on my mac
  // is Serial.list()[0].
  // On Windows machines, this generally opens COM1.
  // Open whatever port is the one you're using.
  String portName = Serial.list()[0]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 9600);
}   

void draw() {
  background(0);
  movePlayers();
  ball.move();
  checkBounces();
  checkScores();
  ball.display();
  player1.display();
  player2.display();
  scores.display();
  
  if ( myPort.available() > 0) {                // If data is available,
    val = myPort.readStringUntil('\n');
    println(val);  
    if (val != null && val.contains(".")) proximity = parseFloat(val); // read it and store it
  } 
  //println(map(parseFloat(val), 60, 650, 0, -10));                                 //print it out in the console
}

public void playBorderBounceSound() {
    soundManager.playBorderBounceSound();
}
  
public void playPaddleBounceSound() {
    soundManager.playPaddleBounceSound();
}
  
public void playScoreSound() {
    soundManager.playScoreSound();
}
