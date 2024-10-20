enum Skill { FLUTTER, DART, OTHER }

class Employee {
final String _name;
final  Address _address;
      List<Skill> _skill = [];
final  int _yearsOfExperience;
final double _baseSalary;

  String get name{
    return _name;
  }

  Address get address{
    return _address;
  }

  List get skill{
    return _skill;
  }

  double get baseSalary{
    return _baseSalary;
  }

  int get yearsOfExperience{
    return _yearsOfExperience;
  }


  double addSalary(double newbaseSalary){
    for(var i = 0;i<skill.length;i++){
      
      if(skill[i] == Skill.DART){
          newbaseSalary+=5000;
      }else if(skill[i] == Skill.FLUTTER){
          newbaseSalary+=3000;
      }else{
        newbaseSalary+=2000;
      }
    }
    return newbaseSalary;
  }

  Employee(this._name, this._address, this._yearsOfExperience, this._baseSalary);

  Employee.mobileDeveloper(this._name, this._address, this._yearsOfExperience, this._baseSalary, this._skill);


  void addSkill(Skill newSkill){
    this.skill.add(newSkill);
  }

  void printDetails() {
    print('Employee: $name, Base Salary: \$${addSalary(baseSalary)}, Address is: $address, professional in: ${skill.join(' ')} with $yearsOfExperience years experience');
  }
}

class Address{
  String street;

  String city;

  int zipCode;

  Address(this.city,this.street,this.zipCode);

  String toString(){
    return 'street $street in city $city with Zip code: $zipCode';
  }
}

void main() {
  var a1 = Address('PP', "National 6 road", 120000);

  var emp1 = Employee.mobileDeveloper('Sokea', a1,3,4000,[Skill.DART,Skill.FLUTTER]);
  emp1.addSalary(emp1._baseSalary);
  emp1.printDetails();

  //var emp2 = Employee('Ronan', 45000);
  //emp2.printDetails();
}