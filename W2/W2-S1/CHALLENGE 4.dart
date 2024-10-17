enum Unit{cms,meters,kms}

class Distance{
  final Unit unit;
  final double value;
  Distance(this.unit,this.value);
  Distance.cms(this.value)
   : unit =Unit.cms; 

  Distance.meters(this.value)
   : unit = Unit.meters;
  Distance.kms(this.value)
   : unit = Unit.kms;

   double convert(){
    switch(unit){
      case Unit.cms:
        return value * 1;
      case Unit.kms:
        return value * 100000;
      case Unit.meters:
        return value * 100;
      default :
      return value;
    }
    
  }
  double get result{
    return convert();
  }
  String toString(){
    return 'value $result cms';
  }

  Distance operator +(covariant Distance d){
    return Distance(Unit.cms, this.value + d.value);
  }
}

void main(List<String> args) {
  Distance d1= Distance.cms(3);
  d1.convert();
  Distance d2 = Distance.kms(4);
  d2.convert();
  print(d1);
  print(d2);
  print((d1+d2));

  // I don't know how to add 2 distance,[print(d1 + d2).kms]
}