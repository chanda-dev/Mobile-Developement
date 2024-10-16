// Class Tree

class Tree {
  String type;
  double height;

  Tree(this.type, this.height);
  @override
  String toString(){
    return 'type ${type} height ${height}';
  }
}

class Windows{
  String color;
  String position;
  num width, height;
  Windows(this.color,this.position,this.width,this.height);
  @override
  String toString(){
    return 'color ${color} position ${position} width ${width} cm height ${height} cm';
  }
}

class Door{
    Windows dorr;
    Door(this.dorr);
}

// Class House
class House {
  String address;
  List<Tree> trees = [];  // by default empty
  List<Windows> windows = [];
  num width, lenght;
  House(this.address,this.lenght,this.width);

  void addTree(Tree newTree){
    this.trees.add(newTree);
  }
  void addWindows(Windows newWindows){
    this.windows.add(newWindows);
  }
  

  String toString(){
    return 'area of house ${lenght * width} and have ${trees.length} trees:\n${trees.join('\n')}\n${windows.length} windows ${windows.join('\n')}';
  }
}

void main(List<String> args) {
  House h1= House("PP", 4.5, 5.5);
  Tree t1 = Tree('oak Tree', 3);
  Tree t2 = Tree('ply wood', 3);
  Windows w1 = Windows('black', 'left side',400,1000);
  h1.addTree(t1);
  h1.addTree(t2);
  h1.addWindows(w1);
  print(h1);
}

