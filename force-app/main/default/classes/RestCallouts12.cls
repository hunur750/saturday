public with sharing class RestCallouts12 {
/*public static void getUser() {
    //1 Request olusturma
    HttpRequest Request= new HttpRequest();
    Request.setEndpoint('https://reqres.in/api/users/2');
    Request.setMethod('GET');



    //2 Bu requesti Apiye gonderip dondurdugu dgeri yani response degerini alma
    Http http=new Http();
    HttpResponse response=http.send(Request);
    system.debug(' get status =>' +    response.getStatus());
    system.debug(' get status code =>' +    response.getStatusCode());
    system.debug('get body '+response.getBody() );
   



    //3 Bir data gelirse bu datanin icindeki verileri goruntuleme...
    if(response.getStatusCode()== 200){
         string userJson =response.getBody();
         Map<String,Object> userValue= (Map<String,Object>)JSON.deserializeUntyped(userJson);
         system.debug('veri=>'+ userValue);
         System.debug('data =>' + userValue.get('data'));
         system.debug('support=>'+userValue.get('support'));

         Map<String,Object> userInfo= (Map<String,Object>)userValue.get('data');
         system.debug('first name' + userInfo.get('first_name'));
         system.debug('id' + userInfo.get('id'));
         system.debug('last name' + userInfo.get('last_name'));
         system.debug('email' + userInfo.get('email'));


    }

    
}*/

    public static void getUser(){
        HttpRequest request= new HttpRequest();
        request.setEndpoint('https://reqres.in/api/users');
        request.setMethod('GET');


        Http http= new Http();
        HttpResponse response= http.send(request);
       

        if( response.getStatusCode()==200){
            string jsonUser= response.getBody();
            
            Map<String,Object> userValue=(Map<String,Object>) JSON.deserializeUntyped(jsonUser);
            system.debug(userValue);
            system.debug('data=>>>>>>>'+ userValue.get('data'));
            system.debug('support>>>>>>>'+ userValue.get('support'));
           

            Map<String,Object> userDob= (Map<String,Object>)userValue.get('data');
            System.debug('id' + userDob.get('id'));
            


        }





    }
}