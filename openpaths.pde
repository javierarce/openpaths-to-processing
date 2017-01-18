ArrayList<Path> paths = new ArrayList<Path>();

void setup () {
  size(800, 800);
  stroke(255);
  fill(255);
  background(0);

  // Boundig box
  // http://boundingbox.klokantech.com
  PVector bBoxTopLeft = new PVector(-3.7152671814, 40.4190179194);
  PVector bBoxBottomRight = new PVector(-3.6982941628, 40.4289169417);

  loadOpenPathsData("data.csv", bBoxTopLeft, bBoxBottomRight);
}

void draw () {
  background(0);
  drawPaths();
}