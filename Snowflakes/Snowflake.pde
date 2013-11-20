class Snowflakes1 {
  PVector loc, vel, acc, sunloc, sunvel;
  color c;
  float scale;

  Snowflakes1() {
    loc = new PVector(random(width), random(-500));
    vel = new PVector(0, random(2, 5));
    acc = new PVector(0, .1);
    sunloc = new PVector(0, 100);
    sunvel = new PVector(5, 0);
    c = color(random(360), 100, 100);
    scale = .01;
  }

  void sun() {
    image(sun, sunloc.x, sunloc.y, sun.width*.3, sun.height*.3);
    sunloc.add(sunvel);
    if (sunloc.x>=width) {
      sunloc.x=0;
    }
  }
  
  void moves() {
    loc.add(vel);
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(radians(random(30)));
    image(snow, 0, 0, snow.width*scale, snow.height*scale);
    popMatrix();
    if (loc.y>=height) {
      loc.y=0;
    }
  }
}

