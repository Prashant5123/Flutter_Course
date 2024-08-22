// Write a program to print the numbers in range 1 to 10 but skip the print statement when the number is 5.

void main(){
  int num=1;
  while(num<=10){
    if(num==5){
      num++;
      continue;
    }else{
      print(num);
    }
    num++;
  }
}