@RestResource(urlMapping='/Account/*')//https://db0000008d1ecmay-dev-ed.develop.my.salesforce.com/services/apexrest/001B000001TAmJQIA1
global with sharing class AccountRestServices {
    @HttpGet
    global static Account getAcc(){
        RestRequest request=RestContext.request;
        string uri= request.requestURI;
        integer lastIndex=uri.lastIndexOf('/');
        Id accId=uri.substring(lastIndex+1);
        Account acc=[select id, name, industry, phone from Account where Id=:accId];
        return acc;
    }
    @HttpPost
    global static Id postAcc(String Name, String Industry, String Phone)    {
        Account acc= new Account();
        acc.Name=Name;
        acc.Industry=Industry;
        acc.Phone=Phone;
        insert acc;
        return acc.Id;
    }
     @HttpDelete
    global static String deleteAcc(){
        RestRequest request= RestContext.request;
        String uri=request.requestURI;
        Integer lastIndex=uri.lastIndexOf('/');
        Id accId=uri.substring(lastIndex+1);
        try{
            delete[select id from Account WHERE id=:accId];
        } catch(Exception ex){
            return 'Fail';
        }   
        return 'Success';
    }
    @HttpPut
    global static Id pustAcc(String Id, String Name, String Industry, String Phone)    {
        Account acc= new Account();
        acc.Id=Id;
        acc.Name=Name;
        acc.Industry=Industry;
        acc.Phone=Phone;
        upsert acc;
        return acc.Id;
    }
    @HttpPatch
    global static Account patcAcc(){
        RestRequest request= RestContext.request;
        string body=request.requestBody.toString();
        Account acc=(Account)JSON.deserialize(body, Account.class);
        update acc;
        return[select id, name, industry, phone from account WHERE Id=:acc.Id LIMIT 1 ];

    }
    

}