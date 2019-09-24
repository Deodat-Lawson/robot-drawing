/* Made by Timothy Lin
  Block 1-4
*/
float x = 0;
float y = 0;
import java.util.*;
Random rand = new Random();
boolean a = true;
int bx = rand.nextInt(1440);
int by = rand.nextInt(960);
int bs = rand.nextInt(10);
int s = 0;
int c1 = 0;
int bx2;
int by2;
int bs2;
int zoom = 1;
void setup(){
  size(1440, 960);
    smooth();
  noStroke();
}
void draw(){
  background(0);
  for(int i = 0; i < 100; i++){
    bx = rand.nextInt(1440);
    by = rand.nextInt(960);
    bs = rand.nextInt(10);
    bx2 = bx;
    by2 = by;
    bs2 = bs;
      ball();
  }
 
  stroke(80, 207, 255,30);
  fill(80, 207, 255,30);
  rect(90,60, 1260+s,840+s);
  //first
 
  stroke(80, 207, 255,40);
  fill(80, 207, 255,40);
  rect(180,120, 1080+s,720+s);
  //second
 
  stroke(80, 207, 255,80);
  fill(80, 207, 255,80);
  rect(270,180, 900+s,600+s);
  //third
 
  image();
  stroke(80, 207, 255);
  line(0,0,270,180);
 
  line(1440,0,1170,180);
 
  line(0,960,270,780);
 
  line(1440,960,1170,780);
 
//gold
  for(int i = 0; i < 900; i +=20){
//255, 223, 60 is gold
    fill(100+i/3, 255-i/5, 0+i/5,90);
    stroke(255, 223, 60,90);
    triangle(i+270,180,i+290,180,280+i,160);
  }
  for(int i = 0; i < 600; i +=20){
//255, 223, 60 is gold
    fill(100+i/3, 255-i/5, 0+i/5,90);
    stroke(255, 223, 60,90);
    triangle(270,i+180,270,200+i,250,190+i);
  }
  for(int i = 0; i < 600; i +=20){
//255, 223, 60 is gold
    fill(255-i/3, 100+i/5, 255-i/5,90);
    stroke(255, 223, 60,90);
    triangle(1170,i+180,1170,200+i,1190,190+i);
  }
  for(int i = 0; i < 900; i +=20){
//255, 223, 60 is gold
    fill(255-i/3, 100+i/5, 255-i/5,90);
    stroke(255, 223, 60,90);
    triangle(i+270,780,i+290,780,280+i,800);
  }
 
 
//red outline
  for(int i = 0; i < 1080; i +=20){
//255, 223, 60 is gold
    fill(255, 36, 0,90);
    stroke(255, 36, 0,90);
    triangle(i+180,120,i+200,120,190+i,100);
  }
  for(int i = 0; i < 720; i +=20){
//255, 223, 60 is gold
    fill(127, 255, 212,90);
    stroke(127, 255, 212,90);
    triangle(180,i+120,180,140+i,160,130+i);
  }
  for(int i = 0; i < 720; i +=20){
//255, 223, 60 is gold
    fill(127, 255, 212,90);
    stroke(127, 255, 212,90);
    triangle(1260,i+120,1260,140+i,1280,130+i);
  }
  for(int i = 0; i < 1080; i +=20){
//255, 223, 60 is gold
    fill(255, 36, 0,90);
    stroke(255, 36, 0,90);
    triangle(i+180,840,i+200,840,190+i,860);
  }
 
 
  //red outline
  for(int i = 0; i < 1260; i +=20){
//255, 223, 60 is gold
    fill(127, 255, 212,50);
    noStroke();
    triangle(i+90,60,i+110,60,100+i,40);
  }
  for(int i = 0; i < 840; i +=20){
//255, 223, 60 is gold
    fill(255, 36, 0,50);
    noStroke();
    triangle(90,i+60,90,80+i,70,70+i);
  }
  for(int i = 0; i < 840; i +=20){
//255, 223, 60 is gold
    fill(255, 36, 0,50);
    noStroke();
    triangle(1350,i+60,1350,80+i,1370,70+i);
  }
  for(int i = 0; i < 1260; i +=20){
//255, 223, 60 is gold
    fill(127, 255, 212,50);
    noStroke();
    triangle(i+90,900,i+110,900,100+i,920);
  }
 
  while(a){
    x+=14.4;
    y+=9.6;
    delay(5);
    if(x > 360 && y > 240){
      a = false;
    }
  }
}
void image(){
  fill(80, 207, 255);
  stroke(80, 207, 255);
  rect(x+0,y+ 0, 720+s,480+s);
//(0,350)is the rect
  fill(23,183,0);
  stroke(23,183,0);
  rect(x+0,y+350,720+s,130+s);
//color(238,255,5)
  fill(238+c1,255,5);
  stroke(238,255,5);
//center(600,150)
//rad(535,150)
  ellipse(x+600,y+150,150+s,150+s);
 
//color (70,0,165)
  fill(70,0,165);
  stroke(70,0,165);
//tri top(200,100)
//tri end 1 (0,350)
//tri end 2 (400,350)
  triangle(x+200,y+100,x+0,y+350,x+400,y+350);
 
//tri2 top(720,350)
//tri2 end 1 (600,150)
//tri2 end 2 (300,350)
  triangle(x+720,y+350,x+600,y+150,x+300,y+350);
 
//color(102,102,102)
    fill(102,102,102);
  stroke(102,102,102);
//center(265,375)
//size 60
  ellipse(x+265,y+375,60,60);
 
//center(220,260)
//(220,257,309,377)
  fill(0);
  stroke(0);
  rect(x+219,y+257,90,120);
  fill(102);
  stroke(102);
  line(x+306,y+57,x+289,y+112);
  line(x+246,y+113,x+250,y+118);
  line(x+343,y+170,x+302,y+166);
  fill(0);
  stroke(0);
for(int i =0; i <3; i++){
//266,267
  stroke(102,102,102);
  rect(x+266+i*10,y+194,1,62);
}
  stroke(0);
  ellipse(x+277,y+150,90,90);
  stroke(255);
  fill(255);
  ellipse(x+288,y+150,28,28);
  stroke(0);
  fill(0);
  ellipse(x+288,y+150,5,5);
  stroke(153);
  fill(153);
  ellipse(x+263,y+148,8,8);
  ellipse(x+296,y+130,6,6);
  ellipse(x+305,y+162,4,4);
  rect(x+219,y+274,90,6);
  stroke(102);
  fill(102);
}
void ball(){
  stroke(255);
  fill(255);
  ellipse(bx2,by2,bs2,bs2);
 
}
