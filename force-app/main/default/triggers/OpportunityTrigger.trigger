trigger OpportunityTrigger on Opportunity(before insert, after insert, before update, after update, before delete) {
    // print out the operation type for better debugging experience
    System.debug('Trigger is running for Event : ' + Trigger.operationType);
  
    // Requirement :
    // When the opportunity is updated
    // if the stageName has CHANGED to Closed Won
    //  // Create a new Task with below details
    // Subject : Follow up with renewal
    // ActivityDate : 1 day from Today
    // WhatId   :  opp Id
    if (Trigger.isAfter && Trigger.isUpdate) {
      OpportunityHandler.handleAfterUpdate(Trigger.new, Trigger.oldMap);
    }
  
    // Requirement :
    // If the opportunity is in Closed Won stage
    // It should be be deleted
    // Throw error message : You can not delete Op in Closed Won stage
    if (Trigger.isBefore && Trigger.isDelete) {
      OpportunityHandler.handleBeforeDelete(Trigger.old);
    }
  
    if (Trigger.isBefore && Trigger.isUpdate) {
      OpportunityHandler.handleBeforeUpdate(Trigger.new);
    }
  
    // Requirement :
    // Anytime new Opportunity is created
    // if the Amount field is empty
    // fill it up with 10000
    if (Trigger.isBefore && Trigger.isInsert) {
      // trigger loop
      OpportunityHandler.handleBeforeInsert(Trigger.new);
    }
  
    // Requirement :
    // Anytime new Opportunity is created
    // if the Amount is greater than 500000
    // Create a follow up tasks with below detail
    // Task Subject : Follow up with high value op
    // Task ActivityDate : 1 day from now
    // Task RelatedTo (WhatId) :  Your Opportunity (Id)
    if (Trigger.isAfter && Trigger.isInsert) {
        OpportunityHandler.handleAfterInsert(Trigger.new);
    }
  
  }
  
  