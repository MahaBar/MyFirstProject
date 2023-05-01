/**
Working with related records ;

Every look up field in Salesforce
actually store the record Id of parent record
for example
account name field in contact stores account Id of parent account
 */

// create an account with Name value 'Account From Apex'
 Account a1 = new Account(Name = 'Account From Apex 2');
// insert that into SF
 insert a1 ; 
// print that out
 System.debug('a1 value is : ' + a1); 
// store the Id field to variable with proper (Id) data type 
 Id accId = a1.Id ;
 System.debug('accId value is : ' + accId); 

// create a contact variable and assign it`s value
 Contact c1 = new Contact();
// fill up the FirstName, LastName
 c1.FirstName = 'Apex Contact 1' ;
 c1.LastName = 'D' ;
// and fill up AccountId field with the value you stored in first step (line 17)
 c1.AccountId = accId ; 
// insert this into SF 
insert c1 ;

// Create another contact in one short
Contact c2 = new Contact(FirstName='Apex Contact 2', 
                        LastName='CD', 
                        AccountId = accId);
insert c2 ;

// create a case under c2 with subject 'Case under Apex Contact 2'
// ContactId field should be filled up with Contact c2 record Id above
Case myCase = new Case( Subject='Case under Apex Contact 2', // one shot
                        ContactId = c2.Id );
// insert this case into SF and observe the contact
insert myCase ; 






















