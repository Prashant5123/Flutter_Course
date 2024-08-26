import 'dart:io';
void main(){
  print("Enter no. of rows");
  int row=int.parse(stdin.readLineSync()!);
  int num=1;
 
  for(int i=1;i<=row;i++){
     int temp=num; 
    for(int j=1;j<=row;j++){
      stdout.write("$temp\t");
      temp+=2;
    } 
    num+=2;   
    print("");
  }
}