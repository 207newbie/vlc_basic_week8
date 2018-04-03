import processing.video.*;

import controlP5.*;

ControlP5 cp5;

Movie my_video;

boolean Play;

void setup () {
  size(640,410);

background (0);

my_video = new Movie(this,"censored.mp4");
my_video.play();


// Load GUI Items

cp5= new ControlP5(this);

//create a new button with the name 'buttonA'

cp5.addButton("Play")
.setValue(0)
.setPosition(0,height-30)
.setSize(30,30)
;


cp5.addButton("Stop")
.setValue(0)
.setPosition(610,height-30)
.setSize(30,30);

cp5.addButton("Pause")
.setValue(0)
.setPosition(width/2-20,height-30)
.setSize(40,30);
}

void movieEvent(Movie m) {
  m.read();
}

void Play () {
  println("Play button clicked");
  my_video.play();
}

void Stop () {
  println("Stop button clicked");
  my_video.stop();
  my_video.jump(0);
  
}
  void Pause () {
 println("Pause button clicked");
  my_video.pause();

}


void draw () {
image(my_video,0,0,width,height-30);
if (Play == true) {
println("Play");
}
}