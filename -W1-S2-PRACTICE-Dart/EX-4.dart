void main() {
  // Map of pizza prices
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  // Example order
  const order = ['margherita', 'pepperoni', 'pineapple'];
  // Your code
  double total = 0;
  for(var i = 0;i<order.length;i++){
    if(!pizzaPrices.containsKey(order[i])){
      
      print('${order[i]} is not on the menu');
    } else {
      total = total+pizzaPrices[order[i]]!;
    }
    
  }
  
  print('Total price is: ${total}\$');
}
