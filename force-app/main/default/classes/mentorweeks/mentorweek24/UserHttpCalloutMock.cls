@isTest
public class UserHttpCalloutMock implements HttpCalloutMock {

    public HttpResponse respond(HttpRequest request){

        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json;charset=UTF-8');
        response.setBody('{"id": 11, "name": "Josh Lang", "username": "JL", "email": "josh@cydeo.com", "website": "josh.org", "company name": "Zero Josh"}');
        response.setStatusCode(200);
        return response;

    }

}