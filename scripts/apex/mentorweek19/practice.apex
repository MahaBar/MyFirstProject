//AggregateResult
AggregateResult result = [SELECT Count(Id), MAX(Amount)
                          FROM Opportunity];

System.debug('Result is : ' + result);

System.debug('Count of Opportunities is ' + result.get('expr0'));   // evaluates an expression and outputs the value
System.debug('Max Amount is ' + result.get('expr1'));

System.debug('---------------------------------------------------------------------');

AggregateResult[] allResults = [SELECT StageName, COUNT(Id) CountOfOpps, MAX(Amount) MaxAmount
                                FROM OPPORTUNITY
                                GROUP BY StageName];

System.debug('All Results is : ' + allResults);

for (AggregateResult each : allResults){
  
  System.debug(each.get('StageName') + '->' + each.get('CountOfOpps') + '->' + each.get('MaxAmount'));
} 



//Bind Variable
Decimal amount = 250000.00;

List<Opportunity> opps = [SELECT Id, Name, Amount FROM Opportunity 
                          WHERE Amount > :amount];

for(Opportunity each : opps){

    System.debug(each);
}



//SOSL
FIND {Grand} IN NAME FIELDS RETURNING Opportunity(Name, Amount)

FIND {United} IN NAME FIELDS RETURNING Account(Name, AnnualRevenue) , Contact(FirstName, Email)

FIND {Man} IN All FIELDS RETURNING Book__c(Name), Author__c(Name)
Triggers
trigger LeadTrigger on Lead (after insert) {

    System.debug('Operation type is ' + Trigger.OperationType);
    
    /*
    for(Lead each : Trigger.new){
        each.Description = 'Updated description';       // because the Trigger.new is read only, 
                                                        // we need to query and use to modify the related field
                                                        // It is not possible to update a field when the operation type is after save 
    */
    
    List<Lead> theLeads = [SELECT Id, Name, Description FROM Lead
                          WHERE Id in : Trigger.new];   
    
    System.debug('The size is ' + theLeads.size());
    
    for(Lead each : theLeads){
        each.Description = 'Updated description';
    }
    
    update theLeads;
}



trigger AccountTriggerPreventDelete on Account (before delete) {

    /*
    if(Trigger.isBefore && Trigger.isDelete){
        
        for(Account eachAccount : Trigger.old){
            
            List<Contact> relatedContacts = [SELECT Id FROM Contact WHERE AccountId = : eachAccount.Id];    
            // SOQL doesn't know about eachAccount.Id, need to use as a bind variable
            
                if(relatedContacts.size() > 0){
                    eachAccount.addError('Can not delete Account with a contact');
                    // addError is for sObjects, not for collection
                }
            }
        }
    */    

    if(Trigger.isBefore && Trigger.isDelete){
        
        List<Account> allAccounts = [SELECT Id, Name, (SELECT Id, FirstName FROM Contacts) 
                                     FROM Account WHERE Id IN :Trigger.old];
        // get all the Accounts entered the trigger and all the contacts using Parent to Child query
        
        for(Account eachAccount : allAccounts){
            
            List<Contact> relatedContacts = eachAccount.Contacts;   
            // to get the related contacts, need to use Contacts (the relationship name in subquery)
            
            if(relatedContacts.size() > 0){
                Account acctInContext = Trigger.oldMap.get(eachAccount.Id);
                
                acctInContext.addError('Can not delete Account with a contact');
                // not possible to use addError() for relatedContacts list, need to get the accounts from oldMap
            }
        }
    }
}




//Kahoot Codes
//Question 5:
trigger ContactTrigger on Contact (before insert) {
    for (Contact con : Trigger.new) {
        if (con.AccountId == null) {
            con.addError('Account ID is required for Contact records.');
        }
    }
    System.debug('Number of contacts processed: ' + Trigger.size);
}

//Question 7:
trigger AccountTrigger on Account (after insert) {
    List<Contact> newContacts = new List<Contact>();
    for (Account acc : Trigger.new) {
        Contact newContact = new Contact();
        newContact.FirstName = 'John';
        newContact.LastName = 'Doe';
        newContact.Email = acc.Name.replace(' ', '') + '@example.com';
        newContact.AccountId = acc.Id;
        newContacts.add(newContact);
    }
    insert newContacts;
    System.debug('Number of contacts inserted: ' + newContacts.size());
}

//Question 8:
trigger OpportunityTrigger on Opportunity (before insert, before update) {
    for (Opportunity o : Trigger.new) {
        if (o.CloseDate < System.today()) {
            o.StageName = 'Closed Lost';
            o.IsWon = false;
            o.IsClosed = true;
        }
        if (o.Amount < 0) {
            o.Amount = 0;
        }
    }
}

//Question 9:
trigger OpportunityTrigger on Opportunity (before insert, before update) {
    for (Opportunity o : Trigger.new) {
        if (o.Amount > 10000) {
            o.StageName = 'Needs Approval';
            o.Probability = 50;
        } else {
            o.StageName = 'Qualification';
            o.Probability = 10;
        }
    }
}

//Question 10:
trigger OpportunityTrigger on Opportunity (before update) {
    List<Opportunity> oppList = [SELECT Id, StageName FROM Opportunity 
                                 WHERE Id IN :Trigger.newMap.keySet() 
                                 AND StageName = 'Closed Won'];
    for (Opportunity opp : oppList) {
        opp.CloseDate = System.today() + 7;
    }
}