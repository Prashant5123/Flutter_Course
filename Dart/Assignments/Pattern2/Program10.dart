import 'dart:io';

void main(){
  print("Enter the no. of rows");
  int row=int.parse(stdin.readLineSync()!);
  int num=1;
  String ch="a";
  for(int i=1;i<=row;i++){
    for(int j=1;j<=row;j++){
      if(i%2==1){
        stdout.write("$num ");
      }else{
        stdout.write("$ch ");
      }
    }
    num++;
    print("");
  }
}