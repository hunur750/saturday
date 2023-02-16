public with sharing class AirlineCalloutDeneme {
 @future(callout=true)
 public static void postAirline(Id airlineId) {

    HttpRequest request= new HttpRequest();
    request.setEndpoint('https://api.instantwebtools.net/v1/airlines');
    request.setMethod('POST');

    Airline__c airline=[select Name, Country__c,Established__c,Head_Quartes__c,	Logo_URL__c, 	Name__c, Slogan__c,Website__c from Airline__c where Id=:airlineId LIMIT 1];
    AirlineWrapper wrap= convertToWrapper(airline);
    String body = JSON.serialize(wrap);
    request.setBody(body);
    request.setHeader('Content-Type', 'application/json:charset=UTF-8');
     //2- Prepare Internet
     Http http=new Http();

     //3- Send the HttpRequest over the internet in order to receive HttpResponce back
     HttpResponse response= http.send(request);

     

     // 4 Process HttpResponse
 
    system.debug('AirlineCallouts:postAirline - '+airlineId);

     system.debug(response.getStatusCode()+' '+response.getStatus());
    system.debug(response.getBody());


}


private static AirlineWrapper convertToWrapper(Airline__c airline)  {
AirlineWrapper wrap= new AirlineWrapper();
wrap.country=airline.country__c;
wrap.established=airline.established__c;
wrap.head_quaters=airline.Head_Quartes__c;
wrap.Id=airline.Name;
wrap.logo = airline.Logo_URL__c;
wrap.name=airline.Name__c;
wrap.slogan=airline.Slogan__c;
wrap.website=airline.website__c;
return wrap;    
}

    
 }

