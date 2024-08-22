// Write a program to print the countdown of days to submit the assignment

void main(){
  int numDays=7;
  while(numDays>=0){
    if(numDays==0){
      print("0 days Assignment is Overdue");
    }else{
      print("$numDays day remaining");
    }
    numDays--;
  }
}