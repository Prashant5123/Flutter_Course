import "dart:io";

void main(){
  print("Enter no. of row");
  int row=int.parse(stdin.readLineSync()!);
  int space=0;
  for(int i=1;i<=row;i++){
    
    
    if(i%2==0){
      space=1;
    }else if(i%4==1 || i%4==3){
        space=(i%4==1)? 0:2;
    }

    for(int sp=1;sp<=space;sp++){
      stdout.write("  ");
    }
    print("* ");


    
  }

  
}