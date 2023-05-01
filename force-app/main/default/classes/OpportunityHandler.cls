public class OpportunityHandler {
    public static void handleAfterUpdate(List<Opportunity> oppList, Map<Id, Opportunity> oldMap){
        // create an empty list of task to store the list of items
        List<Task> taskList = new List<Task>();
        // trigger loop
        for (Opportunity each : oppList) {
            // Trigger.oldMap =>  Map<Id,Opportunity> with old fields value
            Opportunity oldOp = oldMap.get(each.Id);
            // if the stageName has CHANGED to Closed Won
            if( each.StageName!=oldOp.StageName && each.StageName=='Closed Won'){
                
                Task t = new Task(); 
                t.Subject = 'Follow up with renewal ' + each.Name; 
                t.ActivityDate = Date.today() + 1 ; 
                t.WhatId = each.Id ; 
                taskList.add(t);  
            }
        }
        // outside the loop , add insert one time 
        insert taskList ; 
    }

    public static void handleBeforeDelete(List<Opportunity> oppList){
        for (Opportunity each : oppList) {
            // If the opportunity is in Closed Won stage
            if (each.StageName == 'Closed Won') {
                each.addError('You can not delete Op in Closed Won stage');
            }
        }
    }

    public static void handleBeforeInsert(List<Opportunity> oppList){
        for (Opportunity each : oppList) {
            if (each.Amount == null) {
                each.Amount = 10000;
            }
        }
    }

    public static void handleAfterInsert(List<Opportunity> oppList){
        // we need a place to store all the tasks that about to be entered
        // list of task
        List<Task> taskList = new List<Task>();
        // trigger loop
        for (Opportunity each : oppList) {
            // if the Amount is greater than 500000
            if (each.Amount > 500000) {
                // Create a follow up tasks with below detail
                Task t = new Task();
                t.Subject = 'Follow up high value Task ' + each.Name;
                t.ActivityDate = Date.today() + 1;
                t.WhatId = each.Id;
                // add it to the task list to be inserted
                taskList.add(t);
            }
        }
        // outside the loop , insert once
        insert taskList;
    }

    public static void handleBeforeUpdate(List<Opportunity> oppList){
        // trigger loop
        for(Opportunity each : oppList) {
            // if the op amount is negative
            if (each.Amount < 0) {
                // throw error 'Amount can not be negative'
                //each.addError('Amount can not be negative');
                each.Amount.addError('Amount can not be negative');
            }
        }
    }
}

