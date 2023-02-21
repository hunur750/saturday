@RestResource(urlMapping='/Opp/*')
global with sharing class OpportunityManager {
    @HttpGet
    global static Id getOpportunity() {
        RestRequest request= RestContext.request;
        String uri=request.requestURI;
        Id oppId= uri.substringAfterLast('/');
        opportunity op=[select id, name, closeDate, StageName,amount from Opportunity where id=:oppId limit 1];
        return op.Id;
    }
    @HttpPost
    global static id createOpportunity(string ad, String closeDate, String stageName, String amount){
        Opportunity opp = new Opportunity();
        opp.Name=ad;
        opp.CloseDate=Date.valueOf(closeDate);
        opp.StageName=stageName;
        opp.Amount=Decimal.valueOf(amount);
        insert opp;

        return opp.id;

    }
    @HttpDelete  
    global static String deleteOpportunity() {
         RestRequest request= RestContext.request;
        String uri= request.requestURI;
        Id oppId=uri.substringAfterLast('/');
        Opportunity op=[select Id from Opportunity where Id=:oppId ];
        delete op;
        return 'Opportunity record silindi..';
        
    }  
    @HttpPut
    global static Id upsertOpportunity(string Id, String name, string closeDate, string stageName, String amount) {
        Opportunity opp= new Opportunity();
        opp.Id= Id;
        opp.Name=name;
        opp.CloseDate=Date.valueOf(closeDate);
        opp.StageName=stageName;
        opp.Amount=Decimal.valueOf(amount);
        upsert opp;

        return opp.id;   
    }

    @HttpPatch
    global static Opportunity patchOpportunity() {
        RestRequest request= RestContext.request;
        string jsonString= request.requestBody.toString();
        Opportunity op= (Opportunity)JSON.deserialize(jsonString, Opportunity.class);
        update op;
        Opportunity opnew=[select id, Name, stageName, closeDate from Opportunity where Id=: op.Id];
        
        return opnew;
    
    }
}