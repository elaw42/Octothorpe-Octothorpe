Snowflakes1[] snows = new Snowflakes1[1000];
PImage snow, place, sun, k;

void setup () {
  sun = loadImage("sun.jpg");
  place = loadImage("Place.jpg");
  k = loadImage("k.jpg");
  size(place.width, place.height);
  colorMode(HSB, 360, 100, 100, 100);
  imageMode(CENTER);
  snow = loadImage("snowflake.png");
  for (int i = 0; i < snows.length; i++) {
    snows[i] = new Snowflakes1();
  }
}

void draw() {
  background(place);
  snows[1].sun();
  image(k, 300, 270, k.width*.5, k.height*.5);
  for (int i = 0; i < snows.length; i++) {
    snows[i].moves();
  }
}

