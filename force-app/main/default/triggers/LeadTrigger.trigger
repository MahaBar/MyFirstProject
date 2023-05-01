trigger LeadTrigger on Lead (before insert, after insert, before delete) {

/**
 * Requirement : 
 * When the Lead is created, 
 * Update the LastName field to uppercase 
 * If the firstName was entered, make it TitleCase 
 * If the lead source was entered , choose web 
 * THIS CAN BE DONE IN BEFORE_INSERT EVENT 
 */
System.debug('Trigger is running for Event : ' + Trigger.operationType); 

if(Trigger.isBefore && Trigger.isInsert){
   LeadTriggerHandler.handleBeforeInsert(Trigger.new); // trigger.new it is list of lead 
}        
/**
 * Requirement : 
 * AW Computing is getting lots their lead from social events 
 * In order to keep the lead motivated , 
 * anytime new lead is created, 
 * a new Task should be created for this lead with below detail 
 *  Task Subject (Subject)   : Send Apple Air tag
 *  Task Due Date(ActivityDate) : 2 days after Today
 *  Task  Name (WhoId) : should be the Id of the lead record 
 *   THIS CAN BE DONE IN AFTER_INSERT EVENT 
 */
if(Trigger.isAfter && Trigger.isInsert){
    LeadTriggerHandler.handleAfterInsert(Trigger.new);
}

if(Trigger.isBefore && Trigger.isDelete) {
    LeadTriggerHandler.handleBeforeDelete( Trigger.old ); 
  }




}












