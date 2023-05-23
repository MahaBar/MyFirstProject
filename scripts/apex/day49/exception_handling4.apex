System.debug('Starting the code'); 

Savepoint sp = Database.setSavepoint();

try {
    
    Account a = new Account(Name='ABC');
    insert a ; 
    Contact c = new Contact(LastName='', AccountId = a.Id);
    insert c ;

} catch (DmlException e) {
    
    System.debug('EXCEPTION OCCURED, INSERTING ACCOUTN WITH DEFAULT NAME'); 
    Database.rollback(sp);
}

System.debug('Ending the code'); 
