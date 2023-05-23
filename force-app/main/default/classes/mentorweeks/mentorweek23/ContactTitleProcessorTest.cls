@isTest
public class ContactTitleProcessorTest {
    
    @isTest
    static void testContactTitleUpdate(){

        // Arrange
        List<Contact> conList = new List<Contact>();

        conList.add(new Contact(LastName = 'Test 1'));
        conList.add(new Contact(LastName = 'Test 2'));
        conList.add(new Contact(LastName = 'Test 3'));
        conList.add(new Contact(LastName = 'Test 4', Title = 'Developer'));

        insert conList;

        String title = '';

        // Act
        Test.startTest();
        ContactTitleProcessor.updateTitle(title);
        Test.stopTest();

        //Assert
        List<Contact> updatedContacts = [SELECT Id, LastName, Title FROM Contact WHERE Title = 'Salesforce Developer'];
        Assert.areEqual(3, updatedContacts.size());

    }

}