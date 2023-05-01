/**
DML : Data Manipulation Language 
allow you to interact with Salesforce Database of your org 
    insert
    update
    upsert
    delete
    undelete
    merge

https://trailhead.salesforce.com/content/learn/modules/apex_database/apex_database_dml
*/

// Create an variable with sObject type of Account
// assign the Name field value

Account a1 = new Account(Name = 'Acc from Apex');
System.debug('a1 value before insert is : ' + a1); 

// insert the account into Salesforce org
insert a1; // everytime create new record
System.debug('a1 value after insert is : ' + a1); 

// print out the Id of the a1
System.debug('a1.Id value is : ' + a1.Id); 

// change the name of a1 to  -> Updated Name from Apex
a1.Name = 'Account_Inserted_Updated_Deleted_Undeleted-1'; // reassign 

// update the Billing State field
a1.BillingState = 'VA';

// use update DML operation to update the record that already in Salesforce
update a1 ; // updated existing record
System.debug('a1 value after update is : ' + a1); 

// delete this record from Salesforce
// you can find deleted record under Recycle Bin
delete a1 ;
System.debug('a1 value after delete is : ' + a1); 
// inserted, updated and deleted in one shot in salesforce

// restore this deleted record from Recycle bin
undelete a1 ;
System.debug('a1 value after undelete is : ' + a1); 






















