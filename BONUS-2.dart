

void main(List<String> args) {
  isBalance('{what is (42)}');
  isBalance('[text}');
  isBalance('{[[(a)b]c]d}');
  isBalance('{');
}

void isBalance (String input) {
  final splitInput = input.split('');
  List<String> stack =  [];
  var marching = {
    ')':'(',
    '}':'{',
    ']':'['
  };
  for(var i = 0;i<splitInput.length;i++){
    if(marching.containsValue(splitInput[i])){
      // add only String that have in marching list
      // other do not add 
      stack.add(splitInput[i]);  
      
    } else if(marching.containsKey(splitInput[i])){
      
      if (stack.isEmpty || stack.removeLast() != marching[splitInput[i]]){  
         // the first stack.removeLast is [ 
         //and marching[]] = [ 
         //so it equal, make it Balance
        
        print('Not Balance');
          return;
      }
      
    } 
  }
  if(stack.isEmpty == false){
    print('Not Balance');
  } else {
    print('Balance');
  }
  
}