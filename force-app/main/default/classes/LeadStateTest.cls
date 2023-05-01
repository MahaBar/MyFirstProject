@isTest
public class LeadStateTest {
    
    @isTest
    public static void testNull(){

        String actualResult = LeadState.setPriority('CAS');
        String expectedResult = null;

        System.assertEquals(expectedResult, actualResult);

        String actualResult4 = LeadState.setPriority('');
        String expectedResult4 = null;

        System.assertEquals(expectedResult4, actualResult4);
    
    }

    @isTest
    public static void testHigh(){

        String actualResult2 = LeadState.setPriority('CA');
        System.assertEquals('High', actualResult2);
    }

    @isTest
    public static void testNormal(){

        String actualResult3 = LeadState.setPriority('TX');
        System.assertEquals('Normal', actualResult3);
    }

}