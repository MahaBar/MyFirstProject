delete [Select Id from Opportunity Where Name like 'Batch Opp%'] ; 
delete [Select Id from Lead Where Name like 'JON SNOW%'] ; 


// 1000 Lead creation
// List<Lead> myLeads = Utils.getLeads('Jon Snow', 'NightWatch Inc',true, 1000); 
// System.debug('myLeads.size()  value is : ' + myLeads.size() );

// 500 Opps creation
// List<Opportunity> myOpps = Utils.getManyOpps('Batch Opp', 500, true); 
// System.debug('myOpps.size()  value is : ' + myOpps.size() );