import "dart:io";

void main(){
  print("Enter no. of rows");
  int row=int.parse(stdin.readLineSync()!);
  
  for(int i=1;i<=row;i++){
    int temp=1;
    int num=i;
    for(int j=1;j<=row;j++){
      if(num<=4){
        stdout.write("${num++} \t"); 
      }else{
         stdout.write("${temp++} \t");
       
      } 
    }
    print("");
  }
}