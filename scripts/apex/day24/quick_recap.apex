// Apex Trigger : 
/**
 *  Multiple records can enter the Trigger at the same time 
 * 
 *  Apex Trigger events that cause the trigger to execute 
 *  7 events :  
 *    before insert, after insert , 
 *    before update, after update, 
 *    before delete , after delete, 
 *    after undelete 
 * 
 *  Trigger Context Variables (12 of them): 
 *     variables that provide more information about trigger execution and data 
 *     we use it in this format Trigger.theVariableName     
 *      
 *     Trigger.operationType :  
 *          return the triggering event (BEFORE_INSERT, AFTER_UPDATE.....)
 *     Trigger.size :     
 *          return the size of records entered the Trigger
 *     
 *     variables that check for the specific event type 
 * 
 *     Trigger.isBefore
 *     Trigger.isAfter
 *     Trigger.isInsert
 *     Trigger.isUpdate
 *     Trigger.isDelete
 *     Trigger.isUndelete
 * 
 *     variables that provide access to the records that entered the trigger 
 *     Trigger.new
 *        return List of sObject with latest field values 
 *        available in events : before|after insert, before|after update , after undelete   
 *     Trigger.newMap 
 *        return Map of Id and sObject with latest field values 
 *         available in events : after insert, before|after update , after undelete   
 *     Trigger.old 
 *        return List of sObject with old field values  
 *        available in events :  before|after update, before|after delete
 *     Trigger.oldMap 
 *        return Map of Id and sObject with old field values 
 *        available in events :  before|after update, before|after delete
 *   ------------------------------------
 *    
 *    Since multiple records enter the trigger at the same time, you will always use Trigger loop
 *    for(yourSobjectType each : Trigger.new ){
 * 
 *    } 
 *    or 
 *    for(yourSobjectType each : Trigger.old ){
 * 
 *    } 
 * 
 *  
 *  trigger must have it's own file 
 *    the name of your trigger must be the same as the file name 
 *    if you rename your trigger, you must rename both file to match your trigger name     
 * 
 *  // this is the beginning of your trigger
 *  trigger TheNameOfYourTrigger on YourSOBJECT ( events you listed to goes here) {
 *    
 *    YOUR LOGIC GOES HERE 
 *    
 * 
 *  } * 
 *  // this is the ending of your trigger, NO CODE SHOULD BE WRITTEN AFTER THIS LINE 
 * 
 * 
 */



// Unlike flow multiple records can enter the Trigger at the same time.
// Since multiple records enter the trigger at the same time, you will always use Trigger loop
   for(yourSobjectType each : Trigger.new ){

   }

// or
   for(yourSobjectType each : Trigger.old ){

   } 

// If you need to access old value and new value at the same time, here is the technique to use
   for(yourSobjectType each : Trigger.new ){

          // if you need to access old fields values you can do this
          yourSobjectType oldX = Trigger.oldMap.get(each.id); 
          // do your comparison or any logic here 
   } 

// If it was a before update on Account object to keep track of Account Name change for example in description field, this is how it will look like
trigger AccountTrigger on Account(before update){
    for(Account each : Trigger.new ){

    // if you need to access old fields values you can do this
        Account oldAcc = Trigger.oldMap.get(each.id); 
        // do your comparison or any logic here
        if(each.Name!= oldAcc.Name){
            each.Description = oldAcc.Name ; 
        } 
    } 
}

