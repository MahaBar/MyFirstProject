trigger AccountTriggerWithClass on Account(
  before insert,
  after insert,
  before update,
  after update,
  before delete,
  after delete,
  after undelete
) {
  System.debug('The Trigger event is : ' + Trigger.operationType);

  System.debug('Count of Records entered the Trigger: ' + Trigger.size); 
  

  //Trigger.new Context variable that holds the List<sObject> that entered the trigger
System.debug('Trigger.new value is : ' + Trigger.new);

for(Account each : Trigger.new) {
    System.debug('Current value : ' + each.Name);
}
    
System.debug('------------------');

  // Requirement 1 :  When the record is created ,
  // if the AnnualRevenue is greater than 500000, update the rating to Hot
  // BEFORE INSERT EVENT IS GOOD FOR THIS REQUIREMENT

  // Check if the current run of trigger is because of Before Insert Event
  if (Trigger.isBefore && Trigger.isInsert) {
    System.debug('I am inside Before Insert Code : ');
    //Trigger loop
for(Account each : Trigger.new) {
    //new requirement: simply update the rating to HOT
    if(each.AnnualRevenue>500000){
    each.Rating = 'Hot';
}
  }
  }
java// Requirement 2 :  When the record is created ,
  // if the AnnualRevenue is greater than 1000000,
  // Create a Sample Contact for this Account
  // AFTER INSERT EVENT IS GOOD FOR THIS REQUIREMENT
  if(Trigger.isAfter && Trigger.isInsert) {
    System.debug('I am inside After Insert Code: ');

    //Start with Trigger Loop cuz we get the records 
    //that entered the trigger List stored in Trigger.new
    //we will insert contact for each Account entered Trigger
    // so we need List to store it and eventually inserting DML
    List<Contact> conList = new List<Contact>();
    for (Account each : Trigger.new) {
      if (each.AnnualRevenue>1000000) {
       //create Contact instance using New keyword
       //fill up the field value and add it to the list
       conList.add(new Contact(AccountId = each.Id, LastName = 'Smith'));
}
    }

//you have prepared your list, now it's time to insert in bulk
insert conList;
  }
  /**
 * Write an Apex Trigger on Account Object 
   - Whenever account is created 
     - automatically fill up account Shipping address using account billing address
       - ShippingStreet      => BillingStreet
       - ShippingCity        => BillingCity
       - ShippingState       => BillingState
       - ShippingCountry     => BillingCountry
       - ShippingPostalCode  => BillingPostalCode
        Whenever account is updated 

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
 */

 System.debug('The Trigger event is : ' + Trigger.operationType);
  if (Trigger.isBefore && Trigger.isInsert) {
    for (Account each : Trigger.new) {
   each.ShippingStreet = each.BillingStreet;
   each.ShippingCity = each.BillingCity;
     each.ShippingState = each.BillingState;
    each.ShippingCountry = each.BillingCountry;
     each.ShippingPostalCode = each.BillingPostalCode;
   }
  }
  /**
 * - Check for the account field SLA__c 
       - if the value is Gold 
         - set the CustomerPriority__c value to High
       - if the value is Silver or Platinum
         - set the CustomerPriority__c value to Medium
         - set the SLAExpirationDate__c to 6 months from Today
       - else 
         - set CustomerPriority__c value to Low 

 */
if (Trigger.isBefore && Trigger.isUpdate) {
    for (Account each : Trigger.new) {
      if (each.SLA__c == 'Gold') {
        each.CustomerPriority__c = 'High';
      }
      if (each.SLA__c == 'Silver' || each.SLA__c == 'Platinum') {
        each.CustomerPriority__c = 'Medium';
        each.SLAExpirationDate__c = Date.today().addMonths(6);
      } else {
        each.CustomerPriority__c = 'Low';
      }
      //- if SLA__c field has value and SLAExpirationDate__c empty
      //- addError message : 'Service Level Agreement Expiation date is required'
      if (each.SLA__c != null && each.SLAExpirationDate__c == null) {
        System.debug('Service Level Agreement Expiation date is required');
      }
    }
  }
  /**
   * - Whenever account is deleted

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
   */
  if(Trigger.isBefore && Trigger.isDelete){
    for (Account each : Trigger.old) {
        if(each.Active__c == 'Yes' && each.SLAExpirationDate__c > Date.today()){
each.addError('Can not delete Active Account with SLA not expired');
        }
    }
  }

  if(Trigger.isAfter && Trigger.isUndelete){
    List<Task> taskList = new List<Task>();
     for (Account each : Trigger.new) {
         Task t = new Task();
 t.Subject = 'Follow up with the Account : ' + each.Name;
 t.Description = 'Account was restored, follow up on the details';
 t.ActivityDate = Date.today();
 t.Priority = 'High';
 t.WhatId = each.Id;
 taskList.add(t);
     }
     insert taskList;
   }
 }