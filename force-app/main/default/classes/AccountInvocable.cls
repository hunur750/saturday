public with sharing class AccountInvocable {
    @InvocableMethod( label='Close Opportunities'
    description='This method going to update the stagename of all opportunities under the given account to closed lost'
    category='Opportunity')
    public static void closeOpportunities(list <Id> accountIds) {
        list <Opportunity> opps=[select id, StageName from Opportunity where AccountId in : accountIds and StageName not in ('Closed Won', 'Closed Lost')];
        for (  Opportunity opp : opps) {
            Opportunity eachOpp= new Opportunity();
            opp.StageName='Closed Lost';
        
            
        }
        if(!opps.isEmpty()){
            try{
                update opps;
            }catch(Exception ex){
                //create a log
            }
        }

        
    }
}
