/**
Declare three integers and initialize their values
checks if the first number is greater than the second number and the second number is greater than the third number. 
If this is true, the program should print "The first number is the largest." 
If not, the program should print "The first number is not the largest."
 */
Integer num1=10, num2=20, num3=30;
if(num1>num2 && num2>num3){
    System.debug('first is largest'); 
}else{
    System.debug('firsst num is not'); 
}


/**
Task 2 :
Declare and initialize an Integer variable. 
checks if a given integer is positive, negative, or zero. 
If the number is positive, the program should print "Positive." 
If the number is negative, the program should print “negative”
Else print Zero
 */
Integer count=5;
if(count>0){
    System.debug('positive'); 
}else if(count<0){
    System.debug('negative'); 
}else{
    System.debug('zero'); 
}


/**
Task 3 : 
Declare and initialize a String variable with one character
check the if character is vowel 'a' , 'e', 'o' , 'u' , 'i'
if true print it's a vowel 
else print it's not a vowel!
 */
String vowel = 'c';
if(vowel=='a'|| vowel=='e'|| vowel=='o'|| vowel=='u'|| vowel=='i'){
    System.debug('vowel'); 
}else{
    System.debug('not vowel'); 
}

/**
Task 4 : 
Declare and initialize two variables 
opportunityAmount as Integer 
stage as String 
if an opportunityAmount is greater than $100,000 and stage is Closed Won 
    then print out "High Priority Opportunity, follow up immediately ".
else print out  create an task to follow up next week 
*/
Integer opportunityAmount = 50000;
String stage = 'Closed Won';
if( opportunityAmount>100000 && stage=='Closed Won' ){
    System.debug('High Priority Opportunity, follow up immediately'); 
}else{
    System.debug('create an task to follow up next week'); 
}



/**Task 5 : 
Declare and initialize variables as below 
leadCompanySize as String 
checks if a Lead's Company size is either "Small" or "Medium". 
If either of these conditions are met, 
print a message that says "Good Lead" 
else take no action 
*/
String leadCompanySize = 'Small';
if( leadCompanySize=='Small' || leadCompanySize=='Medium' ){
    System.debug('Good Lead'); 
}


/**Task 6 :
Declare and initialize variables as below 
annualRevenue as Long 
numberOfEmployees as Integer
checks if an Account's Annual Revenue is greater than $1,000,000 or 
if its Number of Employees is greater than 500. 
If either of these conditions are met, display a message that says "High Potential Account".
else display "Not a High Potential Account"
*/
Long annualRevenue = 1000000000L;
Integer numberOfEmployees = 200;
if( annualRevenue>1000000 || numberOfEmployees>500 ){
    System.debug('High Potential Account'); 
}else{
    System.debug('Not a High Potential Account'); 
}



/**Task 7
Declare 3 Integer variables and initialize their values. 
Write a code to print out the largest number by comparing them with each other. 
*/
Integer n1 = 210, n2=52, n3=88;
if( n1>n2 && n1>n3 ){
    System.debug('largest n1'); 
}else if( n2>n1 && n2>n3 ){
    System.debug('largest n2');
}else{
    System.debug('largest n3');
}


/**In class Task  
Declare a variable called dayCode as Integer
initialize it's value 

check 
if the dayCode value 1, 2, 3, 4, 5 
    print weekday 
if it's 6, 7
    print weekend 
else 
    print invalid day code
*/
Integer dayCode =8;
switch on dayCode{
    when 1,2,3,4,5{
    System.debug('weekday'); 
    }when 6,7{
    System.debug('weekend'); 
    }when else{
    System.debug('invalid day code'); 
    }
}


/**In class Task
// You can use if statement inside another if statement when needed
// this is called nested if statement 

Boolean primeMember = true ; 
Integer itemPrice = 100 ; 

if primeMember is true , there is no shipping cost 
simply print out Your shipping is free
print total is itemPrice 
if primeMember is false 
     itemPrice is greater than 35  ,
            print your shipping is free 
     itemPrice is less than 35 , 
            print out shipping cost is 5$
            print out total is  itemPrice + 5 
 */
Boolean primeMember = true ; 
Integer itemPrice = 100 ; 
if( primeMember ){
    System.debug('Your shipping is free');
    System.debug('total is ' + itemPrice);  
}else{
    if( itemPrice>35 ){
        System.debug('your shipping is free'); 
    }if(itemPrice<35){
        System.debug('shipping cost is 5$'); 
        System.debug('total is : ' + itemPrice + 5); 
    }    
}







