/**
7. Create an Array of 10 Doubles 
 - use Array syntax to loop through each item 
 - get the count of the number is between 10 and 20 or 40-50 
 - get the sum of the numbers greater than 30
 */
Double[] newArray = new Double[10];
newArray[0] = 1.10;
newArray[1] = 2.90;
newArray[2] = 13.99;
newArray[3] = 14.66;
newArray[4] = 50.01;
newArray[5] = 46.88;
newArray[6] = 7.09;
newArray[7] = 28.11;
newArray[8] = 9.99;
newArray[9] = 1.01;

System.debug(newArray); 

Integer count = 0;
Double sum = 0;
for(Double each : newArray) {
    if( (each >=10 && each <=20) || (each >=40 && each <=50) ){
        count ++;
    }
    if( each > 30 ){
        sum += each;
    }
}
System.debug(count); 
System.debug(sum); 
