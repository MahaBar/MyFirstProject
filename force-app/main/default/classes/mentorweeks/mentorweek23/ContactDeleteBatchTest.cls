@isTest
public class ContactDeleteBatchTest {
    
    @isTest
    static void testContactDelete(){

        // Arrange
        List<Contact> conList = new List<Contact>();

        conList.add(new Contact(LastName = 'Test 1', Title = 'Salesforce Developer'));
        conList.add(new Contact(LastName = 'Test 2', Title = 'Salesforce Developer'));
        conList.add(new Contact(LastName = 'Test 3'));
        conList.add(new Contact(LastName = 'Test 4', Title = 'Developer'));
        conList.add(new Contact(LastName = 'Test 5'));
        conList.add(new Contact(LastName = 'Test 6'));

        insert conList;

        // Act
        Test.startTest();
        ContactDeleteBatch b = new ContactDeleteBatch();
        Database.executeBatch(b, 3);
        Test.stopTest();

        // Assert
        List<Contact> contacts = [SELECT Id, LastName, Title FROM Contact WHERE Title = ''];
        Assert.areEqual(0, contacts.size());
    }

}