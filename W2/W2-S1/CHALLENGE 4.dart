

class Distance{
  final String unit;
  final double value;
  Distance(this.unit,this.value);
  Distance.cms(this.value)
   : unit = 'cms'; 

  Distance.meters(this.value)
   : unit = 'meters';
  Distance.kms(this.value)
   : unit = 'kms';

   double convert(){
    switch(unit){
      case 'cms':
        return value * 1;
      case 'kms':
        return value * 100000;
      case 'meters':
        return value * 100;
      default :
      return value;
    }
    
  }
  double get result{
    return convert();
  }
  String toString(){
    return 'value $result $unit';
  }

  Distance operator +(covariant Distance d){
    return Distance(unit, this.value + d.value);
  }
}

void main(List<String> args) {
  Distance d1= Distance.cms(3);
  d1.convert();
  Distance d2 = Distance.kms(4);
  d2.convert();
  print(d1);
  print(d2);
  print((d2+d1));

  // I don't know how to add 2 distance,[print(d1 + d2).kms]
}