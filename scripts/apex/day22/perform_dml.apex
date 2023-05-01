// Create a new Book instance with fields
Book__c b = new Book__c(nAME='Apex Book');
// insert in Salesforce record
insert b ;

b.Name = 'Awesome new book for lunch!';
update b ;

// String str = 'aVcDeFG' ;
// System.debug(str.toLowerCase().capitalize()); 


