public class ContactTitleProcessor {
    
    @future
    public static void updateTitle(String title){

        List<Contact> updateContacts = new List<Contact>();

        List<Contact> contacts = [SELECT Id, LastName, Title FROM Contact WHERE Title = :title];

        for(Contact each : contacts){

            each.Title = 'Salesforce Developer';
            updateContacts.add(each);
        }

        update updateContacts;
    }

}