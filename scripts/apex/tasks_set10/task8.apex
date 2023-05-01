/**
8. Create a Contact variable and assign value along with below fields 
   - LastName, Birthdate
   - insert it into Salesforce 
   - check if today is the birthday of this Contact according to Birthdate field value
      - print 'It's your Birthday Today, Tada! '
      - else print 'It's not your Birthday Today'
      - Hint : birthday means the date has same month and year as Today's date
 */

Contact con = new Contact();
con.LastName = 'Snow';
con.Birthdate = Date.newInstance(2020, 7, 28);
insert con;

if(con.Birthdate.day() == Date.today().day() && 
   con.Birthdate.month() == Date.today().month() ){
      System.debug('It\'s your Birthday Today, Tada! '); 

}else{
      System.debug( 'It\'s not your Birthday Today'); 
}



// with Elden (second way)
// Create a new Contact object and set its field values

Contact newContact = new Contact(
    LastName    = 'Cipil',
    FirstName   = 'Fatih',
    BirthDate   = Date.newInstance(1995, 03, 09),
    Email       = 'fatihcipil@gmail.com'
);

// Insert the new Contact record into the org


insert newContact;

// Check if today is the contact's birthday

if(newContact.Birthdate.month() == Date.today().month() &&
    newContact.Birthdate.day() == Date.today().day()
    ){
        System.debug('It\'s your Birthday Today, Tada! '); 
    } else {
        System.debug('It\'s not your Birthday Today');
    }