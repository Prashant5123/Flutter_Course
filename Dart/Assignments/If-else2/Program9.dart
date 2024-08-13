// Write a dart program to calculate your grade based on the marks you got in the exam. The total marks in the exam were 100.
// For 0 to 25 Marks: Grade D
// For 25 to 50 Marks: Grade C
// For 50 to 75 Marks: Grade B
// For 75 to 100 Marks: Grade A

void main(){
  int marks=76;

  if(marks<25 && marks>=0 ){
    print("Grade D");
  }else if(marks<50 && marks>=25 ){
    print("Grade C");
  }else if(marks<75 && marks>=50 ){
    print("Grade C");
  }else if(marks<=100 && marks>=75){
    print("Grade A");
  }else{
    print("Wrong input");
  }
}