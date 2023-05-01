/**
Get the sum of number from 1-10
and store it into a variable called sum
*/

Integer sum = 0 ;

for(Integer count = 1 ; count <=10 ; count++){

    System.debug('Iteration number '  + count) ;
    sum = sum + count ; // or shortcut sum += count
    System.debug('sum :' + sum) ;
}

System.debug('Sum of 1 to 10 is ' + sum) ;