@isTest
public class HttpCalloutApexMockCallout implements HttpCalloutMock {

    //IMPLEMENT THIS INTERFACE METHOD
    public HttpResponse respond(HttpRequest request){
        //CREATE FAKE RESPONSE
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        response.setBody('{"name": "JoshL","gender": "Male","phone": 1234567890}');
        response.setStatusCode(200);
        return response;
    }
}