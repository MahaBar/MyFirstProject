// https://discordapp.com/channels/1025426130087464960/1025426130678849543/1083405629923794944

/** Elden
6. Create a Date variable with name birthDay and assign the value that represent any date you want.
   - print out the day portion of the date (check the doc for right method from Date Class)
   - print out the month portion of the date (check the doc for right method)
   - print out the year portion of the data (check the doc for right method)
   - print out the result of checking if the year fall into leapYear (check the doc for right method)
   - print out the monthsBetween today and birthDay as number representation of how many month as Integer(check the doc)
   - print out the daysBetween today and birthDay as number representation of how many days as Integer(check the doc)

 */

Date birthDay = date.newInstance(2020, 03, 09) ;

System.debug('day of the birthday value is : ' + birthDay.day()); 
System.debug('month of the birthday value is : ' + birthDay.month()); 
System.debug('year of the birthday value is : ' + birthDay.year()); 

System.debug('isleap year : ' + Date.isLeapYear(birthDay.year())); 

System.debug ('months between today and birthday: ' + birthDay.monthsBetween(Date.today())); 

System.debug ('days between today and birthday: ' + birthDay.daysBetween(Date.today())); 
