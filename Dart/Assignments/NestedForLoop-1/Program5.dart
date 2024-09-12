import "dart:io";
void main(){
  print("Enter no. of rows");
  int row=int.parse(stdin.readLineSync()!);

  for(int i=1;i<=row;i++){
      int num=i;
    for(int j=1;j<=i;j++){
      if(num%2==0){
        stdout.write("${num*num*num} ");
      }else{
        stdout.write("${num*num} ");
      }
      num++;
    }
    print("");
  }
}