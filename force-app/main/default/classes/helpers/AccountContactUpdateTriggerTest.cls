@isTest
private class AccountContactUpdateTriggerTest {
    

    @isTest
    static void testContactPhoneUpdateIfAccountPhoneUpdate(){
        
        // Arrange 
        // (we need to create new data for testing) create 2 accounts with 3 contacts using the method that we have
        List<Account> accList = Utils.createAccountsWithContacts(2, 3) ; 
    
        // Act
        accList[0].Phone = '123456789';
        accList[1].Phone = '757152612';
        Test.startTest();
        update accList;
        Test.stopTest();

        // Assert
        // write a SOQL to get the contacts under accList
        List<Contact> allContacts = [SELECT Phone, Account.Phone 
                                    FROM Contact 
                                    WHERE AccountId = :accList];

        for(Contact each : allContacts) {
            
            // assert Account.Phone field = Contact Phone 
            Assert.areEqual(each.Account.Phone,each.Phone);
        }
    }



}















