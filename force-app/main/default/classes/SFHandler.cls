public  class SFHandler {
    public static void updateStatusSF(List<Salesforce_Project__c> sfTriggerNew, List<Salesforce_Project__c> sfTriggerOld, map<id,Salesforce_Project__c> SFoldMap, map<id,Salesforce_Project__c> SFNewmap ) {
        set<id> sfIds= new set<id>();
        for( Salesforce_Project__c eachSf:sfTriggerNew){

            if(eachSf.Status__c!=SFoldMap.get(eachSf.id).Status__c){
                sfIds.add(eachSf.Id);
            }

        }
        List<Salesforce_Ticket__c> allTickets= [select id, priority__c from Salesforce_Ticket__c where Id in :sfIds];
        for( Salesforce_Ticket__c eachTicket: allTickets ){
            Salesforce_Project__c newProject= SFNewmap.get(eachTicket.id);

        }

    }
}
