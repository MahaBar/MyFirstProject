trigger CaseTrigger on Case (before update, after update, after insert) {
    
    // for(case each: trigger.new){
    //     if( each.Status == 'New' || each.Status == 'Working' ){
    //         each.OwnerId = UserInfo.getUserId();  
    //     }
    // }

// Scenario 2
// on the account object create a new field called total cases 
// and create a trigger on case so if the case is associated to 
// any account the total cases field should be recalculated

// Total_Vases__c

    // Scenario 2
Trigger CaseChangeOwnerTrigger on Case (after insert, after update, after delete, after undelete) {

Set<Id> accountIds = new Set<Id>();

if (Trigger.isInsert || Trigger.isUpdate || Trigger.isUndelete) {
    for (Case c : Trigger.new) {
        if (c.AccountId != null) {
            accountIds.add(c.AccountId);
        }
    }
}
if (Trigger.isDelete || Trigger.isUpdate) {
    for (Case c : Trigger.old) {
        if (c.AccountId != null) {
            accountIds.add(c.AccountId);
        }
    }
}
List<Account> accountsToUpdate = new List<Account>();
for (Id accountId : accountIds) {
    Integer totalCases = [SELECT COUNT() FROM Case WHERE AccountId = :accountId];
    accountsToUpdate.add(new Account(Id = accountId, Total_Cases__c = totalCases));
}
update accountsToUpdate;
} 





}

