@isTest
public with sharing class testZContactTriggerTitleInsert {

    @isTest
    public static void testTitle(){

        List<Contact> contacts = ZContactFactory.generateContacts(2, 'Apex');

        test.startTest();
        insert contacts;
        test.stopTest();    
        
        List<Contact> insertedContacts = [SELECT LastName, Title FROM Contact
                                         WHERE LastName LIKE 'Apex%'];

        System.debug(insertedContacts);
        
        for(Integer i = 0; i < insertedContacts.size(); i++){
            
            System.assertEquals('Salesforce Developer', insertedContacts[i].Title);
        }
    }

    @isTest
    public static void testSize(){

        List<Contact> contacts = ZContactFactory.generateContacts(2, 'King');

        test.startTest();
        Database.SaveResult[] srList = Database.insert(contacts, false);
        test.stopTest();

        Assert.isTrue(srList[0].isSuccess());
        Assert.isTrue(srList[1].isSuccess());
        
        List<Contact> insertedContacts = [SELECT LastName, Title FROM Contact
                                         WHERE LastName LIKE 'King%' AND Title = 'Salesforce Developer'];

        System.debug(insertedContacts);
        
        System.assertEquals(2, insertedContacts.size());

    }

    @isTest
    public static void testTitleCSVFile(){

        List<sObject> csvContacts = Test.loadData(Contact.sObjectType, 'contactData');

        for(sObject eachCsv : csvContacts){

            System.debug(eachCsv);
        }

        List<Contact> insertedContacts = [SELECT LastName, Title FROM Contact
                                         WHERE LastName LIKE 'King%' AND Title = 'Salesforce Developer'];

        System.debug(insertedContacts);
        
        for(Contact each : insertedContacts){

            Assert.areEqual('Salesforce Developer', each.Title);
        }
    }
}