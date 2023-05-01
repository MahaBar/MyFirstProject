/** Akbar
Write a program that store 10 random Decimal numbers 
in List of Decimal
    print out the size of the list 
    print out the sum of all numbers
    print out the average of all numbers 
    now try to go back to the code where you added elements , 
    add more items into the list and run your program again to see if it works. 
*/

List<Decimal> prices // need use plural name or List
        = new List<Decimal>{0.99,3.45,5.11,8.99,5.73,9.99,2.99,0.99,5.90,6.99,55.98} ; 

// print out the size of the list
Integer priceCount = prices.size() ;
System.debug('price count in the list is : ' + priceCount ) ; 


// print out the sum of all numbers
Decimal sum = 0 ; // we create and declare a variable because wee need to get a sum
// iterate over the list using for each loop
for( Decimal eachPrice : prices  ){
    sum += eachPrice ; // like a bank put the miney one by one
}
System.debug('Sum of all prices : ' + sum) ; 


// print out the average of all numbers
// average = sum / count of items
Decimal average = sum / priceCount ;
System.debug('The average price is: ' + average) ; 

