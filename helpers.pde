void loadOpenPathsData(String filename, PVector bBTopLeft, PVector bBBottomRight) {
  Table t = loadTable(filename, "header");

  String prevDate = null;

  Path path = new Path(0);

  for (int i = 0; i < t.getRowCount(); i++) {

    String dateTime = t.getString(i, "date");
    String[] tokens = split(dateTime, " ");
    
    String date = tokens[0];
    String time = tokens[1];
    
    if (prevDate == null || !prevDate.equals(date)) {
      color c = color(random(255), random(255), random(255));
      path = new Path(c);
      paths.add(path);
    }

    Visit v = new Visit(date, time);

    v.lonLat.y = t.getFloat(i, "lat");
    v.lonLat.x = t.getFloat(i, "lon");

    path.addVisit(v);

    prevDate = date;

    for (Path p : paths) {
      p.placeVisits(bBTopLeft, bBBottomRight);
    }
  }
}

void drawPaths() {
  for (Path path : paths) {
    path.draw();
  }
}