class Visit {
  PVector pos = new PVector();
  PVector lonLat = new PVector();
  
  String date;
  String time;

  Visit (String d, String t) {
    date = d;
    time = t;
  }

  void render() {
    ellipse(pos.x, pos.y, 5, 5);
  }
}