/**
POST https://pi2hscwpkz.us-east-1.awsapprunner.com/api/spartans
Content-Type : application/json
body : 
{
  "name": "Jon Snow",
  "gender": "Male",
  "phone": 1234567890
}
*/

String url = 'https://pi2hscwpkz.us-east-1.awsapprunner.com/api/spartans'; 

String reqBody = '{"name":"Jon Snow","gender":"Male","phone":1234567890}' ;

Http h = new Http(); 

HttpRequest req = new HttpRequest();
req.setMethod('POST'); 
req.setEndpoint(url) ; 
req.setHeader('Content-Type', 'application/json');
req.setBody(reqBody); 

HttpResponse res = h.send(req); 
System.debug('res.getStatusCode() value is : ' + res.getStatusCode());
System.debug('res.getBody() value is : ' + res.getBody());
