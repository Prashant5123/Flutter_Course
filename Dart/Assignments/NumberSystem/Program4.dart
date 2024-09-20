//WAP to check whether the given number is an armstrong number or not.

import 'dart:io';

void main(){
  print("Enter a number.");
  int num=int.parse(stdin.readLineSync()!);
  int temp=num;
  int sum=0;
  int count=0;

  while(temp>0){
    temp=temp~/10;
    count++;
  }
  temp=num;
  while(temp>0){
    int remainder=temp % 10;
    int power=1;
    for(int j=1;j<=count;j++){
      power=power*remainder;
    }
     sum=sum+power;
     temp=temp~/10;
  }
  if(sum==num){
    print("$num is a Armstrong  Number.");
  }
  else{
     print("$num is not a Armstrong Number.");
  }
}