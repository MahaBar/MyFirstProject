// 1. Disable existing BookTrigger
// 2. Create a Trigger called BookOwnerTrigger
// This trigger listen for two events before insert, before update
trigger BookOwnerTrigger on Book__c(before insert, before update) {
  BookTriggerHandler.handleBookOwnerTrigger(Trigger.new);
}




//LAST VERSION
  // trigger BookOwnerTrigger on Book__c(before insert, before update) {
  
  //   System.debug('Trigger is running for Event : ' + Trigger.operationType);
  
    // This trigger has below logic
    // Whenever book is created or updated
  
    // Since we can not write SOQL inside the loop, 
    // we have to get all the contacts 
    // that associated with Books that entered the tigger
    // outside the loop using SOQL 
    // and best way to get those contacts is using Id of Contact 
  
  
    // Multiple books can|will enter the same time
    // not all the books might have contact__c filled 
//    Set<Id> contactIdSet = new Set<Id>();
    // Loop through each book that entered the trigger
  
    //SELECT Id, Name, OwnerID FROM Contact 
    //WHERE Id IN ('003Dm000003Nep0IAA','003Dm000003Nep0IB','003Dm000003Nep0IAC')
  
//    for(Book__c each : Trigger.new) {
    // add the contact__c(Id of Parent contact)
    // into the contactIdSet if it exists 
    //   if(each.Contact__c !=null ){
    //      contactIdSet.add(  each.Contact__c   ); 
    //   }
    // }
  
    //SELECT Id, Name, OwnerID FROM Contact 
    //WHERE Id IN ('003Dm000003Nep0IAA','003Dm000003Nep0IB','003Dm000003Nep0IAC')
  
    // List<Contact> contactList = [Select Id,Name, OwnerId FROM Contact
    //                             WHERE Id IN :contactIdSet ]; 
    // We need to convert this list to Map<Id,Contact>
    // Unless we do this, we will never know which book belong to which contact
    // Map<Id,Contact> parentContactMap = new Map<Id,Contact>(contactList);

    // for (Book__c each : Trigger.new) {
  
    //   if (each.Contact__c != null) {
    
        //each.OwnerId = // contacts ownerId of each book here 
        // assign the value of book Owner Id to the Owner Id of the contact
        // Assign the owner of the book to the same owner of the contact
  //       each.OwnerId = parentContactMap.get( each.Contact__c ).ownerId;
       
  //     }
  //   }
  
  // }















