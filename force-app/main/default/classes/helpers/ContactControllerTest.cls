@isTest
private class ContactControllerTest {
    
    @isTest
    static void testUserRecord(){

        String uniqueUserName ='benwhite' +DateTime.now().getTime() +'@force.com';
    
        Profile p = [SELECT Name, Id FROM PROFILE WHERE Name = 'NightWatcher' LIMIT 1];
        
        User u = new User(
            Alias = 'bw',
            Email = 'standarduser@testorg.com',
            EmailEncodingKey = 'UTF-8', 
            LastName = 'White',
            LanguageLocaleKey = 'en_US',
            LocaleSidKey = 'en_US',
            ProfileId = p.Id,
            TimeZoneSidKey = 'America/Los_Angeles',
            UserName = uniqueUserName); 

        System.debug(UserInfo.getName());
        List<Contact> cons = ContactController.getContactsWithTitle();
        System.debug(cons[0].Title);

        System.runAs(u){
            System.debug(UserInfo.getName());
            List<Contact> consU = ContactController.getContactsWithTitle();
            System.debug(consU[0].Title);
        }
    }
}