class Path {
  
  ArrayList<Visit> visits = new ArrayList<Visit>();
  color pathColor;

  Path(color c) {
    pathColor = c;
  }

  void placeVisits(PVector tl, PVector br) {
    for (Visit v : visits) {
      v.pos.x = map(v.lonLat.x, tl.x, br.x, 0, width);
      v.pos.y = height - map(v.lonLat.y, tl.y, br.y, 0, height);
    }
  }

  void addVisit(Visit v) {
    visits.add(v);
  }

  void render () {
    Visit previousVisit = new Visit(null, null);

    stroke(pathColor);
    fill(pathColor);

    for (Visit v : visits) {
     
      if (previousVisit.pos.x != 0) {
        line(v.pos.x, v.pos.y, previousVisit.pos.x, previousVisit.pos.y);
      }
      
      v.render();
      previousVisit = v;
    }
  }
}