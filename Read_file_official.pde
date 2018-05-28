
String[] mon1;
String[] mon2;

int monCount1;
int monCount2;
String comment = "Ryo, ";

PImage alien;
PImage demon;
PImage devil;
PImage dragon;
PImage mino;
PImage samurai;
PImage slayer;
PImage unicorn;
PImage zeus;
PImage zombie;
PImage man1;
PImage man2;
PImage bg1;
PImage bg2;
PImage space;
PImage vs;
PImage gate;
PImage winner;
PImage win;

PImage fragment;
int rand;
int sand;
int x;
int y;
int z;
int z1;

void setup()
{
  size(800,600);
  mon1 = loadStrings("battlemon1.txt");
  mon2 = loadStrings("battlemon2.txt");
  monCount1 =mon1.length;
  monCount2 = mon2.length;
  loadImages();

}

void draw()
{
  
  image(space,0,0,800,600);
  fill(255,226,0);
  rect(0,0,800,60);
  fill(255,0,0);
  ellipse(width/2, height/2+150, 150,150);
  fill(255,255,255);
  textSize(30);
  text("              Click To \n                Fight ",210,300+150);
  
  fill(0,0,0);
  textSize(24);
  text(comment,10,50);
  
  image(bg1,50,140,250,250);
  image(bg2,500,140,250,250);
  
  image(vs,300,190,200,150);

  takerandomimage("frag_" + nf(rand, 3) + ".png");
  takerandomimages("frag_" + nf(sand, 3) + ".png");
  
  image(gate,170,400,150,200);
  image(gate,480,400,150,200);
  
  image(man1,680+y,400,150,200);
  image(man2,-10+x,400,150,200);
  image(win,800+z,0,800,600);
  image(winner,800+z1,0,800,600);
  
  if(y==-80)
  {
    z=-800;
    x=0;
  }
  
  if(x==80)
  {
    z1=-800;
    y=0;
  }
  
  
  
  
}

void mouseReleased()
{
    float contact = dist(mouseX,mouseY,400,300+150);
    if(contact < 75)
    {
     
  rand = int(random(0,9));
  sand = int(random(0,9));
     
  image(bg1,50+z+z1,140,250,250);
  image(bg2,500+z+z1,140,250,250);
  if(rand > sand)
  {
    y=y-10;
  }
  
  if( rand < sand)
  {
    x=x+10;
  }
  
     
    }
}

void loadImages()
{
  man1=loadImage("man1.png");
  man2=loadImage("man2.png");
  bg1=loadImage("bg1.png");
  bg2=loadImage("bg2.png");
  space=loadImage("space.jpg");
  vs=loadImage("vs.png");
  gate=loadImage("gate.png");
  winner=loadImage("1win.png");
  win=loadImage("2win.png");
  
}


void takerandomimage(String fn) 
{
   fragment = loadImage(fn); 
   image(fragment,540,180,200,200);
}

void takerandomimages(String fn) 
{
  {
   fragment = loadImage(fn); 
   image(fragment,70,180,200,200);
  }

}