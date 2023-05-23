public class LeadProcessor implements Database.Batchable<sObject>, Database.Stateful {
    
    public Integer recordCount = 0; //creating an instance variable to count the records or  //--> instance member to retain state across transactions

   /* Create an Apex class that implements the Database.Batchable interface to update all Lead records in the org with a specific LeadSource.*/
   
   // Collect the Lead records to be passed to execute
   public Database.QueryLocator start(Database.BatchableContext dbc){   //--> QueryLocator is where the records get stored + is the return type, BatchableContext is the parameter
  
       return Database.getQueryLocator([SELECT Id, Name FROM Lead]);  //--> quering Leads and putting them into our QueryLocator
   }
   
   // Process each batch of records
   
   
   /*The execute method must update all Lead records in the org with the LeadSource value of Dreamforce*/
   public void execute(Database.BatchableContext dbc, List<Lead> leads){  //--> each batch is passed into the list
       
       for(Lead each : leads){               //--> for each Lead
           each.LeadSource = 'Dreamforce';  //--> update the Leadsource to dreamforce
       }
       
       update leads;  //--> update the leads
       recordCount = recordCount +  leads.size();  //--> and then up the record count 
       System.debug('Records processed so far ' + recordCount); //--> if you want to see which point each batch is 
       
   }
   
   
   // Execute any post-processing operations
   public void finish(Database.BatchableContext dbc){
        System.debug('Total record count: ' + recordCount); //count the total record count
   }
   
   
   
}