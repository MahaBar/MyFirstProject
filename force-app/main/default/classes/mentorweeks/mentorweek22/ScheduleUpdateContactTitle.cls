public class ScheduleUpdateContactTitle implements Schedulable {

    public void execute (SchedulableContext context){

        List<Contact> contacts = [SELECT Id, LastName, Title FROM Contact];

        List<Contact> updatedTitleContacts = new List<Contact>();

        for(Contact each : contacts){

            if(each.Title == null){

                each.Title = 'Salesforce Developer';
                updatedTitleContacts.add(each);
            }
        }

        if(!updatedTitleContacts.isEmpty()){
            update updatedTitleContacts;
        }

    }

}