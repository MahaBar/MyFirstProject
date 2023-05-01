@isTest
private class LeadTriggerTest {
    
    @isTest
    static void testBeforeInsertHappyScenario(){
        
        // Arrange
        // WE DO NOT HAVE ANY VISIBILITY TO ORG DATA IN YHE TEST, WE NEED TO CREATE OUR OWN
        // List<Lead> allLeads = [SELECT Id,Name FROM Lead];  
        // System.debug('allLeads.size() value is : ' + allLeads.size()); // 0
        List<Lead> myLeads = new List<Lead>();
        myLeads.add(new Lead(FirstName='jon1', LastName='snow1', Company='ABC',LeadSource='Phone'));
        myLeads.add(new Lead(FirstName='jon2', LastName='snow2', Company='ABC',LeadSource='Phone'));
        myLeads.add(new Lead(FirstName='jon3', LastName='snow3', Company='ABC',LeadSource='Phone'));

        // Act = fire the event
        insert myLeads;

        // Assert
        // First name ==>> TitleCase
        // Last name ==>> UpperCase
        // IN ORDER TO SEE THE UPDATES MADE BY TRIGGER, WE NEED SOQL
        List<Lead> allLeads = [SELECT Id,Name FROM Lead];  
        System.debug('allLeads.size() value is : ' + allLeads.size()); // 3
        
        // expect first record in the list name => Jon1 SNOW1
        Assert.areEqual('Jon1 SNOW1',allLeads[0].Name);
        // expect first record in the list name => Jon2 SNOW2
        Assert.areEqual('Jon2 SNOW2',allLeads[1].Name);
        // expect first record in the list name => Jon13SNOW3
        Assert.areEqual('Jon3 SNOW3',allLeads[2].Name);
        //Assert.areEqual(expected,actual);
    }

    @isTest
    static void testBeforeInsertHappyScenario_CSV_File(){
        
        // Arrange
        // Act
        // loading test data and inserting using Test.loadData and static resource csv file
        List<sObject> myLeads = Test.loadData(Lead.sobjectType, 'leadData');


        // Assert
        // First name ==>> TitleCase
        // Last name ==>> UpperCase
        // IN ORDER TO SEE THE UPDATES MADE BY TRIGGER, WE NEED SOQL
        List<Lead> allLeads = [SELECT Id,Name FROM Lead];  
        System.debug('allLeads.size() value is : ' + allLeads.size()); // 3
        
        // expect first record in the list name => Jon1 SNOW1
        Assert.areEqual('Jon1 SNOW1',allLeads[0].Name);
        // expect first record in the list name => Jon2 SNOW2
        Assert.areEqual('Jon2 SNOW2',allLeads[1].Name);
        // expect first record in the list name => Jon13SNOW3
        Assert.areEqual('Jon3 SNOW3',allLeads[2].Name);
        //Assert.areEqual(expected,actual);
    }



    @isTest
    static void testBeforeInsertNoLeadSourceNoFirstName(){
        //Arrange 
        // WE DO NOT HAVE ANY VISIBILITY TO ORG DATA IN THE TEST , WE NEED TO CREATE OUR OWN
        List<Lead> myLeads = new List<Lead>(); 
        myLeads.add( new Lead(LastName='snow1', Company='ABC')  ); 
        myLeads.add( new Lead(LastName='snow2', Company='ABC')  ); 
        myLeads.add( new Lead(LastName='snow3', Company='ABC')  ); 

        //Act
        insert myLeads;

        //Assert
        List<Lead> allLead = [SELECT FirstName, LeadSource FROM Lead 
                                WHERE LeadSource = 'Web' AND FirstName = NULL];
        // expect size of this list is 3 

        // Expect the LeadSource is Web, optionally FirstName remain blank
        Assert.areEqual(3,allLead.size());
    }


    @isTest
    static void testBeforeDElete(){
        
        // Arrange
        // WE DO NOT HAVE ANY VISIBILITY TO ORG DATA IN YHE TEST, WE NEED TO CREATE OUR OWN
        // List<Lead> allLeads = [SELECT Id,Name FROM Lead];  
        // System.debug('allLeads.size() value is : ' + allLeads.size()); // 0
        List<Lead> myLeads = new List<Lead>();
        myLeads.add(new Lead(LastName='snow1', Company='ABC',Status='Working - Contacted'));
        myLeads.add(new Lead(LastName='snow2', Company='ABC',Status='Working - Contacted'));
        myLeads.add(new Lead(LastName='snow3', Company='ABC',Status='Open - Not Contacted'));

        // Act
        //  need to first the data so we have data in the org
        insert myLeads;
        // delete DML will be enough to get test coverage
        // however it wil throw exception and fail the test
        // we will continue from here
        //delete myLeads; // just performing delete DML and it will throw Exception

        // since above DML will not work it will just throw exception and stop the execution
        // we can either use try catch block to handle the exception and move on or
        // use DML mirror methods as below and store the result and get more info from the result
        //Database.delete(yourList, allOrNothingOption)return Database.DeleteResult[])
        //Database.insert(yourList, allOrNothingOption)return Database.SaveResult[])
        //Database.update(yourList, allOrNothingOption)return Database.updateResult[])
        //Database.undelete(yourList, allOrNothingOption)return Database.UnDeleteResult[])
        
        Database.DeleteResult[]  results = Database.delete(myLeads, false); 
        // get the first result out of this array : 
        
        // Assert.areEqual( false,  results[0].isSuccess()   ) ; 
        Assert.isFalse(   results[0].isSuccess()   );
        Assert.isFalse(   results[1].isSuccess()   );
        Assert.isTrue(   results[2].isSuccess()   ); // this lead is 'Open - Not Contacted' status we should be able to delete

        // first 2 leads are not deleted and error is this :Can not Delete a Lead in Working Status
        // get the error and assert the error message match as expected
        String expectedErrorMsg = 'Can not Delete a Lead in Working Status' ;
        String actualErrorMsg1 = results[0].getErrors()[0].getMessage();
        Assert.areEqual(expectedErrorMsg,actualErrorMsg1);

        String actualErrorMsg2 = results[1].getErrors()[0].getMessage();
        Assert.areEqual(expectedErrorMsg,actualErrorMsg2);
    }


    @isTest
    static void testAfterInsertTaskCreation(){
        
       //Arrange : Created Test Data 

       //Act : Insert Lead(s)
       // create 10 Test Data and Insert into Salesforce 
       List<Lead> allLeads = Utils.getLeads('Mario', 'Mushroom Inc', true, 10) ; 

       //Assert : Task is created under each Lead with specified subject,activityDate

       // Expectation : 10 tasks should exists in the system 
       // all of them should have Name start with 'Send Apple Air tag to Mario'
       //                         activityDate 2 days from Today

       Date twoDaysFromNow = Date.today() + 2 ; 

       List<Task> allTasks = [SELECT Subject,ActivityDate,WhoId  FROM Task
                              WHERE Subject LIKE 'Send Apple Air tag to Mario%'  
                              AND ActivityDate = :twoDaysFromNow   
                             ]; 
       // expect you have exactly 10 tasks :
        Assert.areEqual(10,allTasks.size() );
    
        for(Integer i=0; i<10 ;i++) {
            
            Task eachTask = allTasks[i] ; 
            Lead eachLead = allLeads[i] ; 
            // Assert the Task is associated with the lead 
            // by checking task whoId field is filled up with lead Id
            Assert.areEqual(eachLead.Id, eachTask.WhoId  );    
            // check the task subject 'Send Apple Air tag to Mario1,2,3,4,5,...10
            String expectedSubject = 'Send Apple Air tag to ' + eachLead.LastName.toUpperCase() ;
            Assert.areEqual(expectedSubject, eachTask.Subject );
            // optionally do the same for the date 

        }
    }
    // Lead     Task
    // Mario1   Send Apple Ait tag to Mario1
    // Mario2   Send Apple Ait tag to Mario2
    // Mario3   Send Apple Ait tag to Mario3
    // Mario4   Send Apple Ait tag to Mario4
    //....
    // Mario10   Send Apple Ait tag to Mario10


}

















