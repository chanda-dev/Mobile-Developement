/* 
  step 1 input -> output
  step 2 write on paper or disccuss about algorithm
  step3 write code
*/
 
void main()
{
    // Read input from STDIN
    //String? instructions  = stdin.readLineSync(); 
    String instructions = 'da';
    int position = 0;
    List<String> split =  instructions.split('');
    for(var i  = 0;i<split.length;i++){
        if(split[i] == "R"){
            position+= 1;
        } else if(split[i] == "L"){
            position-=1;
        } else {
            print("wrong input");
        }
    }
    print(position);
     /* Enter your code here. Print output to STDOUT */
}