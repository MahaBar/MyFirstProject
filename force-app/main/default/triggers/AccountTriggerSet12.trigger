trigger AccountTriggerSet12 on Account (before insert, after insert,
                                        before update, after update,
                                        before delete, after delete,
                                        after undelete) {

    System.debug('The Trigger event is : ' + Trigger.operationType);
    // 1. Write an Apex Trigger on Account Object
    if(Trigger.isBefore && Trigger.isInsert){
        for(Account each : Trigger.new) {
        // - Whenever account is created 
            //  - automatically fill up account Shipping address using account billing address
            //    - ShippingStreet      => BillingStreet
            //    - ShippingCity        => BillingCity
            //    - ShippingState       => BillingState
            //    - ShippingCountry     => BillingCountry
            //    - ShippingPostalCode  => BillingPostalCode
            each.ShippingStreet = each.BillingStreet ;
            each.ShippingCity = each.BillingCity ;
            each.ShippingState = each.BillingState ;
            each.ShippingCountry = each.BillingCountry ;
            each.ShippingPostalCode = each.BillingPostalCode ;    
        }
    }
    // - Whenever account is updated 
    if(Trigger.isBefore && Trigger.isUpdate){
        for(Account each : Trigger.new) {
            // - Check for the account field SLA__c 
            // - if the value is Gold 
            //   - set the CustomerPriority__c value to High
            if( each.SLA__c == 'Gold' ){
                each.CustomerPriority__c = 'High' ;
            } 
            //     - if the value is Silver or Platinum
            //  - set the CustomerPriority__c value to Medium
            //  - set the SLAExpirationDate__c to 6 months from Today
            else if( each.SLA__c == 'Silver' || each.SLA__c == 'Platinum' ){
                each.CustomerPriority__c = 'Medium' ;
                each.SLAExpirationDate__c = Date.today().addMonths(6);
            }
            else{
            // - else 
                // - set CustomerPriority__c value to Low 
                each.CustomerPriority__c = 'Low' ;
            }
        }
        for(Account each : Trigger.new) {
        // - if SLA__c field has value and SLAExpirationDate__c empty
        // - addError message : 'Service Level Agreement Expiation date is required'
            if( each.SLA__c != null && each.SLAExpirationDate__c == null ){
                each.SLAExpirationDate__c.addError('Service Level Agreement Expiation date is required') ;
            }
        }   
    }
    // - Whenever account is deleted
    if(Trigger.isBefore && Trigger.isDelete){
        for(Account each : Trigger.old) {
            // - Check for the account field SLAExpirationDate__c and Active__c 
            //    - if Active__c value is true and SLAExpirationDate__c is not in the past 
            //    - addError with message 'Can not delete Active Account with SLA not expired'
            if( each.Active__c == 'Yes' && each.SLAExpirationDate__c >= Date.today() ){
                each.addError('Can not delete Active Account with SLA not expired') ;
            }
        }     
    }
    if(Trigger.isAfter && Trigger.isUndelete){
    // - Whenever account is restored from recycle bin(undeleted)
        // - Create a Task associated with this account with below details 
        List<Task> taskList = new List<Task>();
        for(Account each : Trigger.new) {
        // - Task Details 
        //   - Subject : Follow up with the Account : NameGoesHere
        //   - Description  : Account was restored, follow up on the details 
        //   - ActivityDate : Today
        //   - Priority     : High
        //   - WhatId       : Id of the The Account entered the trigger
            if( each.Active__c == 'Yes' ){
                Task t = new Task() ;
                t.Subject = 'Follow up with the Account ' + each.Name ; 
                t.Description = 'Account was restored, follow up on the details' ;
                t.ActivityDate = Date.today() ;
                t.Priority = 'High' ;
                t.WhatId = each.Id ;
                taskList.add(t) ;
            }
        }
        insert taskList ; 
    }
}

/**       
- Make sure to test your code with proper data. try out directly in the user interface 
and also try out in the anon-apex by entering List of records, updating the list of records, 
deleting the list of records and undeliting the list of records
 */