@isTest
private class LeadProcessorTest {
    
    @isTest
    private static void testBatchClass() {
        
        // ARRANGE
        List<Lead> leads = new List<Lead>();
        for (Integer i=0; i<200; i++) {
            leads.add(new Lead(LastName='WoodenSpoon', Company='Cydeo'));
        }
        insert leads;
        
        // ACT
        Test.startTest();
        LeadProcessor lp = new LeadProcessor();
        Id batchId = Database.executeBatch(lp, 200);
        Test.stopTest();
        
        // ASSERT
        List<Lead> updatedLeads = [SELECT Id FROM Lead WHERE LeadSource = 'Dreamforce'];
        System.assertEquals(200, updatedLeads.size(), 'ERROR: At least 1 Lead record not updated correctly');
    }
}