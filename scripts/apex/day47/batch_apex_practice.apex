// List<Opportunity> myOpps = Utils.getManyOpps('Batch Opp', 500, true); 
// System.debug('myOpps.size()  value is : ' + myOpps.size() );

OverdueOppProcessor ovp = new OverdueOppProcessor(); 
Database.executeBatch(ovp, 150);  // 500/150  150-150-150-50
