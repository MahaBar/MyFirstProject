trigger ZtoHContactTrigger on Contact (before insert, before update) {

    System.debug('Trigger type: ' + Trigger.operationType);
    
    if(Trigger.isBefore && Trigger.isInsert){
        
        System.debug('It is before insert');
    }
    
    if(Trigger.isBefore && Trigger.isUpdate){
        
        System.debug('It is before update');
        System.debug('Count of the records that triggered the update code: ' + Trigger.size);
        System.debug('The records that triggered the update code: ' + Trigger.new);
        
        List<Contact> updatedContacts = Trigger.new;
        
        for(Contact each : updatedContacts){
            System.debug(each.LastName);
        }
    }
    
}