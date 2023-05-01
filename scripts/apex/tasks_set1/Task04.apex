/**
Declare and initialize two variables 
opportunityAmount as Integer 
stage as String 
if an opportunityAmount is greater than $100,000 and stage is Closed Won 
then print out "High Priority Opportunity, follow up immediately ".
else print out  create an task to follow up next week 
*/
Integer opportunityAmount = 500000 ;
String stage = 'Closed Won' ; 
if(opportunityAmount > 100000 && stage == 'Closed Won' ){
    System.debug('High Priority Opportunity, follow up immediately') ;   
}else{
    System.debug('create an task to follow up next week') ;
}
