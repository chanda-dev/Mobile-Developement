class Point {
    final  int x;
    final int y;

  Point(this.x, this.y);

  @override
  String toString() {
    return "x= $x - y= $y";
  }

  Point translate(int dx, int dy) {
    return Point(x+dx,y+dy);
  }
}

main() {
  Point p1 = Point(1, 2);
  
  print(p1);

}