// create an account and a related contact
// create a task on contact

Account acc1 = new Account(Name = 'Zero Company');
acc1.Industry = 'Technology';

System.debug(acc1);

insert acc1;

System.debug(acc1);

Contact con1 = new Contact(LastName = 'Smith');

con1.AccountId = acc1.Id;

insert con1;

Task taskAcc1 = new Task();
taskAcc1.WhatId = acc1.Id;
taskAcc1.Priority = 'High';
taskAcc1.ActivityDate = Date.today().addDays(5);
taskAcc1.Subject = 'Follow up ' + acc1.Name;

insert taskAcc1;
