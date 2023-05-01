/**
7. Write an Apex code that strore Case's Priority (casePriority) as String and is Tier One Customer or not(isTierOneCustomer) as Boolean.
   - if isTierOneCustomer value true , print 'Tier 1 Customer, handle within 1 hour'
   - else
     - check if a Case's Priority is either 'High' or 'Critical' 
       - if so , print out 'urgent case handle inn 6 hours'
       - else print out 'handle within 2 days' 
*/

String casePriority = 'Critical';
Boolean isTierOneCustomer = false ; 

if(isTierOneCustomer){
    System.debug('Tier 1 Customer, handle within 1 hour');
}else{
    // nested if statement
    if(casePriority=='High' || casePriority=='Critical'){
        System.debug('urgent case handle inn 6 hours') ;
    }else{
        System.debug('handle within 2 days') ;
    }
}