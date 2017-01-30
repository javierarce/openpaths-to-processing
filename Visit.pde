class Visit {
  PVector pos = new PVector();
  PVector lonLat = new PVector();
  
  String date;
  String time;

  Visit (String d, String t) {
    date = d;
    time = t;
  }

  void draw() {
    rect(pos.x, pos.y, 15, 15);
  }
}