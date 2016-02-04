//game
int gamestate;

PImage character;
PImage character2;
PImage floorback;
PImage startimage;
PImage endimage;
PImage credits;
PImage zebgur1;
PImage zebgur2;
PImage zebgur3;
PImage zebgur4;
PImage zebgur5;
PImage door;
int yloc;
int xloc;
int battlestate;
float levelswitch;
String savefile[];
int i;
PImage stairs;

void setup()
{
  battlestate = 0;
  xloc = 275;
  yloc = 275;
  size(600, 600);
  background(0);
  gamestate = 997;
  door = loadImage("door.png");
  character2 = loadImage("richardright.png");
  zebgur5 = loadImage("zebgur5.png");
  zebgur4 = loadImage("zebgur4.png");
  zebgur3 = loadImage("zebgur3.png");
  stairs = loadImage("stairs.png");
  zebgur1 = loadImage("zebgur1.png");
  zebgur2 = loadImage("zebgur2.png");
  endimage = loadImage("endimage.png");
  character = loadImage("richarddown.png");
  startimage = loadImage("startimage.png");
  credits = loadImage("credits.png");
  levelswitch = 1;
  savefile = loadStrings("savefile.txt");
}

void draw()
{
  if (gamestate == 997)
  {
    imageMode(CENTER);
    image(startimage, width/2, height/2);
    i = 0;
  } else if (gamestate == 999)
  {
    imageMode(CENTER);
    image(endimage, width/2, width/2);
    image(character2, xloc, 400);
    xloc = xloc + 1;
    if (xloc > 650)
    {
      xloc = 0;
    }
  } else if (gamestate == 998)
  {
    imageMode(CENTER);
    image(credits, width/2, width/2);
  } else {
    game();
  }
}
void keyPressed()
{
  switch(gamestate)
  {
  case 997: 
    if ((key == ENTER))
    {
      levelswitch = 0;
      gamestate = 0;
    }
    if (key == 'c')
    {
      gamestate = 998;
    }
    if ((key == 'l') || (key == 'L'))
    {
      xloc = int(savefile[0]);
      yloc = int(savefile[1]);
      levelswitch = int(savefile[2]);
      gamestate = int(savefile[3]);
    }
    break;
  case 998:
    if (key == ' ')
    {
      gamestate = 997;
    }
    break;    
  case 999: 
    if (key == ' ')
    {
      gamestate = 997;
    }
    break;
  }

  if (gamestate == 0)
  {
    if (key == ' ')
    {
      i = i + 1;
    }
  }

  if ((battlestate == 1) && (gamestate != 0))
  {
    if ((key == 'w') && (yloc > 51))
    {
      yloc = yloc - 25;
      character = loadImage("richardup.png");
    }
    if ((key == 's') && (yloc < 500))
    {
      yloc = yloc + 25;
      character = loadImage("richarddown.png");
    }
    if ((key == 'a') && (xloc > 51))
    {
      xloc = xloc - 25;
      character = loadImage("richardleft.png");
    }
    if ((key == 'd') && (xloc < 500))
    {
      xloc = xloc + 25;
      character = loadImage("richardright.png");
    }
    if ((key == 'p') || (key =='P'))
    {
      String savefile0 = Integer.toString(xloc) +' ' +Integer.toString(yloc) +' ' +Integer.toString(int(levelswitch)) + ' ' +Integer.toString(gamestate);
      String[] savefile5 = split(savefile0, ' ');
      saveStrings("savefile.txt", savefile5);
    }
  }
}