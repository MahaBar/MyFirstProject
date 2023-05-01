/**
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_math.htm#apex_System_Math_mod

Math class is a class coming from Apex itself
It has lot of pre-written code about math that we can just use directly

Mod operator in math allow you to get the remainder of division

10 / 3 = 3          1 remain

here is no decimal, we always get whole number

 */

 Integer num1 = 10 ;
 Integer num2 = 5 ;
 
 Integer result = num1 / num2;
 System.debug('result value is : ' + result);  

// Math.mod(num1, num2)  ====> remainder of the division (always 0 or 1)
// just like System.debug
Integer remainder = Math.mod(num1, num2);
System.debug('remainder value is : ' + remainder); 

/**
Odd or Even in Math 
Odd number is number that will have remainder of 1 when divided by 2
Even number is number that will have remainder of 0 when divided by 2
*/

Integer score = 47 ;

// store the result of checking the number is even or odd into a Boolean variable
Boolean isEven = Math.mod(score , 2) == 0 ;
System.debug('isEven value is : ' + isEven); 

// print odd number if num3 is odd, and print even number if its even
// we can create a variable "Boolean" or directly print it out
if( isEven ){ // Boolean we do not need "isEven == true", just "isEven"
    System.debug('Even number'); 
}else{
    System.debug('Odd number'); 
}

// what if we do not want to create a variable to store the result of even or odd
if( Math.mod(score, 2)==0 ){
    System.debug('Even number'); 
}else{
    System.debug('Odd number'); 
}


// Math.max(number 1, number 2) ===> return the bigger number
// only compare 2 number (Integer, Decimal, Long and Double)
System.debug('which number is bigger : ' + Math.max(11,99)); 
// OUTPUT which number is bigger : 99


// Math.min(number 1, number 2) ===> return the smaller number
System.debug('which number is smaller : ' + Math.min(11,99)); 
// OUTPUT which number is smaller : 11


// Math.random() ===>
// Return a positive Double that is greater than or equal to 0.0 and les than 1.0

Double randomDbl = Math.random() * 100;
System.debug('randomDbl value is : ' + randomDbl); 
// System.debug('randomDbl value is : ' + randomDbl*100); 

Integer randomInteger = randomDbl.intValue();
System.debug('randomInteger value is : ' + randomInteger); 



Double price = 15.5 ;
Integer priceWholeNumber = price.intValue(); // 15 now it became an Integer
System.debug('priceWholeNumber value is : ' + priceWholeNumber); 











