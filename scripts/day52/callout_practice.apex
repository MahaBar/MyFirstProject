// GET https://pi2hscwpkz.us-east-1.awsapprunner.com/api/spartans/1
// Print out the response status code , body 

// In order to be able to send api request from salesforce to external app 
// the utl must be added into Remote Site setting in setup 

// Http Class from Apex is used to send API request from Salesforce 
Http h = new Http(); 
// Build your API request so it can be send 
// using the type HTTPRequest 
HttpRequest req = new HttpRequest(); 
// This is how we set the URL using setEndpoint Method
req.setEndpoint('https://pi2hscwpkz.us-east-1.awsapprunner.com/api/spartans/1'); 
// set the HTTP very|method GET 
req.setMethod('GET'); 

// Send the requesing using Http object in first line and store the response 
HttpResponse res = h.send(req) ; 

// get more details from the HttpResponse object 
System.debug('Status code is : ' + res.getStatusCode() ); 
System.debug('Body : ' + res.getBody() ); 
System.debug('Content-Type header value ' +  res.getHeader('content-type')      ); 

// Apex Utility class called JSON has lots of methods 
// to turn JSON into Apex Type  (De-serialization)
// or to turn Apex Type into JSON (serialization)

// Use JSON.deserializeUntyped to turn a json String to object 
// cast the type object to (Map<String,Object>) 
Map<String,Object> resultMap = (Map<String,Object>) JSON.deserializeUntyped(  res.getBody()  ) ; 

System.debug('resultMap value is : ' + resultMap);
System.debug('resultMap.get(\'name\') value is : ' + resultMap.get('name'));
System.debug('resultMap.get(\'gender\') value is : ' + resultMap.get('gender'));
System.debug('resultMap.get(\'id\') value is : ' + resultMap.get('id'));
System.debug('resultMap.get(\'phone\') value is : ' + resultMap.get('phone'));