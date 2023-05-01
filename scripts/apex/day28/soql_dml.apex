// Get all the books with no price set store it into the List
// Set all the price value to 999

List<Book__c> bookLst = [SELECT Name, price__c FROM BOOK__C
                        WHERE Price__c = null];
                        
// for(Book__c each : bookLst) {
//    each.Price__c = 999 ;
// }
// use dml to update
update bookLst;
// you can only run this once 
// because once you update price to 999 the query will return empty list


// Alternative approach:
// when we updated list of records, we got from SOQL or Trigger
// it's always best to create new Empty list to store updated content
// and do DML operation on that List
List<Book__c> updateLst = new List<Book__c>();
for(Book__c each : bookLst) {
    each.Price__c = 999 ;
    // add the record with updated field value into the updateLst
    updateLst.add(each);
 }
// perform DML operation on updateLst
update updateLst;


// we can delete existing record by SOQL query to get the records
// and delete DML operation
// for example : Delete all the Account record with name 'Acc from Apex'
List<Account> toBeDeletedAccounts = [SELECT Id, Name FROM Account
                                    WHERE Name = 'Acc from Apex'] ;
System.debug('deleted accounts : ' + toBeDeletedAccounts.size());
// delete toBeDeletedAccounts;

// delete [SELECT Id, Name FROM Account WHERE Name = 'Acc from Apex'] ;

// result of [SOQL Query] is almost always List of sObject type
// if we do not need this List variable we can directly use it [SOQL]
// for example, print out all Book Name in your SF org
// SELECT Name FROM Book__c
for(Book__c each : [SELECT Name FROM Book__c]) {
    System.debug('Book name value : ' + each.Name);
}


    






















