//description: to make a callout to the Spartan API
public class HttpCalloutApex {
    
    //GET ALL SPARTANS API
    public static void HttpCalloutMethod(){
        Http http = new Http(); //INITIALIZING THE HTTP CALLOUTS
        HttpRequest request = new HttpRequest(); //INITIALIZING THE HTTP REQUEST CALLOUTS
        request.setEndpoint('https://pi2hscwpkz.us-east-1.awsapprunner.com/api/spartans');
        request.setMethod('GET'); // METHOD TO SEND THE REQUEST
        
        HttpResponse response = http.send(request); //CAPTURE THE SENT REQUEST TO HTTPRESPONSE
        system.debug('response body -->'+response.getBody()); //SHOWS RESPONSE BODY
        system.debug('response body -->'+response.getStatusCode()); //SHOWS RESPONSE STATUS
    }

    //GET ONE SPARTANS API
    public static void HttpCalloutMethodOne(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://pi2hscwpkz.us-east-1.awsapprunner.com/api/spartans/2');
        request.setMethod('GET');

        HttpResponse response = http.send(request);
        system.debug('response body -->'+response.getBody()); //SHOWS RESPONSE BODY
        system.debug('response body -->'+response.getStatusCode()); //SHOWS RESPONSE STATUS
    }

    //CREATE ONE SPARTAN USING API
    public static void HttpCalloutMethodPost(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setHeader('Content-Type', 'application/json');
        request.setEndpoint('https://pi2hscwpkz.us-east-1.awsapprunner.com/api/spartans');
        request.setBody('{"name": "Josh2","gender": "Male","phone": 2277085963}');
        request.setMethod('POST');

        HttpResponse response = http.send(request);
        system.debug('response body -->'+response.getBody()); //SHOWS RESPONSE BODY
        system.debug('response body -->'+response.getStatusCode()); //SHOWS RESPONSE STATUS
    }

    //SEARCH SPARTANS
    public static void HttpCalloutMethodSearch(String name, String gender, String phone){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        //https://pi2hscwpkz.us-east-1.awsapprunner.com/api/spartans/search?nameContains=Nels&gender=Male
        request.setEndpoint('https://pi2hscwpkz.us-east-1.awsapprunner.com/api/spartans/search?nameContains='+name+'&gender='+gender+'&phone='+phone);
        request.setMethod('GET');

        HttpResponse response = http.send(request);
        system.debug('response body -->'+response.getBody()); //SHOWS RESPONSE BODY
        system.debug('response body -->'+response.getStatusCode()); //SHOWS RESPONSE STATUS
    }
}