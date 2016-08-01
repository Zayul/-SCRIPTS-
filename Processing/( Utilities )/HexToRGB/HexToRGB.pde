void setup() {
  size(120, 120);
  noLoop();
}

void draw() {

  background(0);
  noStroke();

  int x = 20; int y = 20;
  int w = 50; int h = 20;
  int pad = 10;

  // NOTE: The "#" character is optional. If present, it is removed during the conversion process.

  HEX_Color blue   = new HEX_Color( "#00F" );                      // RGB
  HEX_Color green  = new HEX_Color( "#00FF00" );                   // RRGGBB
  HEX_Color red_88 = new HEX_Color( "#88FF0000" );                 // ARGB
  HEX_Color red_44 = new HEX_Color( "#FF000044", HEX_Color.RGBA ); // RGBA

  fill(blue.R, blue.G, blue.B);
  rect(x, y, w + (w/2), h);

  y += (h + pad);
  fill(green.R, green.G, green.B);
  rect(x, y, w + (w/2), h);

  y += (h + pad);
  fill(red_88.R, red_88.G, red_88.B, red_88.A);
  rect(x, y, w, h);

  x += ( w - (w/2) );
  fill(red_44.R, red_44.G, red_44.B, red_44.A);
  rect(x, y, w, h);

}
