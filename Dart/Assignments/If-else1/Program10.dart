// Write a dart program to calculate electricity bill of a house based
// on following criteria
// For first 90 units: No charge
// 90 to 180 units: 6 rupees per unit
// 180 to 250 units: 10 rupees per unit
// Above 250 units : 15 rupees per unit

void main(){
  int units=140;
  if(units<90){
    print("No charge");
  }else if(units>=90 || units<180){
    print(units*6);
  }else if(units>=180 || units<250){
    print(units*10);
  }else{
     print(units*15);
  }


}