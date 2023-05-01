// SELECT Count(ID) FROM Account

AggregateResult result = [SELECT Count(ID), MAX(AnnualRevenue) 
                        FROM Account];
System.debug('result value is : ' + result);
// get the count value out of AggregateResult
// we have get method that accept the column name and return the value
System.debug('Count of Account is '+ result.get('expr0')); 
System.debug('MAX(AnnualRevenue) is '+ result.get('expr1')); 

// SELECT Count of Opportunity and Min Opps amount for all opportunities
// Store the result into a variable and print it out
// give alias to your aggregate function as CountOfOpps, LowestAmount

AggregateResult oppResult = [SELECT COUNT(Id) CountOfOpps, MIN(Amount) LowestAmount 
                            FROM Opportunity ];
System.debug('Count of Opps is '+ oppResult.get('CountOfOpps')); 
System.debug('MIN(Amount) is '+ oppResult.get('LowestAmount')); 


// If the SOQL Query return single row, we can store it into one AggregateResult variable
// When we have multiple rows as a result of GROUP BY
// Then we will get one AggregateResult for every row
// and we can store it in a List or Array 
// List<AggregateResult> or just AggregateResult[]
// List<AggregateResult> allResults = 
AggregateResult[] allResults = [SELECT StageName, COUNT(ID) CountOfOpps
                                FROM Opportunity
                                GROUP BY StageName];
// System.debug('allResults value is : ' + allResults);
for(AggregateResult each : allResults) {
    //System.debug('Current value : ' + each);
    // print in this format StageName --> CountOfOpps
    System.debug( each.get('StageName') + '-->'  + each.get('CountOfOpps')); 
    
}
    
System.debug('------------------');

// TASK : Store the result of below query and print each item out 
/**
// SELECT isClosed, COUNT(Id)
// FROM Opportunity
// GROUP BY IsClosed
 */
AggregateResult[] caseResults = [SELECT isClosed, COUNT(Id) FROM Opportunity
                                 GROUP BY IsClosed];
for(AggregateResult each : caseResults) {
    System.debug( each.get('isClosed') + '-->'  + each.get('expr0')); 
    }
    






















