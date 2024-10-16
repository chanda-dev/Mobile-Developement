import 'dart:math';

void main(){
  Point p = Point(1, 2);
  Point p1 = Point(3, 4);
  Shape shape = Shape(p,p1,'black');
  print(shape);

  // p1.translate(4, 5.3);
  // print(p1);
}
class Point{
  double x ,y ;
  Point (this.x,
      this.y);
  void translate(double dx, double dy){
    x += dx;
    y += dy;
  }
  String toString(){
    return '$x,$y';
  }
  
}
class Shape {
  final Point bottomLeft;
  final Point topRight;
  String? color;
  Shape (this.bottomLeft,this.topRight,[this.color]);
  double get width{
    return sqrt(topRight.x - bottomLeft.x);
  }

  double get height{
    return sqrt(topRight.y - bottomLeft.y);
  }
  
  String toString(){
    return "Shape[bottomLeft:($bottomLeft),top right:($topRight) width ${width.toStringAsFixed(2)}, height ${height.toStringAsFixed(2)} color:$color]";
  }
}