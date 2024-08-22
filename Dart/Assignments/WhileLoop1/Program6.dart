// Write a program to print the square of odd digits between 20 to 10

void main(){
  int num=20;
  while(num>=10){
    if(num%2==1){
      print(num*num);
    }
    num--;
  }
}