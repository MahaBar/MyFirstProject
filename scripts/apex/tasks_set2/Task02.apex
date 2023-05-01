/**
2. Write an Apex code that store 3 numbers in Integer variables
   - Print out the smallest number 
*/
Integer num1 = 5 ; 
Integer num2 = 10 ;
Integer num3 = 15 ;
if(num1 < num2 && num1 < num3){
    System.debug('The smallest number is ' + num1) ;
}else if(num2 < num1 && num2 < num3){
    System.debug('The smallest number is ' + num2) ;
}else{
    System.debug('The smallest number is ' + num3) ;
}  