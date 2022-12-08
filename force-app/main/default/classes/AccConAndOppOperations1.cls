public  class AccConAndOppOperations1 {
    public static decimal oppAmount() {
        List<Opportunity> closedW= new List<Opportunity>();
        closedW=[ select id,name,stageName, Amount from Opportunity WHERE stageName='Closed Won' and Amount!= null];
        decimal sumOfAmount=0;
        for( opportunity eachOpp: closedW){

            sumOfAmount+= eachOpp.Amount;
        }
        return sumOfAmount;
       

        
    }
    public static list<account> closedWonOpp() {
        List<Account> listAccClosedW =[select id, name from account where Id IN ( select AccountId from Opportunity where StageName= 'Closed Won')];
        return listAccClosedW;


    }
    public static list<Account> closedWonOpp2(string stage ) {
        List<Opportunity> listOpp=[ select accountid from Opportunity where StageName=: stage and accountId!= NULL];

        set<id> idList= new set<id>();

        for (Opportunity opp :listOpp){
            idList.add(opp.AccountId);

        }
        List<Account> listAcc= [select id,name from Account where id IN:idList];
        return listAcc;
    }
    
    public static list<account> accWithContact() {
        List<Account> accList=[ select id, name from Account where id IN ( SELECT accountId from contact)];
        return accList;
        
    }
    public static void conAndAccName(Id accId) {
        
        Account acc1=[select id, name from Account where Id=:accId];
        Contact conn= new Contact();
        conn.LastName=acc1.Name;
        conn.AccountId=acc1.Id;

        insert conn;


        


        
    }
    public static void topOpp() {
        list<Opportunity> oppLst=[ select id, name, Description from Opportunity where amount!=null  order by Amount desc limit 10];
        List<Opportunity> oppUpdate= new List<Opportunity>();
        for( Opportunity opp: oppLst ){
            opp.Description='This is one of the top 10 opportunities.';
            oppUpdate.add(opp);
        }
        update oppUpdate;
        

        
    }


   
}
