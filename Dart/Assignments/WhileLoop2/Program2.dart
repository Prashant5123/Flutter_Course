// Take a number from user and print all the numbers from the input number till 1. 
// If the input number is odd then print the numbers by the difference of 2 and if the number is even print the numbers with the difference of 1.

import "dart:io";
void main(){
  print("Enter the number:");
  int num=int.parse(stdin.readLineSync()!);
  int temp=num;
  
  while(temp>=1){
    if(num%2==0){
      stdout.write("$temp ");
      temp--;
    }else{
      stdout.write("$temp ");
      temp-=2;
    }
  }
}
