public class UserHttpCallout {

    public static void HttpGetOneUser(){

        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://jsonplaceholder.typicode.com/users/2');
        request.setMethod('GET');

        HttpResponse response = http.send(request);
        System.debug('Body: ' + response.getBody());
        System.debug('Status Code: ' + response.getStatusCode());
        System.debug('Content-Type Header: ' + response.getHeader('content-type'));

        Map<String, Object> resultMap = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());

        System.debug('Result Map: ' + resultMap);
        System.debug('Id: ' + resultMap.get('id'));
        System.debug('Name: ' + resultMap.get('name'));
        System.debug('Username: ' + resultMap.get('username'));
        System.debug('Email: ' + resultMap.get('email'));

    }

    public static void HttpPostUser(){

        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setHeader('Content-Type', 'application/json');
        request.setEndpoint('https://jsonplaceholder.typicode.com/users');
        request.setBody('{"id": 11, "name": "Josh Lang", "username": "JL", "email": "josh@cydeo.com", "website": "josh.org", "company name": "Zero Josh"}');
        request.setMethod('POST');

        HttpResponse response = http.send(request);
        System.debug('Body: ' + response.getBody());
        System.debug('Status Code: ' + response.getStatusCode());

    }

    public static void HttpPostUserSerialize(){

        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setHeader('Content-Type', 'application/json');
        request.setEndpoint('https://jsonplaceholder.typicode.com/users');

        Map<String, Object> myBodyMap = new Map<String,Object>();
        myBodyMap.put('id', 12);
        myBodyMap.put('name', 'Josh L');
        myBodyMap.put('username', 'J');
        myBodyMap.put('email', 'josh@cydeo.com');
        myBodyMap.put('website', 'josh.org');
        myBodyMap.put('company name', 'Zero Josh');
        System.debug('MyBodyMap: ' + myBodyMap);

        String jsonStr = JSON.serialize(myBodyMap);
        System.debug('JsonStr: ' + jsonStr);

        request.setBody(jsonStr);
        request.setMethod('POST');

        HttpResponse response = http.send(request);
        System.debug('Body: ' + response.getBody());
        System.debug('Status Code: ' + response.getStatusCode());

    }
    
}