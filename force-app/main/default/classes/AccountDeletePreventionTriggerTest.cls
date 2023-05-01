@isTest
public class AccountDeletePreventionTriggerTest {
    
    @isTest
    static void testDeleteAccountWithoutOpps(){

        // Arrange
        // create 2 account with no opp
        List<Account> accList = Utils.createAccountsWithOpps(2, 0);

        // Act
        // delete the accList and save the result for inspection
        Test.startTest();
        Database.DeleteResult[] results = Database.delete(accList, false);
        Test.stopTest();

        // Assert
        // check the account deletion was successful for both record
        Assert.isTrue(results[0].isSuccess());
        Assert.isTrue(results[1].isSuccess());        

        // optionally we can use SOQL
        //
    }

    @isTest
    static void testDeleteAccountWithOpps(){
          
        // Arrange
        // create 2 account with 3 opps
        List<Account> accList = Utils.createAccountsWithOpps(2, 3);

        // Act
        // delete the accList and save the result for inspection
        Test.startTest();                                      // all or nothing option
        Database.DeleteResult[] results = Database.delete(accList, false);
        Test.stopTest();

        // Assert // CAN NOT DELETE ACCOUNT WITH CHILD OPPS!!!!
        Assert.isFalse(results[0].isSuccess());
        Assert.isFalse(results[1].isSuccess());

        String expectedErrorMsg = 'CAN NOT DELETE ACCOUNT WITH CHILD OPPS!!!!';
        // assert the error message match as expected
        // in order to get the error message we use
        // yourSingleResult.getErrors()[0].getMessage()
        Assert.areEqual(expectedErrorMsg, results[0].getErrors()[0].getMessage()    );
        Assert.areEqual(expectedErrorMsg, results[1].getErrors()[0].getMessage()    );
    }


}





