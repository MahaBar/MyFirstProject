public class AddPrimaryContact implements Queueable{
    
    private Contact contact ; 
    private String state ; 
    
    public AddPrimaryContact(Contact contact, String state){
        
        this.contact = contact ; 
        this.state = state ; 
        
    }
    
    public void execute(QueueableContext qc){
        // Retrieve 200 Account Records
        List<Account> accounts = [SELECT Id FROM Account WHERE BillingState = :state LIMIT 200];
        // Create Emploty List of Contact Records 
        List<Contact> contacts = new List<Contact>(); 
        
        for(Account acc : accounts){
            // cloning the contact object provided and not include ID since we want to insert this
            Contact contactClone = contact.clone(); 
            contactClone.AccountId = acc.Id ; 
            contacts.add(contactClone) ; 
            
        }
        insert contacts ;
        
    }    

}