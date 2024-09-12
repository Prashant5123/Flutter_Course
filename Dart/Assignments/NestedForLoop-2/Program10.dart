import "dart:io";
void main(){
  print("Enter no. of row");
  int row=int.parse(stdin.readLineSync()!);
  
  int num1=1;
  int num2=1;
  if(row>=1){
    print("1");
  }
  

  for(int i=2;i<=row;i++){
    for(int j=1;j<=i;j++){
      stdout.write("${num2} ");
      int temp=num2;
      num2=num2+num1;
      num1=temp;
    }
    print("");
  }
}