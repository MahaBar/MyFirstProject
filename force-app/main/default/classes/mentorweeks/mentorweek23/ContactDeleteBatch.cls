public class ContactDeleteBatch implements Database.Batchable<sObject>, Database.Stateful {

Integer batchNumber = 0;

public Database.QueryLocator start(Database.BatchableContext context){

    String query = 'SELECT Id, LastName, Title FROM Contact WHERE Title = null';

    return Database.getQueryLocator(query);
}

public void execute(Database.BatchableContext context, List<Contact> records){

    ++batchNumber;

    System.debug('Batch Number is ' + batchNumber + ' Processing ' + records.size() + ' records');
    
    List<Contact> deleteContacts = new List<Contact>();

    for(Contact each : records){

        if(each.Title == null)

            deleteContacts.add(each);
    }

    delete deleteContacts;
}

public void finish(Database.BatchableContext context){

    System.debug('All Contacts with null Title are deleted');
}

}