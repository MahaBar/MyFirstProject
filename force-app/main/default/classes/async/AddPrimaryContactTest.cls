@isTest
public class AddPrimaryContactTest {

    @isTest
    private static void testQueuealeClass(){
        
        System.debug('Load Test DATA');
        
        List<Account> accounts = new List<Account>(); 
        for(Integer i=0;i<50;i++){
            
           Account acc = new Account(Name = 'Test Account '+ i); 
            // adding 25 CA 25 NY for diversifying the data
            if(i<25){
                acc.BillingState = 'NY'; 
            }else{
                acc.BillingState = 'CA'; 
            }
            accounts.add(acc); 
         }
        insert accounts ; 
        System.debug('account size ' + accounts.size());
        
        Contact contact = new Contact(FirstName='Jon', LastName = 'Snow'); 
        
        Test.startTest(); 
        System.enqueueJob( new AddPrimaryContact(contact,'CA'));
        Test.stopTest(); 
        
        //check result
        List<Contact> contacts = 
            [SELECT Id from Contact WHERE Contact.Account.BillingState='CA']; 
         System.debug('contacts size ' + contacts);
        
        Assert.areEqual(25, contacts.size()) ; 
        
        
        
    }
}