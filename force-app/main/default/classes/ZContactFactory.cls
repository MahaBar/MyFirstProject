public class ZContactFactory {

    public static List<Contact> generateContacts(Integer numOfContacts, String lastName){
        
        List<Contact> contacts = new List<Contact>();
        
        for(Integer i = 1; i <=numOfContacts; i++){

            Contact c = new Contact(LastName = lastName + ' ' + i);

            System.debug(c);

            contacts.add(c);
        }

        // insert contacts;

        return contacts;
    }
}