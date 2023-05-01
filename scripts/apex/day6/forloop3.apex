/**
Count from 1 - 10 using for loop
    print the count multiplied by 5
    output should look like this:
    1 x 5 = 5
    2 x 5 = 10
    3 x 5 = 15
    ........
*/
 for(Integer count=1 ; count<=10 ; count++ ){
    System.debug(count + ' X 5 = ' +  (count*5)  ); 
}

// Integer count = 1 ;
// // print out to display below 1 x 5 = 5
// System.debug(count + ' x 5 = ' +  (count*5)) ; 

/**
Continue from above code,
above code works great if you just want to get the 
multiplication table of 5 , we want to be able to
provide any number not just 5 and generate 
multiplicstion table of many numbers
 */

 System.debug('-----------------------')  ;

// Integer num = 9 ; 
// Integer count = 4 ; 

// first number you get from variable count
// second number you get from variable num
//result you get by multiplying 2 numbers
// eventually generate this output
// in below format 
// 1 x 5 = 5
// System.debug(count + ' x ' + num  + ' = ' + (count*num)) ;

Integer num = 6 ;

for(Integer count = 1 ; count <=10 ; count++ ){
    System.debug(count + ' x ' + num  + ' = ' + 
    (count*num)) ;
}
 
System.debug('-----------------------')  ;

/**
Give a number , print out below 

luckyNumber + 1 = the result 
luckyNumber + 2 = the result
luckyNumber + 3 = the result
....
luckyNumber + 10 = the result

*/
Integer luckyNumber = 7 ;
/**
7 + 1 = 8
7 + 2 = 9
7 + 3 = 10
7 + 4 = 11
7 + 5 = 12
.....
7 + 10 = 17 
*/
for(Integer count=1 ; count<=10 ; count++){
    // 7 + 1 = 8
    System.debug( luckyNumber + ' + ' + 
                count + ' = ' + (luckyNumber+count)) ;
}