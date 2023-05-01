String studentName 		= 'Okan' ;
Integer studentNameAge 	= 35 ;
String studentState 	= 'CA' ;
Boolean attendClass 	= true ; 
Decimal studentHeight 	= 5.1 ;
/*
System.debug('My name is ' + studentName + '.' );
System.debug('I am ' + studentNameAge + ' years old. ');
System.debug('I live in ' + studentState + ' State.' );
System.debug('I attend class daily ' + attendClass + '.' );
System.debug('I am ' + studentHeight + ' feet tall.');
*/
System.debug('My name is ' + studentName 
             + '. I am ' + studentNameAge + ' years old. ' 
            + 'I live in ' + studentState + ' State. ' 
            + 'I attend class daily ' + attendClass + '. ' 
            + 'I am ' + studentHeight + ' feet tall.');

// Assignment Operators = 
// Compound assignment operator +=, -=, *=, /=
// Increment and Decrement Operator ++ --

// Relational (Comparison) Operators >, >=, <, <=, ==, !=, <> 
// compare two items and return Boolean result (true | false)

// Logical Operators && (AND)   || (OR)    ! (NOT)

// Shortcut for declaring and assigning multiple variable of same type
Integer num1 = 100, num2 = 200, num3 = 300 ;

Decimal price1 = 699.99 , price2 = 799.99 , price3 = 1100.99 ;

// print out the result of price1 is greater than price3

System.debug('Is price1 is greater than price3 :' + (price1 > price3) );

// store the result of price1 greater than price2 AND price2 less than price3
// into a Boolean variable and print it out

Boolean result1 = (price1 > price2) && (price2 < price3) ;
System.debug('Result of price1 greater than price2 ' 
             + ' AND price2 less than price3 : ' 
             + result1);

// Increment and Decrement operators to increase|decrease the value by one

// ++ used in the beginning of the variable is called pre-increment ++score
// ++ used in the end of the variable is called post-increment score++
// -- used in the beginning of the variable is called pre-decrement --score
// -- used in the end of the variable is called post-decrement score--

Integer count = 10 ;

System.debug('value of count ' + count); // 10

System.debug('value of ++count : ' +     ++count ); // 11
System.debug('value of --count : ' +     --count ); // 10

System.debug('value of count++ : ' +     count++ ); // 10 next time 11
System.debug('the current value of count  ' +     count ); // 11

System.debug('value of count-- : ' +     count-- ); // 11 right now , next time 10
System.debug('the current value of count  ' +     count ); // 10

// current value of count is 10 
System.debug( count++   + '-------' + count   ); // 10------11
// current value of count is 11
System.debug(count--    + '-------' + count   ); // 11------10

// current value of count is 10 
System.debug( ++count   + '-------' + count   ); // 11------11
// current value of count is 11
System.debug( --count   + '-------' + count   ); // 10------10

// Conditional statements : 
//conditionally execute part of the code 

Integer examScore = 57 ; 

// if exam score is more than 66 
// show debug message passed

/*  if statement without else. 
if( examScore > 66 ){
    System.debug('Passed');
}
*/

// if exam score is more than 66 
// show debug message passed , and another message congrats
//otherwise show failed , and try again later


if( examScore > 66 ){
    System.debug('Passed');
    System.debug('Congrats');
}else {
    System.debug('Failed');
    System.debug('Try again Later');
}

// Create a String variable to store studentName 
// give a value 
// if the value equal Fady , print clockmaster 
// else print No Break
String studentName = 'Osman' ; 

if(studentName == 'Fady'){
    System.debug('clockmaster, Break Time!!');
}else{
    System.debug('No Break ');
}

// Create a variables : 
// annualRevenue as Integer and initialize it's value 
// rating as String 

/* If the annualRevenue greater than 100000 
  assign the value of rating to hot 
  otherwise assign the value of rating to cold 
  print out the rating variable outside your if statement 
*/    

//Integer annualRevenue = 500 ;
//String rating ; 
//{ } this is called curly braces
/**
if(annualRevenue > 100000 ){
    rating = 'hot' ; 
}else{
    rating = 'cold' ; 
}
System.debug('Rating is ' + rating);
**/ 


// Ternary operator can be used to
// conditionally assign the value of a variable 
// DataType yourVariableName =  (condition) ? TrueValue : FasleValue; 
   
Integer annualRevenue = 500000000 ; 
String rating = (annualRevenue > 100000) ? 'hot' : 'cold' ; 
System.debug('Rating is ' + rating);


// declare and initialize a variable called score1 
// declare a String variable called examResult 
// assign the value of examResult according to the score1 > 66 or not
Integer score1 = 67 ; 
String examResult = (score1>66) ? 'PASS' : 'FAIL'  ; 
System.debug('Exam Result : ' + examResult);

// declare and initiaze a variable called salary as Integer 
// declare a Double variable called taxRate 
// assign the value of taxRate according to below condition
// if the salary is greater than 100K, taxRate is 0.3 else 0.15
Integer salary = 150000 ;
// Double taxRate ;
/*
if (salary>100000){
    taxRate = 0.3 ;
}else{
    taxRate = 0.15 ;
}
*/
Double taxRate = (salary>100000) ? 0.3 : 0.15 ;
System.debug('The rate is : ' + taxRate);

// if the score is less than 0 or more than 100
// print invalid score
// else
// print valid score

// Integer score2 = 77 ;
/*
if(score2>100 || score2 <0 ){
    System.debug('Invalid Score');
}else{
    System.debug('valid score');
}
*/
    
// Multi Branch if statement 

// if the score is less than 0 or more than 100 
// print invalid score 
// if the score is more than 90 print A 
// if the score is between 80 and 90 print B
// if the score is between 70 and 80 print C
// else print work harder 

Integer score2 = 87 ;

if(score2 > 100 || score2 <0 ){
    System.debug('Invalid Score');
}else if(score2 > 90){
    System.debug('You got A');
}else if(score2 > 80){
    System.debug('You got B');
}else if(score2 > 70){
    System.debug('You got C');
}else{
    System.debug('Try Harder');
}

// declare a String variable called season
// and initialize it`s value
/*
if it`s spring 	print Go Camping
if it`s summer	print Go swimming
if it`s fall 	print Go Pick Pumpkin
if it`s winter	print Go to sleep
if nothing match print invalid season
*/
String season = 'summer' ; 

if(season == 'spring'){
    System.debug('Go Camping ');
}else if(season == 'summer'){
    System.debug('Go Swimming  ');
}else if(season == 'fall'){
    System.debug('Go Pick Pumkin ');
}else if(season == 'winter'){
    System.debug('Go to sleep ');
}else{
    System.debug('Invalid Season');
}



















