
//This portion creates an opening on the right wall
void openright()
{
  if (((yloc > 224) && (yloc < 326)) && (xloc > 499))
  {
    if (key == 'd')
    {
      xloc = xloc + 10;
    }
  }
}


//This portion creates an opening on the left wall
void openleft()
{
  if (((yloc > 224) && (yloc < 326)) && (xloc < 51))
  {
    if (key == 'a')
    {
      xloc = xloc - 10;
    }
  }
}

//This portion creates an opening on the top wall
void opentop()
{
  if (((xloc > 224) && (xloc < 326)) && (yloc <51))
  {
    if (key == 'w')
    {
      yloc = yloc - 10;
    }
  }
}


//This portion creates an opening on the bottom wall
void openbot()
{
  if (((xloc > 224) && (xloc < 326)) && (yloc >499))
  {
    if (key == 's')
    {
      yloc = yloc + 10;
    }
  }
}

void room(int left, int right, int top, int bot)
{
  if (xloc > 600)
  {
    gamestate = right; 
    xloc = 50;
  }
  if (xloc < 0)
  {
    gamestate = left; 
    xloc = 500;
  }
  if (yloc > 600)
  {
    gamestate = bot;
    yloc = 50;
  }
  if (yloc < 0)
  {
    gamestate = top;
    yloc = 500;
  }
}