/**
Create a Map of Salesforce RecordId and sObject Type Account
// add few items in it 

 */

 Map<Id,Account> accMap = new  Map<Id,Account>(); 

 accMap.put('0018W00002BbgajQAB',  new Account(Name='Cydeo1') ); 
 accMap.put('0018W00002BbgajQAC',  new Account(Name='Cydeo2') ); 
 accMap.put('0018W00002BbgajQAD',  new Account(Name='Cydeo3') ); 

 System.debug('accMap value is : ' + accMap); 