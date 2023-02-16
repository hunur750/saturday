public with sharing class AnimalCalloutPost {
    public static HttpResponse postyAnimal() {
        HttpRequest request= new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('POST');
        string body='{"name"="dinosaur"}';
        request.setBody(body);
        request.setHeader('Content-Type','application/json;charset=UTF-8');
     
        Http http=new Http();
     
        HttpResponse response=http.send(request);
     
        if(response.getStatusCode()==201){ 
           System.debug(' Request has been processes successfully');
     
     
        } else {
           system.debug('Something went wrong while creating animal information: '+ response.getBody());
        }
        return response;
}
}