/** Akbar
Write a program that calculates the sum (get a sum) of all 
odd numbers (2) from 1 to 100 using a for loop.
(try out the same with while loop and do while 
loop as practice)
*/

// 1. for loop
Integer sumOfOdd = 0 ; // we need to declare when we need to get a sum or count
for(Integer i = 1 ; i <= 100 ; i +=2){
    sumOfOdd += i ; 
}
System.debug('sum Of Odd from 1 to 100 ' + sumOfOdd) ;


// 2. while loop version 
Integer sumOfOdd1 = 0 ;
Integer i = 1 ;
while(i <= 100){
    
    sumOfOdd1 += i ; // to get a sum
    // System.debug(i) ; just odd number
    i += 2 ; 
}
System.debug('Sum of odd1 ' + sumOfOdd1) ; 


// 3. do while loop version
Integer oddNumber = 1 , sum = 0 ;
do{ 
    sum = sum + oddNumber ;
    oddNumber += 2 ;
}while( oddNumber <= 100 ) ;
System.debug(sum) ;