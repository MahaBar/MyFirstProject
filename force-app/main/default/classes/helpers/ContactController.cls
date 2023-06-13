public with sharing class ContactController {
    
    @AuraEnabled(cacheable=true)
    public static Contact getOneContact(){
       
        return [SELECT Id,Name From Contact LIMIT 1];

    }


}
 



// public with sharing class ContactController {   // without sharing

//     public static Contact getContact(String conLastName){

//         Contact c =[SELECT Id, LastName FROM Contact WHERE LastName = :conLastName LIMIT 1];
//         System.debug(c);
//         return c;
//     }

//     public static List<Contact> getContactsWithTitle(){

//         List<Contact> consTitle = [SELECT Id, LastName, Title FROM Contact WHERE Title = 'Salesforce Developer'];
//         System.debug(consTitle);
//         return consTitle;

//     }
// }