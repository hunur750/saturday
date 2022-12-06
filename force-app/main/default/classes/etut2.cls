public  class etut2 {
    private static void fetchOppsAndAcc(){
list<Opportunity> listofOpp= [select id, name, amount, stageName, accountid, account.phone,account.type, Account.industry from Opportunity where (StageName!= 'Closed Won' and StageName!=' Closed Lost')];

    }
    public static void generalMethod() {
        fetchOppsAndAcc();
        for( Opportunity opp: listOfOpp){
            String printString= ' Opp name is'+opp.Name;
            printString+='amount and stagename of opp is'+ opp.Amount+' '+opp.StageName;
            printString+= '. Account name of opp is' + opp.Account.Name ;
            if(opp.AccountId!=null){
                
            }
        }
    }

}
