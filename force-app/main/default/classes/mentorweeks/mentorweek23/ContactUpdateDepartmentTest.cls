@isTest
public class ContactUpdateDepartmentTest {
    
    @isTest
    static void testContactDepartmentUpdate(){

        // Arrange
        List<Contact> conList = new List<Contact>();

        conList.add(new Contact(LastName = 'Test 1', Title = 'Salesforce Developer'));
        conList.add(new Contact(LastName = 'Test 2', Title = 'Salesforce Developer'));
        conList.add(new Contact(LastName = 'Test 3'));
        conList.add(new Contact(LastName = 'Test 4', Title = 'Developer'));

        insert conList;

        List<Contact> devContacts = [SELECT Id, Name, Title FROM Contact WHERE Title = 'Salesforce Developer'];

        // Act
        Test.startTest();
        ContactUpdateDepartment q = new ContactUpdateDepartment(devContacts, 'Cydeo Developer');
        System.enqueueJob(q);
        Test.stopTest();

        // Assert
        List<Contact> updatedContacts = [SELECT Id, LastName, Description FROM Contact WHERE Department = 'Cydeo Developer'];
        Assert.areEqual(2, updatedContacts.size());
    }

}