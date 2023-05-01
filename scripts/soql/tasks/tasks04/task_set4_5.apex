//SOQL set4, ## Task 5:
//Create a Contact called Super Jon under Account with name Super Parent in UI. 
//Now in Apex
//Get the Id of Contact with name Super Jon.
Id superJonId = [SELECT Id FROM Contact WHERE Name = 'Super Jon' LIMIT 1].Id;
//Get all the Cases with no Contact association (ContactId is empty)
List <Case> orphanCases = [SELECT CaseNumber FROM Case WHERE ContactId = NULL];
//and store it in the list called orphanCases. 
for(Case each:orphanCases){
    each.ContactId = superJonId;
}
//Add All the orphanCases under Contact with name Super Jon.
update orphanCases;



















