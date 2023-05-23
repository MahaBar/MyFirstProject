global class CallOutUtils {
    

    @future(callout=true)
    global static void createSpartan(String name, String gender, Long phone){

        String url = 'https://pi2hscwpkz.us-east-1.awsapprunner.com/api/spartans'; 

        // String reqBody = '{"name":"Jon Snow","gender":"Male","phone":1234567890}' ;
        Map<String,Object> myBodyMap = new Map<String,Object>();
        myBodyMap.put('name', name);
        myBodyMap.put('gender', gender);
        myBodyMap.put('phone', phone);
        String reqBody  = JSON.serialize(myBodyMap); 

        Http h = new Http(); 

        HttpRequest req = new HttpRequest();
        req.setEndpoint(url) ; 
        req.setMethod('POST'); 
        req.setHeader('Content-Type', 'application/json');
        req.setBody(reqBody); 

        HttpResponse res = h.send(req); 
        System.debug('res.getStatusCode() value is : ' + res.getStatusCode());
        System.debug('res.getBody() value is : ' + res.getBody());

    }


}
