// Write a program to print the square of odd digits and cube of even digits between 40 to 50

void main(){
  int num=40;
  while(num<=50){
    if(num%2==1){
      print(num*num);
    }
    else{
      print(num*num*num);
    }
    num++;
  }
}