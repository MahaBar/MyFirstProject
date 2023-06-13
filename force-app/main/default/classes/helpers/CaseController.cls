public with sharing class CaseController {
   
   @AuraEnabled(cacheable=true)
   public static List<Case> get5CasesByStatus(String statusParam){

       return [SELECT Id,CaseNumber, Status, Subject, Priority
           From Case WHERE Status = :statusParam LIMIT 5 ];

   }

}