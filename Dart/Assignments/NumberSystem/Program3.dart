//WAP to check whether the given number is a Strong number or not.

import 'dart:io';

void main(){
  print("Enter a number.");
  int num=int.parse(stdin.readLineSync()!);
  int temp=num;
  int sum=0;
  while(temp>0){
    int remainder=temp % 10;
    temp=temp~/10;
    int factorial=1;
    for(int j=1;j<=remainder;j++){
      factorial=factorial*j;
    }

    sum=sum+factorial;
  }
  if(sum==num){
    print("$num is a Strong Number.");
  }
  else{
     print("$num is not a Strong Number.");
  }
}