class Map {
  Platform[] platforms;
  
  Map(int n) {
    platforms = new Platform[n];
  }
  
  int platformNum() {
    return platforms.length;
  }
  
  void display() {
    imageMode(CORNER);
    for(int i=0; i<platforms.length; i++) {
      platforms[i].display();
    }
  }
}
