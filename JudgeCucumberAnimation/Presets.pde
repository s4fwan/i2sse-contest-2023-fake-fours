//maps
PImage[] platformImg = new PImage[3];

Map map1 = new Map(5); //5
Map map2 = new Map(6);
Map map3 = new Map(3);
Map map4 = new Map(2);
Map map5 = new Map(1);

void presetSetup() {
  for(int i=0; i<platformImg.length; i++) {
    platformImg[i] = loadImage("platform"+i+".png");
  }
  map1.platforms[0] = new Platform(platformImg[2], new PVector(0, height/1.45), 3, false);
  map1.platforms[1] = new Platform(platformImg[2], new PVector(width-(3*platformImg[2].width), height/1.45), 3, false);
  map1.platforms[2] = new Platform(platformImg[0], new PVector(width/2-(platformImg[0].width*3)/2, height/2), 3, false);
  map1.platforms[3] = new Platform(platformImg[1], new PVector(2.5*3*platformImg[1].width, height/3), 3, false);
  map1.platforms[4] = new Platform(platformImg[1], new PVector(width-(2.5*3*platformImg[1].width)-(3*platformImg[1].width), height/3), 3, false);
}
