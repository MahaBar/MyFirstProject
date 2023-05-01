/** 1. Write an Apex Trigger on Account Object 
   - Whenever account is created 
     - automatically fill up account Shipping address using account billing address
       - ShippingStreet      => BillingStreet
       - ShippingCity        => BillingCity
       - ShippingState       => BillingState
       - ShippingCountry     => BillingCountry
       - ShippingPostalCode  => BillingPostalCode

   - Whenever account is updated 

     - Check for the account field SLA__c 
       - if the value is Gold 
         - set the CustomerPriority__c value to High
       - if the value is Silver or Platinum
         - set the CustomerPriority__c value to Medium
         - set the SLAExpirationDate__c to 6 months from Today
       - else 
         - set CustomerPriority__c value to Low 

     - if SLA__c field has value and SLAExpirationDate__c empty
       - addError message : 'Service Level Agreement Expiation date is required'

   - Whenever account is deleted

     - Check for the account field SLAExpirationDate__c and Active__c 
       - if Active__c value is true and SLAExpirationDate__c is not in the past 
       - addError with message 'Can not delete Active Account with SLA not expired'

   - Whenever account is restored from recycle bin(undeleted)
       - Create a Task associated with this account with below details 
       - Task Details 
         - Subject : Follow up with the Account : NameGoesHere
         - Description  : Account was restored, follow up on the details 
         - ActivityDate : Today
         - Priority     : High
         - WhatId       : Id of the The Account entered the trigger

- Make sure to test your code with proper data. try out directly in the user interface 
and also try out in the anon-apex by entering List of records, updating the list of records, 
deleting the list of records and undeliting the list of records
 */