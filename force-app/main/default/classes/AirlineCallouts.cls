public with sharing class AirlineCallouts {
    //Endpoint: https://api.instantwebtools.net/v1/airlines
    //Http Method: POST
    @future (callout=true)
    public static void postAirline(Id airlineId) {
         //1-0 Prepare HttpRequest and wrap all the necessary data in it
         HttpRequest request= new HttpRequest();
         request.setEndpoint('https://api.instantwebtools.net/v1/airlines');
         request.setMethod('POST');
         //1.1 get airline detail &prepare the same as json body
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
         Application_Logi__c log= new Application_Logi__c();
         log.Custom_Method__c='AirlineCallouts:postAirline - '+airlineId;
         log.Exception_Type__c='Success';
         log.Exception_Message__c=response.getStatusCode()+' '+response.getStatus();
         log.Stack_Trace__c=response.getBody();

         insert log;

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

/* airline.Name = aw.id;
airline.Country__c = aw.country;
airline.Established__c = aw.established;
airline.Head_Quaters__c = aw.head_quaters;
airline.Logo_URL__c = aw.logo;
airline.Name__c = aw.name;
airline.Slogan__c = aw.slogan;
airline.Website__c = aw.website;
airlines.add(airline);*/


}