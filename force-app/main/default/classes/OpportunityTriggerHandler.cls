public class OpportunityTriggerHandler {
    @future
    public static void highOpp(Set<Id> accId) {
        List<Account> listAcc=[select id,Highest_Amount_Opportunity_Name__c,(select id, name,amount from Opportunities where amount !=null order by amount desc LIMIT 1 ) from Account where id in: accId];
        for( Account eachAcc:listAcc){
            if( ! eachAcc.Opportunities.isEmpty()){ 
                eachAcc.Highest_Amount_Opportunity_Name__c=eachAcc.Opportunities[0].Name;
            } else {
                eachAcc.Highest_Amount_Opportunity_Name__c=null;
            }
        
        }
        update listAcc;

        
    }
    

    
    @future

    public static void targetAmountOpp(set<id> accId) {
        List<Account> listAcc = [select id, Target_Amount_Achieved_Opportunity_Name__c,Target_Amount__c,(select id,name,stageName , amount from Opportunities where stageName='Closed Won' order by amount desc NULLS LAST) from Account where id in :accId ];
        for (Account acc : listAcc) {
            if(!acc.Opportunities.isEmpty() && acc.Target_Amount__c<acc.Opportunities[0].Amount){
                acc.Target_Amount_Achieved_Opportunity_Name__c=null;
            }    
        }
        update listAcc;
    }
    @future
    public static void totalAmountOpp(set<id> accId) {
        List<Account> listAcc= [select Id, Total_Amount_Generated__c,( select id, amount from opportunities where StageName='Closed Won' and amount!= null) from Account where id in: accId];
        for (account  acc : listAcc) {
            if(!acc.Opportunities.isEmpty()){
                decimal totalAmount =0;
                for( Opportunity opp:acc.Opportunities){
                    totalAmount+=opp.Amount;
                }
                acc.Total_Amount_Generated__c= totalAmount;
            }else {
                acc.Total_Amount_Generated__c=null;
                
            }
            
        }
        update listAcc;
        
    }

}
