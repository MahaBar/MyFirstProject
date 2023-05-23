@isTest
public class HttpCalloutApexTest {
    
    //GET METHOD API
    @isTest static void testMethodCallout(){
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('GetSpartanData');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        Test.setMock(HttpCalloutMock.class, mock);
        HttpCalloutApex.HttpCalloutMethod();
        HttpCalloutApex.HttpCalloutMethodOne();
        HttpCalloutApex.HttpCalloutMethodSearch('JoshL', 'Male', '1234567890');
    }

    //POST METHOD API
    @isTest static void testMethodPostCallout(){
        //SET MOCK CALLOUT CLASS
        Test.setMock(HttpCalloutMock.class, new HttpCalloutApexMockCallout());
        HttpCalloutApex.HttpCalloutMethodPost();
    }
}