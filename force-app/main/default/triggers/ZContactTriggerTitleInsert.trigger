trigger ZContactTriggerTitleInsert on Contact (before insert) {

    System.debug(Trigger.OperationType);
    
    if(Trigger.isBefore && Trigger.isInsert){
        
        for(Contact eachContact : Trigger.new){
            
            if(eachContact.Title == null){
                eachContact.Title = 'Salesforce Developer';
            }
        }
    }
}