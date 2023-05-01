/**
1. Write an Apex code that store two numbers in Integer variables 
   - Print out the bigger number 
*/
Integer num1=688, num2=443;
if( num1>num2 ){
    System.debug('num1 bigger'); 
}else{
    System.debug('num2 bigger'); 
}


/** 
2. Write an Apex code that store 3 numbers in Integer variables
   - Print out the smallest number 
*/
Integer s1=65, s2=764, s3=24;
if( s1<s2 && s1<s3 ){
    System.debug('s1 is smallest'); 
}else if( s2<s1 && s2<s3 ){
    System.debug('s2 is smallest');
}else{
    System.debug('s3 is smallest');
}


/**
3. Write an Apex that store 2 Booleans value into isBaby1Laughing, isBaby2Laughing
   - if both value true print out 'both laughing'
   - if only isBaby1Laughing then print out 'only first baby laughing'
   - if only isBaby2Laughing then print out 'only second baby laughing'
   - else print 'no babies are laughing'

3.1 in the same file, continue to write code to implement below logic : 
       - Print 'both in same mood'  if Both Babies are laughing or Both Babies are not laughing
      - otherwise print 'Not in a same mood' 
*/
Boolean isBaby1Laughing = false;
Boolean isBaby2Laughing = true;
if( isBaby1Laughing && isBaby2Laughing ){
    System.debug('both laughing'); 
}else if( isBaby1Laughing ){
    System.debug('only first baby laughing'); 
}else if(isBaby2Laughing){
    System.debug('only second baby laughing'); 
}else{
    System.debug('no babies are laughing'); 
}

if( isBaby1Laughing == isBaby2Laughing ){
    System.debug('both in same mood'); 
}else{
    System.debug('Not in a same mood'); 
}
    

/**
4. Write an Apex that store caseStatus as String 
   - if  caseStatus is New print 'Case need attention'
   - if  caseStatus is Working print 'Case in progress'
   - if  caseStatus is Escalated print 'Case need to be reassigned and manager need to be notified'
   - if  caseStatus is Closed print 'Case has been resolved'
*/
String caseStatus = 'New';
if( caseStatus == 'New' ){
    System.debug('Case need attention'); 
}else if( caseStatus == 'Working' ){
    System.debug('Case in progress'); 
}else if(caseStatus == 'Escalated'){
    System.debug('Case need to be reassigned and manager need to be notified'); 
}else if(caseStatus=='Closed'){
    System.debug('Case has been resolved'); 
}


/**
5. Write and Apex code that store opportunityStage as String and probabilityPercentage as Decimal
   - if the stage is 'Prospecting', assign the value of probabilityPercentage to 0.1
   - if the stage is 'Qualification', assign the value of probabilityPercentage to 0.2
   - if the stage is 'Need Analysis', assign the value of probabilityPercentage to 0.3
   - if the stage is 'Closed Won', assign the value of probabilityPercentage to 1.0
   - if the stage is 'Closed Lost', assign the value of probabilityPercentage to 0
   - at the end Print out message 'State is X and probability Percentage is X %'
*/
String opportunityStage = 'Closed Won';
Decimal probabilityPercentage;
switch on opportunityStage {
    when 'Prospecting' {
        System.debug('probabilityPercentage to 0.1');
    }
    when 'Qualification' {
        System.debug('probabilityPercentage to 0.2');
    }
    when 'Need Analysis' {
        System.debug('probabilityPercentage to 0.3');
    }
    when 'Closed Won' {
        System.debug('probabilityPercentage to 1.0');
    }
    when 'Closed Lost' {
        System.debug('probabilityPercentage to 0');
    }
}
System.debug('Stage is ' + opportunityStage + ' and probability Percentage is ' + probabilityPercentage + ' %'); 


/**
6. Write and Apex code that store leadScore as Integer initialize it's value to 50 and hasEmail, hasPhone, hasTwitter as Boolean variables 
   - in 3 separate if statements (without else) do as below : 
   - if hasEmail equal true , increase the value of leadScore by 20
   - if hasPhone equal true , increase the value of leadScore by 18
   - if hasTwitter equal true , increase the value of leadScore by 12
   - at the end , print out 'The lead store is  XX'
*/
Integer leadScore = 50;
Boolean hasEmail=true;
Boolean hasPhone=false;
Boolean hasTwitter=false;
if(hasEmail) leadScore+=20;
if(hasPhone) leadScore+=18;
if(hasTwitter) leadScore+=12;
System.debug('The lead store is ' + leadScore); 



/** 
6. Write an Apex code that store contactEmail and mailingState as String 
   - check if a Contact's email is not null (!=null) and it's mailing state is California, 
   - if both conditions are true, print out 'Valid California Contact'
*/
String contactEmail = 'acv';
String mailingState = 'California';
if(contactEmail!=null && mailingState=='California'){
    System.debug('Valid California Contact'); 
}



/**
7. Write an Apex code that store Case's Priority (casePriority) as String and 
is Tier One Customer or not(isTierOneCustomer) as Boolean.
   - if isTierOneCustomer value true , print 'Tier 1 Customer, handle within 1 hour'
   - else
     - check if a Case's Priority is either 'High' or 'Critical' 
       - if so , print out 'urgent case handle inn 6 hours'
       - else print out 'handle within 2 days' 
*/
String casePriority = 'High';
Boolean isTierOneCustomer = false;
if( isTierOneCustomer ){
    System.debug('Tier 1 Customer, handle within 1 hour'); 
}else if( casePriority=='High' || casePriority== 'Critical'){
    System.debug('urgent case handle inn 6 hours'); 
}else{
    System.debug('handle within 2 days'); 
}


 
/** In Class Tasks
 Create a variable called starCount 
 initialize it to 0 

 use loop , to print out below 
 0 star ranger 
 1 star ranger 
 2 star ranger 
 3 star ranger 
 4 star ranger 
 5 star ranger 
 6 star ranger 
 */
Integer starCount = 0;
for(Integer starCount=0; starCount<=6 ;starCount++) {
    System.debug(starCount + ' star ranger'); 
}