@isTest
public class ContactTriggerInsertTitleTest {
    
    @isTest
    public static void testTitle(){

        List<Contact> allSavedContacts = [SELECT LastName, Title FROM Contact
                                        WHERE LastName LIKE 'Leng%'];

        System.debug(allSavedContacts); 

        for(Integer i = 0; i < allSavedContacts.size(); i++){

            System.assertEquals('Salesforce Developer', allSavedContacts[i].Title);
        }
    } 
}