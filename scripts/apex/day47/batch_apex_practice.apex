// List<Opportunity> myOpps = Utils.getManyOpps('Batch Opp', 500, true); 
// System.debug('myOpps.size()  value is : ' + myOpps.size() );


// delete [Select Id From Lead WHERE CreatedDate = TODAY] ; 

OverdueOppProcessor ovp = new OverdueOppProcessor(); 
// Database.executeBatch(ovp, 150);  // 500/150  150-150-100-100
// Database.executeBatch(ovp, 200);  // 500/200  3
Database.executeBatch(ovp, 100) ;