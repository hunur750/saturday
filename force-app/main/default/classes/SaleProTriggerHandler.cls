public  class SaleProTriggerHandler {
    public static void createDefaultTicket( List<Salesforce_Project__c> spTriggerNew) {
        List<Salesforce_Ticket__c> stList= new List<Salesforce_Ticket__c>();
        for( Salesforce_Project__c eachSP: spTriggerNew){
            Salesforce_Ticket__c st= new Salesforce_Ticket__c();
            st.Subject__c= 'Default st';
            st.Salesforce_Project__c= eachSP.id;
            stList.add(st);
              



        }
        if(!stList.isEmpty()){
            insert stList;
        }
        
    }
    public static void validateSPComplete(List<Salesforce_Project__c> spTriggerNew, List<Salesforce_Project__c> spTriggerOld, Map<Id,Salesforce_Project__c> spTriggerNewMap,Map<Id,Salesforce_Project__c> spTriggerOldMap) {
        set<id> spIds= new set<Id>();
        for( Salesforce_Project__c eachSP: spTriggerNew){
            if( eachSP.Status__c=='Completed'&& eachSP.Status__c!=spTriggerOldMap.get(eachSP.Id).Status__c){

                spIds.add(eachSP.Id);
            }
        }
        List<Salesforce_Ticket__c> listTicket=[ select id,status__c,Salesforce_Project__c from Salesforce_Ticket__c where Salesforce_Project__c in :spIds and status__c!='Completed'];

        for(Salesforce_Ticket__c eachST: listTicket){
            Salesforce_Project__c sp= spTriggerNewMap.get(eachST.Salesforce_Project__c);
            sp.Status__c.addError('Cannot complete project because all tickets are not completed. Go away now');
        }
    }
 
}
