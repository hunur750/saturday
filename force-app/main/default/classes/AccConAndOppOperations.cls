public  class AccConAndOppOperations {
    public static List<Account> accList(){
        List<Account> accListmet=[select name, id, AnnualRevenue,type, AccountSource from Account];
        

        return accListmet;

    }
    public static list<opportunity> oppStatus(string leadSource, string stage) {
        List<Opportunity> oppList= [ select name, id, StageName, leadSource from Opportunity where LeadSource=:leadSource and StageName=:stage ];
        return oppList;
    }
    public static list<
   
}
