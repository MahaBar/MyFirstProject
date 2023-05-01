/*Given  2 Integer values : 
Integer num1 = 10 ; 
Integer num2 = 20 ;

Swap the value of num1 , num2 
so num1 become 20 and num2 become 10.
HINT : you need a temp variable for temporarily storing value of one number. 
*/

// num1=num2   num1->20  num2->20
// num2=num1

Integer num1 = 10 ; 
Integer num2 = 20 ;
Integer temp =num1;

num1=num2;
num2=temp;

System.debug('num1 '+num1); 
System.debug('num2 '+num2); 