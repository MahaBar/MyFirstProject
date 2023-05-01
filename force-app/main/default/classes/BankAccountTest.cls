@isTest
private class BankAccountTest {

    @isTest
    static void testGetBalance(){
        
        // Arrange
        BankAccount b1 = new BankAccount('Sean', 123456789, 8000000); // first we prepared our date

        Decimal expected = 8000000;

        // Act - call your method
        Decimal actual = b1.getBalance();

        // Assert
        System.assertEquals(expected,actual); 


        // call the no param constructor and show details method just for test coverage
        BankAccount b2 = new BankAccount();
        b2.showDetails();

    }   

    @isTest
    static void testDeposit(){
      
        // Arrange
        BankAccount b1 = new BankAccount('Sean', 123456789, 8000000); 

        // Act 
        b1.deposit(1000);

        // Assert
        // assert the balance is now 8001000
        Decimal expected = 8001000;
        Decimal actual = b1.getBalance();

        System.assertEquals(expected,actual);

        b1.deposit(-1000);

        System.assertEquals(expected,actual);


    }

    @isTest
    static void testWithdraw(){
        
    // Arrange
    BankAccount b1 = new BankAccount('Sean', 123456789, 8000000); 

    // Act
    b1.withdraw(1000000);

    // Assert
    // aae for the shortcut
    // withdraw 1 million we should  expect balance to be 7 million
    Assert.areEqual(7000000, b1.balance );
    }

    @isTest
    static void testSetupAccount(){
    
    // Arrange
    BankAccount b1 = new BankAccount('Sean', 123456789, 8000000); 

    // Act
    b1.setupAccount('Test', 123456, 1000);

    //Assert
    // accountHolder is Test, accountNumber is 123456, balance is 1000
    Assert.areEqual('Test',b1.accountHolder);
    Assert.areEqual(123456,b1.accountNumber);
    Assert.areEqual(1000,b1.balance);
    }

    @isTest
    static void testChangeName(){
        
    // Arrange
    BankAccount b1 = new BankAccount('Sean', 123456789, 8000000); 

    // Act
    b1.changeName('Leke');
    
    // Assert
    Assert.areEqual('Leke',b1.accountHolder);
    }
    
    

}













