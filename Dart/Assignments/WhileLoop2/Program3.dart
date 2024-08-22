// Write a program to print the countdown of days to submit the assignment

import "dart:io";
void main(){
  int day=int.parse(stdin.readLineSync()!);

  while(day>=0){
    if(day==0){
      print("0 days Assignment is Overdue");
    }else{
      print("$day days remaining");
    }
    day--;
  }
  
}