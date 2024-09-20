// WAP to check whether the given number is an Abundant number or not.

import 'dart:io';

void main(){
  print("Enter a number.");
  int num=int.parse(stdin.readLineSync()!);
  int sum=0;
  for(int i=1;i<=num/2;i++){
    if(num%i==0){
      sum=sum+i;
    }
  }

  if(sum>=num){
    print("$num is a Abundant Number.");
  }
  else{
     print("$num is not a Abundant Number.");
  }
}