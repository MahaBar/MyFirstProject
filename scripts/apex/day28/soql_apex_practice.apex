// all the contacts that doesn't have account will go under Super Parent account

// In order to update the Account Name (AccountId) field of the Contact record
// we need Id of the Account with the name Super Parent
Account accSupe = [SELECT Id, Name FROM Account WHERE Name = 'Super Parent' LIMIT 1];

// then we need to query all the Contacts with no Account Id
List<Contact> orphanContacts = [SELECT Name, AccountId FROM Contact
                                WHERE AccountId = null ];

// go through each and every contact
for(Contact each : orphanContacts) {
    // update the AccountId field value to the Id of Super Parent Account
    each.AccountId = accSupe.Id;
}
// DML to update
update orphanContacts;
