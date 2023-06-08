public with sharing class BookController {

    @AuraEnabled(cacheable=true)
    public static List<Book__c> getAllBooks(){

        return [SELECT Name, Price__c, Author__c, Description__c, Year__c
                FROM Book__c]; 

    }


}