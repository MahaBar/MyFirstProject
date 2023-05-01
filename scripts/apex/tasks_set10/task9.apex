// Akbar
// Create a Account with Name value set 
Account acc = new Account(Name = 'Salesforce Tower');
// insert it into Salesforce
insert acc ;
// Create a Contact with LastName filled up under this Account
Contact con = new Contact(LastName='Vark', AccountId=acc.Id);
// insert it into Salesforce
insert con ; 

// Create Task with below fields set 
Task t1 = new Task();
// WhatId = Id of the Account above
t1.WhatId = acc.id ;
// WhoId  = Id of the Contact above 
t1.WhoId = con.Id ;
// Subject = 'Follow up with YourContactNameGoesHere' ; 
t1.Subject = con.LastName ; 
// Description = 'Have a chat with YourContactNameGoesHere from AccountNameGoesHere'
t1.Description = 'Have a chat with '+ con.LastName 
                + ' from ' + acc.Name ;
// ActivityDate = 7 Days from Today
t1.ActivityDate = Date.today() + 7 ;
// Status = 'Pending' ;
t1.Status = 'Pending' ;

insert t1 ;






// with Elden (second way)
Account acc1 = new Account(Name = 'Account from VSCode');
insert acc1;

Contact cont1 = new Contact (
   LastName = 'Poslavsky',
   AccountId = acc1.Id
);

insert cont1;

Task task1 = new Task (
   WhatId          = acc1.Id,
   WhoId           = cont1.Id,
   Subject         = 'Follow up with' + cont1.LastName ,
   Description     = 'Have a chat with' + cont1.LastName + 'from ' + acc1.Name,
   ActivityDate    = Date.today() + 7,
   Status = 'Pending' 
);

insert task1;




