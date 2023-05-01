/**
SELECT Id, CaseNumber, ContactId, Contact.Name, AccountId, Account.Name
FROM Case
WHERE CaseNumber LIKE '%100_'


SELECT Name, BillingState 
FROM Account
WHERE BillingState IN ('CA', 'NY')


SELECT Name, BillingState 
FROM Account
WHERE BillingState NOT IN ('CA', 'NY')
ORDER BY BillingState NULLS LAST


SELECT Id, Name, Account.Name
FROM Contact
WHERE Account.Name LIKE 'United%'


SELECT Name, Book_Page__c, Author__r.Name
FROM Book__c


SELECT Name, (SELECT Name, Book_Page__c FROM Books__r)
FROM Author__c


SELECT Id, Name, (SELECT Id, Name FROM Contacts)
FROM Account
WHERE Id IN (SELECT AccountId FROM Contact WHERE Account.Name LIKE 'United%')   // Id field semi-join


SELECT Id, Subject, WhoId
FROM Task 
WHERE WhoId IN (SELECT Id FROM Contact WHERE LeadSource = 'Public Relations')   // Reference field semi-join


SELECT Id, Name, FIELDS(CUSTOM) 
FROM Account LIMIT 5
SELECT Name
FROM Account
ORDER BY Name
LIMIT 10
OFFSET 5


// All aggregate functions ignore null values, except for COUNT() and COUNT(Id).
// COUNT(fieldname) is different from COUNT(). COUNT(fieldname) does ignore null values.

SELECT COUNT(Name), AVG(AnnualRevenue)
FROM Account


SELECT COUNT(Name)
FROM Account
WHERE Name LIKE 'United%'


SELECT Name, MIN(AnnualRevenue)
FROM Account
GROUP BY Name


SELECT COUNT(Id), COUNT(AccountId), COUNT_DISTINCT(AccountId), SUM(Amount), MAX(Amount), MIN(Amount), AVG(Amount)
FROM Opportunity


SELECT StageName, COUNT(Id), SUM(Amount)
FROM Opportunity
GROUP BY StageName
/* If you use aggregate function with any additional field in Select line,
it must be Grouped by that field or it will not work  */


/* You can use a HAVING clause with a GROUP BY clause to filter the results 
returned by aggregate functions, such as SUM(). 
The HAVING clause is similar to a WHERE clause. 
The difference is that you can include aggregate functions in a HAVING clause, 
but not in a WHERE clause. */

SELECT Name, COUNT(AnnualRevenue)
FROM Account
GROUP BY Name
HAVING AnnualRevenue > 100000


SELECT Name, Count(Id), COUNT_DISTINCT(AnnualRevenue)
FROM Account
GROUP BY Name
HAVING Name LIKE 'United%'
/* Retrieve Id, name, rating and annual revenue from account sObject 
with accounts which have annual revenue greater than $100000
   Than iterate over each account with name and annual revenue  */

List<Account> accList = [
  SELECT Id, Name, Rating, AnnualRevenue
  FROM Account
  WHERE AnnualRevenue > 100000
];

System.debug('Account accList size: ' + accList.size() );

for(Account each : accList) {
    System.debug('Name: ' + each.Name + ' - Annual Revenue: ' + each.AnnualRevenue);
}

// Bind variable
String company = 'United Oil & Gas Corp.';

List<Account> accountList = [SELECT Name FROM Account WHERE Name LIKE : company];
System.debug('Account names: ' + accountList);
 */