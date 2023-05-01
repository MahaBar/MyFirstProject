/**
practice List using similar approach 
Write a program that store the even numbers from 1 to 20 into List of Integer
then write an apex code to get the sum of all items in the list.
*/
Integer sumOffEven = 0 ; 

for(Integer count = 1 ; count <= 20 ; count++ ){
      sumOffEven += count ;
}
System.debug('Sum is: ' + sumOffEven) ;



