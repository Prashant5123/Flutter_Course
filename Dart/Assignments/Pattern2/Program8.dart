import 'dart:io';

void main(){
  print("Enter the no. of rows");
  int row=int.parse(stdin.readLineSync()!);
  int num=1;
  for(int i=1;i<=row;i++){
    for(int j=1;j<=row;j++){
        if(j<row){
           stdout.write("$num\t");
        }else{
          num++;
          stdout.write("$num\t");
        }  
      }
      print("");
    }
  }
