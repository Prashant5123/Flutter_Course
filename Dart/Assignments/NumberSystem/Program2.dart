//WAP to check whether the given number is a prime number or not.

import 'dart:io';

void main(){
  print("Enter a number.");
  int num=int.parse(stdin.readLineSync()!);
  int count=0;
  for(int i=1;i<=num/2;i++){
    if(num%i==0){
      count++;
    }
  }

  if(count<=2){
    print("$num is a Prime Number.");
  }
  else{
     print("$num is not a Prime Number.");
  }
}