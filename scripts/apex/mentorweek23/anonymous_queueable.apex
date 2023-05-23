List<Contact> contactList = [SELECT Id, LastName, Title FROM Contact WHERE Title = 'Salesforce Developer'];

String newDepartment = 'Cydeo Developer';

ContactUpdateDepartment q = new ContactUpdateDepartment(contactList, newDepartment);

System.enqueueJob(q);