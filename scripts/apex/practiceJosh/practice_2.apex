// create 2 contacts
// create an account and relate the contacts to the same account
// deploy the account and contacts to your org

Contact c1 = new Contact();
c1.FirstName = 'Josh';
c1.LastName = 'Lang';

Contact c2 = new Contact(FirstName = 'Andy', LastName = 'Fear');

List<Contact> allContacts = new List<Contact>{c1};
allContacts.add(c2);

System.debug(allContacts);

System.debug(allContacts.get(0).FirstName);
System.debug(allContacts[1].LastName);

System.debug('********************');

List<Account> allAccounts = new List<Account>();

// allAccounts.add(new Account(Name = 'Group 1 Coop.'));
Account a1 = new Account(Name = 'Group 1 Coop.');
allAccounts.add(a1);

System.debug(allAccounts);

insert allAccounts;

System.debug(allAccounts);

c1.AccountId = a1.Id;
c2.AccountId = a1.Id;

insert allContacts;