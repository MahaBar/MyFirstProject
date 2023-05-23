@isTest
public class UserHttpCalloutTest {
    
    @isTest
    static void testMethodHttpGetOneUser (){

        Test.setMock(HttpCalloutMock.class, new UserHttpCalloutMock());
        UserHttpCallout.HttpGetOneUser();

    }

    @isTest
    static void testMethodHttpPostUser(){

        Test.setMock(HttpCalloutMock.class, new UserHttpCalloutMock());
        UserHttpCallout.HttpPostUser();

    }

    @isTest
    static void testMethodHttpPostUserSerialize(){

        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('GetUserData');
        mock.setStatusCode(201);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        Test.setMock(HttpCalloutMock.class, mock);
        UserHttpCallout.HttpPostUserSerialize();

    }

    

}