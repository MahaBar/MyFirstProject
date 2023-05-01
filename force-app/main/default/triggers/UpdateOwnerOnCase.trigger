// Dharija
trigger UpdateOwnersOnCase on Case (after insert, after update){

    // List<Case> listToUpdate = new List<Case>(); // List to be used for DML operation
    // Boolean isRun = false; // Handling recursion inside triggers
    // System.debug('Recursion --> ' + isRun);
    // For loop on the new case records
    for(Case objCase : Trigger.new){

        // Condition to check if the case status of the new records
        // that are entering into the trigger are new or working
        // userInfo.getUserId(); => this helps to get the current logged in user id
        if(objCase.Status == 'New' || objCase.Status == 'Working'){
            Case updateCase = new Case(Id = objCase.Id);
            System.debug('Current user logged in: ' + userInfo.getUserId())
            updateCase.ownerId = userInfo.getUserId();
            listToUpdate.add(updateCase);
        }
    }

    // if(listToUpdate != null && !listToUpdate.isEmpty() && isRun == false){
    //     UPDATE listToUpdate;
    //     isRun = true;
    // }
}


trigger UpdateOwnersOnCase on Case (before update) {

    for(Case objCase : Trigger.new){
        //STARTING OF THE LOOP
        if(objCase.Type!='Electrical'){
            //SCENARIO 1
            // Scenario 1:
            //Update the case owner to the current logged in user if the user selects any of these picklist values (New OR Working).

            if(objCase.Status == 'New' || objCase.Status == 'Working'){
                objCase.ownerId = userInfo.getUserId();
            }

            //SCENARIO 3
            // Scenario 3:
            // If the subject of case contains "Cydeo" then update the status of case to Working only if the status is New, if the status is not equals to New then do not update the status field of case object.
            if(objCase.Status == 'New' && objCase.status!='Working' && objCase.Subject.contains('Cydeo')){
                objCase.Status = 'Working';
            }
        }
    }
}