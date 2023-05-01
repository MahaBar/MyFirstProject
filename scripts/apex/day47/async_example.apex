// System.debug('Drink Coffee'); 
// System.debug('Clean up') ;

// AsyncUtil.boilWater() ; 

// System.debug('Chop the onion');
// System.debug('Sit back and relax');
// System.debug('Continue to cook'); 


// Invoking a Batch Class
// To invoke a batch class, simply instantiate it and then call Database.executeBatch with the instance:
// MyBatchClass myBatchObject = new MyBatchClass();
// Id batchId = Database.executeBatch(myBatchObject);


// Turn off your lead Trigger for now!

//Have some data to work on to simulate large data volume situation 
//prepare lead data , insert 1000 Leads , run it only once

// List<Lead> myLeads = Utils.getLeads('Jon Snow', 'NightWatch Inc',true, 1000); 
// System.debug('myLeads.size()  value is : ' + myLeads.size() );

MyLeadBatchProcessor mlp = new MyLeadBatchProcessor(); 
Database.executeBatch(mlp, 100) ;


/**
Future method run on it's own execution context and get it's own limits
Batch Apex is used to run large jobs (think thousands or millions of records!) that would exceed normal processing limits. Using Batch Apex, you can process records asynchronously in batches (hence the name, “Batch Apex”) to stay within platform limits. If you have a lot of records to process, for example, data cleansing or archiving, Batch Apex is probably your best solution.

Here’s how Batch Apex works under the hood. Let’s say you want to process 1 million records using Batch Apex. The execution logic of the batch class is called once for each batch of records you are processing. Each time you invoke a batch class, the job is placed on the Apex job queue and is executed as a discrete transaction. This functionality has two awesome advantages:
Every transaction starts with a new set of governor limits, making it easier to ensure that your code stays within the governor execution limits.
If one batch fails to process successfully, all other successful batch transactions aren’t rolled back.
 */

