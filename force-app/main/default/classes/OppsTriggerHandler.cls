public class OppsTriggerHandler {
    // a static variable to keep track of whether the trigger has already run
    public static Boolean firstRun = true;
  
    public static void handleAfterUpdate(List<Opportunity> opps) {
  
  
      if(! firstRun){
          System.debug('You have already ran this code@=!!!');  
          return ; 
      }
  
      // if you come to this point, it means it's the first time you are running this 
      firstRun = false ; 
      // perform the logic for the trigger
      List<Opportunity> updatedOpps = new List<Opportunity>();
  
      for (Opportunity each : opps) {
  
      // we can not edit the record within the context of Trigger.new
      // because it's locked in afterupdate event to prevent recursion
      // however we can clone the record into new variable including record Id 
      // we can do update on that cloned record 
      // then do update DML for the list that contains new updates 
      Opportunity eachClone = each.clone(true) ; // this will clone the record including the record Id
  
      if (each.Amount > 100000) {
          // each.Description = 'high amount'; // can not do this because record is locked
          eachClone.Description = 'high amount';
      } else {
          // each.Description = 'low amount'; // can not do this because record is locked
          eachClone.Description = 'low amount';
      }
      updatedOpps.add(eachClone);
      }
      // update the Opportunities
      update updatedOpps;
  
  
  
  
  
    }
  }