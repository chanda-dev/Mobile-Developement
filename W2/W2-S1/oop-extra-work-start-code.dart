// Class Tree


enum Color{Black,White}

enum TypeOfRoom{LivingRoom,BathRoom,BedRoom}

class Tree {
  String type;
  double height;

  Tree(this.type, this.height);
  @override
  String toString(){
    return 'type ${type} height ${height}';
  }
}

class Atr{
  final Color? color;
  final String? position;
  final num? width, height;

  Atr({required this.color, required this.position, required this.width, required this.height});
  
}



class WindowsDoor{ // if write like this, should use Parent class and child class 
  final Color? color;
  final String? position;
  final num? width, height;
  WindowsDoor.windows({this.color,this.position,this.width,this.height});
  WindowsDoor.doors({this.color,this.position,this.width,this.height});
  @override
  String toString(){
    return 'color ${color!.name} position ${position} width ${width} cm height ${height} cm';
  }
}

// class Windows extends Atr{
//   Windows({required super.color, required super.position, required super.width, required super.height});
  
//   String toString(){
//     return 'color ${color!.name} position ${position} width ${width} cm height ${height} cm';
//   }

// }

// class Doors extends Atr {
//   Doors({required super.color, required super.position, required super.width, required super.height});

//     String toString(){
//       return 'color ${color!.name} position ${position} width ${width} cm height ${height} cm';
//     }
  
// }

class Roof{
  final String? shape;

  final Color? color;

  Roof({required this.shape, required this.color});
  
  String toString(){
    return 'Shape ${shape} Color ${color!.name}';
  } 
}

class Room{
  final TypeOfRoom? room;

  Room({required this.room});
  
  String toString(){
    return '${room!.name}';
  }
}

// Class House
class House {
  String address;
  List<Tree> trees = [];  // by default empty
  List<WindowsDoor> windows = [];
  List<WindowsDoor> doors = [];
  List<Room> rooms = [];
  Roof roof;
  num width, lenght;
  House(this.address,this.lenght,this.width,this.roof);

  void addTree(Tree newTree){
    this.trees.add(newTree);
  }
  void addWindows(WindowsDoor newWindows){
    this.windows.add(newWindows);
  }

  void addDoors(WindowsDoor newDoor){
    this.doors.add(newDoor);
  }

  void addRooms(Room newRoom){
    this.rooms.add(newRoom);
  }
  

  String toString(){
    return 'area of house ${lenght * width} and have ${trees.length} trees:\n${trees.join('\n')}m\n${windows.length} windows ${windows.join('\n')}\n${doors.length} doors ${doors.join('\n')} and Shape of roof is ${roof.shape} with color ${roof.color!.name}\nand have ${rooms.length} rooms are ${rooms.join('\n')}';
  }
}

void main(List<String> args) {
  Roof r1 = Roof(shape: 'flat', color: Color.Black);
  House h1= House("PP", 4.5, 5.5,r1);
  Tree t1 = Tree('Parm Tree', 3);
  Tree t2 = Tree('Coconut tree', 3);
  Room ro1 = Room(room: TypeOfRoom.LivingRoom);
  Room ro2 = Room(room: TypeOfRoom.BedRoom);
  Room ro3 = Room(room: TypeOfRoom.BathRoom);
  WindowsDoor w1 = WindowsDoor.windows(color: Color.Black,position: 'Left Side',width: 30,height: 60);
  WindowsDoor d1 = WindowsDoor.doors(color: Color.White,position: 'front',height: 200,width: 100);
  
  h1.addTree(t1);
  h1.addTree(t2);
  h1.addWindows(w1);
  h1.addDoors(d1);
  h1.addRooms(ro1);
  h1.addRooms(ro2);
  h1.addRooms(ro3);
  print(h1);
}

