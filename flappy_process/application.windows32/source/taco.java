import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class taco extends PApplet {

//Andrew Swanson
//andrew_swanson_00@subr.edu
//This program runs a simple game where you try to see how many walls you can avoid.  It is a simple version of flappy bird based on the program "Crappier Bird" by KT BYTE.

PImage backImg;
PImage moleImg;           //creates images
PImage wallImg;
PImage startImg;
PImage endImg;
int gamestate = 1;        
int score = 0;            //Sets initial score to 0.
int highScore = 0;        //Sets initial High score to 0.
int x = -200, y, vy =1;
int[] wx = new int[2];    //creates arrays for walls
int[] wy = new int[2];
String lines[];

public void setup()  {
backImg =loadImage("mole_background.jpg");
moleImg =loadImage("mole.jpg");                 //loads images from file.
wallImg =loadImage("wall.jpg");
startImg =loadImage("startimage.png");
endImg = loadImage("endimage.jpg");
lines = loadStrings ("savefile.txt");          //Loads save file for High scores.
highScore = PApplet.parseInt(lines[0]);
  
  fill(0);                                      //creates game size.
  textSize(30);
}
public void draw() {
  if(gamestate == 0){                           //When main game is running
    imageMode(CORNER);
    image(backImg, x,0);                        //Shows background image
    image(backImg, x+backImg.width, 0);
    x -= 6;
    vy +=1;
    y += vy;
    if(x == -15000) x = 0;                      //Resets background image when it reaches the end of the image.
    for(int i = 0; i<2; i++) {
      imageMode(CENTER);
      image(wallImg, wx[i], wy[i] - (wallImg.height/2+100));
      image(wallImg, wx[i], wy[i] + (wallImg.height/2+100));
      if(wx[i] <0) {
        wy[i] = (int)random(200,height-200);
        wx[i] = width;
      }
      if(wx[i] == width/2) {
        score++;
        highScore = max(score, highScore);                   //This section updates the high score.
      }
      if(y > height || y < 0 || (abs(width/2 - wx[i])<35 && abs(y-wy[i])>100)) {         //This section ends the game if you hit the walls
        gamestate = 2;
      }
      wx[i] -=6;
    }
    
    image(moleImg, width/2, y);
    text(""+score, width/2-15, 700);
  }
  else if(gamestate ==2){
  imageMode(CENTER);
  image(endImg, width/2,height/2);                       //Creates End screen showing user score and high score.
  text("High Score: "+highScore, 75, width +25);
  text("Your Score: "+score, 75, width -90);
  String scores = Integer.toString(highScore);
  String[] savescore = split(scores, ' ');
  saveStrings("savefile.txt", savescore);               //Saves High Score.
  
  }
  else {
  imageMode(CENTER);
  image(startImg, width/2,height/2);                    //Creates Start Screen.
  text("High Score: "+highScore, 75, width+25);
  }
  
}
public void mousePressed(){
 vy = -17; 
 if(gamestate ==1 || gamestate ==2) {                   //sets up game when mouse is clicked on start screen or end screen.
   score = 0;
   wx[0] = 600;
   wy[0] = height/2;
   wx[1] = 900;
   wy[1] = 600;
   x= 0;
   y= height /2;
   gamestate=0;
}
}
  public void settings() {  size(600,800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "taco" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
