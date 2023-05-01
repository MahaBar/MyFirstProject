trigger ContactTriggerInsertTitle on Contact (before insert) {

    System.debug(Trigger.OperationType); 

    if(Trigger.isBefore && Trigger.isInsert){

        for(Contact each : Trigger.new) {
            
            if(each.Title == null){
                each.Title = 'Salesforce Developer';
            }
        }
        
    }
    

}