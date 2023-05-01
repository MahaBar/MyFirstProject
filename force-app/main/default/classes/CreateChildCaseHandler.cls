public class CreateChildCaseHandler {
    
    public static Boolean firstRun = true;

     /**
     * A method for the logic of after insert event
     * Every time new high priority case is created
     * a child case with Subject of Child case for Parent #CaseNumberGoesHere
     * with priority high should be created
     * @param newCases
     */
                                      // definition, list with parent cases
    public static void handleAfterInsert( List<Case> newCases){ // trigger.new (is a list) from trigger the same 

        if(firstRun == false){ // it false so then it go to line 13 or (!firstRun)
            System.debug('You have already ran this code@=!!!'); 
            return; // break
        }

        // this code has already been executed
        firstRun = false; // it became false and then it go to next line and than it break because it is not first run (to prevent next ran)

        // if you come to this point it means it`s the first run
        
        // create an empty list of case for strong Child cases about to be created and inserted
        List<Case> childCasesToInsert = new List<Case>(); // list with child cases
         
        // go through each and every newCases created,
        for(Case each: newCases ){ // action

            // check if the priority is high
            if(each.Priority == 'High'){
                // if so create child case, add it to list childCasesToInsert
                Case childCase = new Case(  Subject = 'Child Case for Case #' + each.CaseNumber,
                                            ParentId = each.Id, //ParentId it is API name of field in case-child, each.Id it is Id of case-parent 
                                            Priority = 'High');
            
            childCasesToInsert.add(childCase);
            }       
         }
        // insert the child cases
        if(! childCasesToInsert.isEmpty()){
            insert childCasesToInsert; 
         }
    }





}
















