void game()
{
  battlestate = 1;
  if (levelswitch == 0)
  {
    switch(gamestate)
    {
    case 0: 
      imageMode(CORNER);
      image(zebgur1, 0, 0);
      if (i == 1)
        gamestate = 1;
      break;
    case 1: 
      level("three.png", 3, 1, 1, 2, 1);
      break;
    case 2: 
      level("fifteen.png", 15, 3, 4, 5, 1);
      break;
    case 3: 
      level("one.png", 1, 3, 2, 3, 3); 
      break;
    case 4: 
      level("two.png", 2, 2, 4, 4, 4);
      break;
    case 5: 
      level("four.png", 4, 5, 5, 5, 2);
      imageMode(CORNER);
      image(stairs, 275, 275);
      if (((xloc < 326) && (xloc > 274)) && ((yloc < 326) && (yloc > 274)))
      {
        levelswitch = 1;
        gamestate = 0;
        xloc = 275;
        yloc = 275;
      }
      break;
    }
  } else if (levelswitch == 1)
  {
    switch(gamestate)
    {
    case 0: 
      imageMode(CORNER);
      image(zebgur2, 0, 0);
      if (i == 2)
        gamestate = 1;
      break;
    case 1: 
      level("foure.png", 4, 1, 1, 1, 2); 
      break;
    case 2: 
      level("tene.png", 10, 2, 2, 1, 3);
      break;
    case 3: 
      level("sixe.png", 6, 3, 4, 2, 3);
      break;
    case 4: 
      level("fivee.png", 5, 3, 5, 4, 4); 
      break;
    case 5: 
      level("fourteene.png", 14, 4, 5, 6, 11);
      break;
    case 6: 
      level("tene.png", 10, 6, 6, 7, 5);
      break;
    case 7: 
      level("sevene.png", 7, 7, 8, 7, 6); 
      break;
    case 8: 
      level("fivee.png", 5, 7, 9, 8, 8);
      break;
    case 9: 
      level("eighte.png", 8, 8, 9, 10, 9); 
      break;
    case 10: 
      level("foure.png", 4, 10, 10, 10, 9);
      break;
    case 11: 
      level("tene.png", 10, 11, 11, 5, 12); 
      break;
    case 12: 
      level("eighte.png", 8, 13, 12, 11, 12);
      break;
    case 13: 
      level("fivee.png", 5, 14, 12, 13, 13);
      break;
    case 14: 
      level("sevene.png", 7, 14, 13, 14, 15); 
      break;
    case 15: 
      level("threee.png", 3, 15, 15, 14, 15);
      imageMode(CORNER);
      image(stairs, 275, 375);
      if (((xloc < 326) && (xloc > 274)) && ((yloc < 426) && (yloc > 374)))
      {
        levelswitch = 2;
        gamestate = 0;
        xloc = 275;
        yloc = 275;
      }
      break;
    }
  } else if (levelswitch == 2)
  {
    switch(gamestate)
    {
    case 0: 
      imageMode(CORNER);
      image(zebgur3, 0, 0);
      if (i == 3)
        gamestate = 1;
      break;
    case 1: 
      level("fourb.png", 4, 1, 1, 1, 2); 
      break;
    case 2: 
      level("tenb.png", 10, 2, 2, 1, 3);
      break;
    case 3: 
      level("eightb.png", 8, 4, 3, 2, 3);
      break;
    case 4: 
      level("fiveb.png", 5, 5, 3, 4, 4); 
      break;
    case 5: 
      level("fifteenb.png", 15, 12, 4, 6, 27);
      break;
    case 6: 
      level("tenb.png", 10, 6, 6, 7, 5);
      break;
    case 7: 
      level("nineb.png", 9, 8, 7, 7, 6); 
      break;
    case 8: 
      level("sixb.png", 6, 8, 7, 9, 8);
      break;
    case 9: 
      level("nineb.png", 9, 11, 9, 9, 8); 
      break;
    case 10: 
      level("sixb.png", 6, 10, 9, 11, 10);
      break;
    case 11: 
      level("fourb.png", 4, 11, 11, 11, 10); 
      break;
    case 12: 
      level("fiveb.png", 5, 13, 5, 12, 12);
      break;
    case 13: 
      level("fiveb.png", 5, 14, 12, 13, 13);
      break;
    case 14: 
      level("sevenb.png", 7, 14, 13, 14, 15); 
      break;
    case 15: 
      level("eightb.png", 8, 16, 15, 14, 15);
      break;
    case 16: 
      level("sevenb.png", 7, 16, 15, 15, 17);
      break;
    case 17: 
      level("fourteenb.png", 14, 18, 17, 16, 19); 
      break;
    case 18: 
      level("oneb.png", 1, 18, 17, 18, 18);
      break;
    case 19: 
      level("sixb.png", 6, 19, 20, 17, 19); 
      break;
    case 20: 
      level("twelveb.png", 12, 19, 23, 20, 21);
      break;
    case 21: 
      level("tenb.png", 10, 21, 21, 20, 22); 
      break;
    case 22: 
      level("threeb.png", 3, 22, 22, 21, 22);
      imageMode(CORNER);
      image(stairs, 275, 375);
      if (((xloc < 326) && (xloc > 274)) && ((yloc < 426) && (yloc > 374)))
      {
        levelswitch = 3;
        gamestate = 0;
        xloc = 275;
        yloc = 275;
      }
      break;
    case 23: 
      level("fiveb.png", 5, 20, 24, 23, 23);
      break;
    case 24: 
      level("eightb.png", 8, 23, 24, 25, 24); 
      break;
    case 25: 
      level("sevenb.png", 7, 25, 26, 25, 24);
      break;
    case 26: 
      level("elevenb.png", 11, 25, 28, 27, 26);
      break;
    case 27: 
      level("tenb.png", 10, 27, 27, 5, 26); 
      break;
    case 28: 
      level("nineb.png", 9, 26, 28, 28, 29);
      break;
    case 29: 
      level("tenb.png", 10, 29, 29, 28, 30); 
      break;
    case 30: 
      level("sixb.png", 6, 30, 31, 29, 30);
      break;
    case 31: 
      level("twob.png", 2, 30, 31, 31, 31);
      break;
    }
  } else if (levelswitch == 3)
  {
    switch(gamestate)
    {
    case 0: 
      imageMode(CORNER);
      image(zebgur4, 0, 0);
      if (i == 4)
        gamestate = 1;
      break;
    case 1: 
      level("elevend.png", 11, 2, 11, 8, 3); 
      break;
    case 2: 
      level("fived.png", 5, 3, 1, 2, 2);
      break;
    case 3: 
      level("sixd.png", 6, 3, 2, 4, 3);
      break;
    case 4: 
      level("tend.png", 10, 4, 4, 5, 3); 
      break;
    case 5: 
      level("tend.png", 10, 5, 5, 6, 4);
      break;
    case 6: 
      level("sevend.png", 7, 6, 7, 6, 5);
      break;
    case 7: 
      level("elevend.png", 11, 6, 10, 16, 7); 
      break;
    case 8: 
      level("thirteend.png", 13, 8, 13, 9, 1);
      break;
    case 9: 
      level("thirteend.png", 13, 9, 15, 10, 8); 
      break;
    case 10: 
      level("nined.png", 9, 7, 10, 10, 9);
      break;
    case 11: 
      level("elevend.png", 11, 1, 12, 13, 11); 
      break;
    case 12: 
      level("eightd.png", 8, 11, 12, 14, 12);
      break;
    case 13: 
      level("fifteend.png", 15, 8, 14, 15, 11);
      break;
    case 14: 
      level("nined.png", 9, 13, 14, 14, 12); 
      break;
    case 15: 
      level("nined.png", 9, 9, 15, 15, 13);
      break;
    case 16: 
      level("tend.png", 10, 16, 16, 17, 7);
      break;
    case 17: 
      level("fifteend.png", 15, 20, 22, 18, 16); 
      break;
    case 18: 
      level("fourteend.png", 14, 21, 18, 19, 17);
      break;
    case 19: 
      level("fourd.png", 4, 19, 19, 19, 18); 
      break;
    case 20: 
      level("sixd.png", 6, 20, 17, 21, 20);
      break;
    case 21: 
      level("sevend.png", 7, 21, 18, 21, 20); 
      break;
    case 22: 
      level("fived.png", 5, 17, 23, 22, 22);
      break;
    case 23: 
      level("fourteend.png", 14, 22, 23, 25, 24);
      break;
    case 24: 
      level("threed.png", 3, 24, 24, 25, 24); 
      break;
    case 25: 
      level("thirteend.png", 13, 25, 26, 30, 23);
      break;
    case 26: 
      level("elevend.png", 11, 25, 27, 31, 26);
      break;
    case 27: 
      level("nined.png", 9, 26, 37, 37, 28); 
      break;
    case 28: 
      level("sixd.png", 6, 28, 29, 27, 28);
      break;
    case 29: 
      level("twod.png", 2, 28, 29, 29, 29); 
      break;
    case 30: 
      level("thirteend.png", 13, 30, 31, 32, 25);
      break;
    case 31: 
      level("fourteend.png", 14, 30, 31, 40, 26); 
      break;
    case 32: 
      level("fifteend.png", 15, 34, 40, 33, 30);
      break;
    case 33: 
      level("nined.png", 9, 35, 33, 33, 32);
      break;
    case 34: 
      level("sixd.png", 6, 34, 32, 35, 34); 
      break;
    case 35: 
      level("twelved.png", 12, 36, 33, 35, 34);
      break;
    case 36: 
      level("fived.png", 5, 37, 35, 36, 36);
      break;
    case 37: 
      level("thirteend.png", 13, 37, 36, 39, 38); 
      break;
    case 38: 
      level("threed.png", 3, 38, 38, 37, 38);
      break;
    case 39: 
      level("fourd.png", 4, 39, 39, 39, 37); 
      break;
    case 40: 
      level("twelved.png", 12, 32, 41, 40, 31);
      break;
    case 41: 
      level("fived.png", 5, 40, 42, 41, 41); 
      break;
    case 42: 
      level("fifteend.png", 15, 41, 44, 45, 43);
      break;
    case 43: 
      level("threed.png", 3, 43, 43, 42, 43);
      break;
    case 44: 
      level("twod.png", 2, 42, 44, 44, 44); 
      break;
    case 45: 
      level("tend.png", 10, 45, 45, 46, 42);
      break;
    case 46: 
      level("twelved.png", 12, 47, 49, 46, 45);
      break;
    case 47: 
      level("fived.png", 5, 48, 46, 47, 47); 
      break;
    case 48: 
      level("oned.png", 1, 48, 47, 48, 48);
      break;
    case 49: 
      level("fived.png", 5, 46, 50, 49, 49); 
      break;
    case 50: 
      level("nined.png", 9, 49, 50, 50, 51);
      break;
    case 51: 
      level("threed.png", 3, 51, 51, 50, 51);
      imageMode(CORNER);
      image(stairs, 275, 275);
      if (((xloc < 326) && (xloc > 274)) && ((yloc < 326) && (yloc > 274)))
      {
        levelswitch = 4;
        gamestate = 0;
        xloc = 275;
        yloc = 275;
      }

      break;
    }
  } else if (levelswitch == 4)
  {
    switch(gamestate)
    {
    case 0: 
      imageMode(CORNER);
      image(zebgur5, 0, 0);
      if (i == 5)
        gamestate = 1;
      break;
    case 1: 
      level("twoc.png", 2, 2, 1, 1, 1); 
      break;
    case 2: 
      level("sixc.png", 6, 2, 1, 3, 2);
      break;
    case 3: 
      level("fourteenc.png", 14, 68, 3, 4, 2);
      break;
    case 4: 
      level("thirteenc.png", 13, 4, 5, 6, 3); 
      break;
    case 5: 
      level("twoc.png", 2, 4, 5, 5, 5);
      break;
    case 6: 
      level("fourteenc.png", 14, 71, 6, 7, 4);
      break;
    case 7: 
      level("thirteenc.png", 13, 7, 8, 9, 6); 
      break;
    case 8: 
      level("twoc.png", 2, 7, 8, 8, 8);
      break;
    case 9: 
      level("tenc.png", 10, 9, 9, 10, 7); 
      break;
    case 10: 
      level("ninec.png", 9, 11, 10, 10, 9);
      break;
    case 11: 
      level("sixc.png", 11, 11, 10, 12, 11); 
      break;
    case 12: 
      level("tenc.png", 10, 12, 12, 13, 11);
      break;
    case 13: 
      level("sevenc.png", 7, 13, 14, 13, 12);
      break;
    case 14: 
      level("fourteenc.png", 14, 14, 15, 17, 16); 
      break;
    case 15: 
      level("ninec.png", 9, 9, 15, 15, 13);
      break;
    case 16: 
      level("threec.png", 3, 16, 16, 15, 16);
      break;
    case 17: 
      level("tenc.png", 10, 17, 17, 18, 15); 
      break;
    case 18: 
      level("tenc.png", 10, 18, 18, 19, 17);
      break;
    case 19: 
      level("ninec.png", 9, 20, 19, 19, 18); 
      break;
    case 20: 
      level("fivec.png", 5, 21, 19, 20, 20);
      break;
    case 21: 
      level("sevenc.png", 7, 21, 20, 21, 22); 
      break;
    case 22: 
      level("eightc.png", 8, 23, 22, 21, 22);
      break;
    case 23: 
      level("fivec.png", 5, 24, 22, 23, 23);
      break;
    case 24: 
      level("thirteenc.png", 13, 24, 23, 25, 34); 
      break;
    case 25: 
      level("ninec.png", 9, 26, 25, 25, 24);
      break;
    case 26: 
      level("fivec.png", 5, 27, 25, 26, 26);
      break;
    case 27: 
      level("sevenc.png", 7, 27, 26, 27, 28); 
      break;
    case 28: 
      level("fourteenc.png", 14, 35, 28, 27, 30);
      break;
    case 29: 
      level("tenc.png", 10, 29, 29, 28, 30); 
      break;
    case 30: 
      level("elevenc.png", 11, 54, 31, 29, 30);
      break;
    case 31: 
      level("fivec.png", 5, 30, 32, 31, 31); 
      break;
    case 32: 
      level("fourteenc.png", 14, 31, 32, 34, 33);
      break;
    case 33: 
      level("threec.png", 3, 33, 33, 32, 33);
      break;
    case 34: 
      level("tenc.png", 10, 34, 34, 35, 34); 
      break;
    case 35: 
      level("twelvec.png", 12, 37, 35, 36, 53);
      break;
    case 36: 
      level("fivec.png", 5, 37, 35, 36, 36);
      break;
    case 37: 
      level("sixc.png", 6, 37, 36, 38, 37); 
      break;
    case 38: 
      level("ninec.png", 9, 39, 38, 37, 38);
      break;
    case 39: 
      level("fivec.png", 5, 40, 38, 39, 39); 
      break;
    case 40: 
      level("sevenc.png", 7, 40, 39, 40, 41);
      break;
    case 41: 
      level("eightc.png", 8, 42, 41, 40, 41); 
      break;
    case 42: 
      level("sevenc.png", 7, 42, 41, 42, 43);
      break;
    case 43: 
      level("tenc.png", 10, 43, 43, 42, 44);
      break;
    case 44: 
      level("sixc.png", 6, 44, 45, 43, 44); 
      break;
    case 45: 
      level("ninec.png", 9, 44, 45, 45, 46);
      break;
    case 46: 
      level("sixc.png", 6, 46, 47, 45, 46);
      break;
    case 47: 
      level("ninec.png", 9, 46, 47, 47, 48); 
      break;
    case 48: 
      level("sixc.png", 6, 48, 49, 47, 48);
      break;
    case 49: 
      level("fivec.png", 5, 48, 50, 49, 49); 
      break;
    case 50: 
      level("fourteenc.png", 14, 49, 50, 51, 55);
      break;
    case 51: 
      level("tenc.png", 10, 50, 50, 52, 50);
      break;
    case 52: 
      level("thirteenc.png", 13, 52, 54, 53, 51); 
      break;
    case 53: 
      level("tenc.png", 10, 53, 53, 36, 52);
      break;
    case 54: 
      level("fivec.png", 5, 52, 30, 54, 54); 
      break;
    case 55: 
      level("sixc.png", 6, 55, 56, 50, 55);
      break;
    case 56: 
      level("fivec.png", 5, 55, 57, 56, 56);
      break;
    case 57: 
      level("fourteenc.png", 14, 56, 57, 58, 59); 
      break;
    case 58: 
      level("fourc.png", 4, 58, 58, 58, 57);
      break;
    case 59: 
      level("tenc.png", 10, 59, 59, 57, 60); 
      break;
    case 60: 
      level("thirteenc.png", 13, 60, 73, 59, 61);
      break;
    case 61: 
      level("sixc.png", 6, 61, 62, 60, 61); 
      break;
    case 62: 
      level("fourteenc.png", 14, 61, 62, 73, 63);
      break;
    case 63: 
      level("tenc.png", 10, 63, 63, 62, 64);
      break;
    case 64: 
      level("sixc.png", 6, 64, 65, 63, 64); 
      break;
    case 65: 
      level("fivec.png", 5, 64, 66, 65, 65);
      break;
    case 66: 
      level("eightc.png", 8, 65, 66, 67, 66);
      break;
    case 67: 
      level("thirteenc.png", 13, 67, 68, 69, 66); 
      break;
    case 68: 
      level("fivec.png", 5, 67, 3, 68, 68);
      break;
    case 69: 
      level("tenc.png", 10, 69, 69, 70, 67); 
      break;
    case 70: 
      level("twelvec.png", 12, 72, 71, 70, 69);
      break;
    case 71: 
      level("fivec.png", 5, 70, 6, 71, 71); 
      break;
    case 72: 
      level("elevenc.png", 11, 73, 70, 74, 72);
      break;
    case 73: 
      level("twelvec.png", 12, 60, 72, 73, 62);
      break;
    case 74: 
      level("tenc.png", 10, 74, 74, 75, 72); 
      break;
    case 75: 
      level("sevenc.png", 7, 75, 76, 75, 74);
      break;
    case 76: 
      level("eightc.png", 8, 75, 76, 77, 76);
      break;
    case 77:
      level("fourc.png", 4, 77, 77, 77, 76);
      imageMode(CORNER);
      image(door, 275, 275);
      if (((xloc < 326) && (xloc > 274)) && ((yloc < 376) && (yloc > 274)))
      {
        gamestate = 999;
      }
      break;
    }
  }
}