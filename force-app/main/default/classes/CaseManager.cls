@RestResource(urlMapping='/Case/*')
global with sharing class CaseManager {
    //https://db0000008d1ecmay-dev-ed.develop.my.salesforce.com/services/apexrest/Case/500B000000AZIHbIAP

    @HttpGet
    global static Case getCase() {

        RestRequest request=RestContext.request;
        String uri = request.requestURI;
        Integer lastIndex= uri.lastIndexOf('/');
        Id caseId= uri.substring(lastIndex+1);
        Case cs=[select Id, CaseNumber, Subject, Description, Type, Priority, Status FROM Case WHERE Id=: caseId];
        return cs;



        // Split - Based on  /
        //https://db0000008d1ecmay-dev-ed.develop.my.salesforce.com/services/apexrest/Case/500B000000AZIHbIAP


        // lastIndexOf('/')

    }

    @HttpPost
    global static Id postCase(String Subject, String Type, String Priority, String Status){
        Case cs= new Case();
        cs.Subject= Subject;
        cs.Type= Type;
        cs.Priority=Priority;
        cs.Status=Status;
        insert cs;
        return cs.Id;


    }
    @HttpDelete
    global static String deleteCase(){
        RestRequest request= RestContext.request;
        String uri=request.requestURI;
        integer lastIndex=uri.lastIndexOf('/');
        Id caseId=uri.substring(lastIndex+1);
        try{
            delete [select id from case where id=: caseId];
        }catch(Exception ex){
            return 'Fail';
        }
        return 'Success';
     }
     @HttpPut
     global static Id putCase(String Id,String Subject, String Type, String Priority, String Status){
        Case cs= new Case();
        cs.Id=Id;
        cs.Subject= Subject;
        cs.Type= Type;
        cs.Priority=Priority;
        cs.Status=Status;
        upsert cs;
        return cs.Id;
     }
     @HttpPatch
     global static Case patchCase(){
        RestRequest request= RestContext.request;
        string body= request.requestBody.toString();
        Case cs=(Case)JSON.deserialize(body, Case.class);
        update cs;
        return  [SELECT Id, CaseNumber, Subject, Priority, Status,Type  FROM Case WHERE Id=: cs.Id limit 1 ];

     }
}