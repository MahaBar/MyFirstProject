/**
Loop , is for repeating certain block of code
as long as certain condition is true

there are 4 type of loops:
while loop
do while loop
for loop
for each loop 

do {
    // repeating code goes here
}While(condition) ;
 */
Integer score = 100 ;
// count from 1 to 10 
do{

    System.debug(score++);

}while(score < 11) ;

System.debug('-------------------');

// Countdown 10 9 ... 1
Integer sushi = 10 ;

do{
    System.debug(sushi--);

}while( sushi > 0 );


