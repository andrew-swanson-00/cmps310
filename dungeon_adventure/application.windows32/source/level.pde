void level(String img, int typeroom, int rmleft, int rmright, int rmtop, int rmbot)
{
  floorback = loadImage(img);
  imageMode(CORNER);
  image(floorback, 0, 0);
  image(character, xloc, yloc);
  switch(typeroom)
  {
  case 1: 
    openright();
    break;
  case 2: 
    openleft(); 
    break;
  case 3: 
    opentop();
    break;
  case 4: 
    openbot();
    break;
  case 5:
    openright();            //left and right
    openleft();
    break;
  case 6:
    openright();            //up and right
    opentop();
    break;
  case 7:
    openright();            //down and right
    openbot();
    break;
  case 8: 
    openleft();             //  left up
    opentop();
    break;
  case 9:
    openleft();              // left down
    openbot();
    break;
  case 10:
    opentop();              // up down
    openbot();
    break;
  case 11:
    openright();            // up left right
    openleft();
    opentop();
    break;
  case 12:
    openright();            // down left right
    openleft();
    openbot();
    break;
  case 13:  
    openright();            //  right up down
    opentop();        
    openbot();
    break;
  case 14:
    openleft();             //   left up down
    opentop();
    openbot();
    break;
  case 15:
    openleft();              //   all sides
    openright();
    opentop();
    openbot();
    break;
  }
  room(rmleft, rmright, rmtop, rmbot);
}