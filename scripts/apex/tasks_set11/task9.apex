/**
9. Create a List<Opportunity> and add 5 valid opportunity with required fields
   - StageName, Name , ClosedDate , Amount 
   - insert into Salesforce
   - Get a Map<Id, Opportunity> out of this List<Opportunity>
     - either directly putting the list into () while creating the map 
     - or Create an Empty Map and use putAll method 
     - or use Loop to add it one by one
   - Create an empty Map<String,Decimal> 
     - Loop through your List and 
     - Add the Opportunity Name field value as Key
     - Add the Opportinuty Amoung field value as Value

 */

List<Opportunity> oppList = new List<Opportunity>();
