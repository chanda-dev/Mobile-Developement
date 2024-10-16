enum Direction { north, east, south, west }
 
void main() {
  // Initial position {7, 3} and facing north
  int x = 7;
  int y = 3;
  Direction direction = Direction.north;
  // Example instruction sequence 
  const instructions = "AAlrraa";
  // make all instrictions to uppercase letters to prevent from some error when input lowecase letter
  final uppercase = instructions.toUpperCase();
  // Process the instructions and get the final position and direction

  List instructionSplit = uppercase.split('');
  print(instructionSplit);
  for(var i = 0;i<instructionSplit.length;i++){
    switch(instructionSplit[i]){
      case 'R' :
      if(direction == Direction.north){
        // x=x+1;
        direction = Direction.east;
      }else if(direction == Direction.east){
        // y=y-1;
        direction = Direction.south;
      }else if(direction == Direction.west){
        // y=y+1;
        direction = Direction.north;
      }else if(direction == Direction.south){
        // x=x-1;
        direction = Direction.west;
      }else{
        print("wrong direction");
      }
      
      break;
      case 'A':
      if(direction == Direction.north){
        y=y+1;
        direction = Direction.north;
      }else if(direction == Direction.east){
        x=x+1;
        direction = Direction.east;
      }else if(direction == Direction.west){
        x=x-1;
        direction = Direction.west;
      }else if(direction == Direction.south){
        y=y-1;
        direction = Direction.south;
      }else{
        print("wrong direction");
      }
      break;
      case 'L':
      if(direction == Direction.north){
        // x=x-1;
        direction = Direction.west;
      }else if(direction == Direction.east){
        // y=y+1;
        direction = Direction.north;
      }else if(direction == Direction.west){
        // y=y-1;
        direction = Direction.south;
      }else if(direction == Direction.south){
        // x=x+1;
        direction = Direction.east;
      }else{
        print("wrong direction");
      }
      break;
      default:
      print('wrong direction');
    }
  }
  

  // Print the final position and direction
  print("Final position:${x},${y} ");
  print("Facing: ${direction.name} ");
}
