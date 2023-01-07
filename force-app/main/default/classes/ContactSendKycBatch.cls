public  class ContactSendKycBatch implements Database.Batchable<SObject> {
    public Database.QueryLocator start(database.BatchableContext bc){ 
     Database.QueryLocator q= database.getQueryLocator([select id,firstName, lastName, Send_for_KYC__c, 	Send_for_KYC_Date__c from contact]);
     return q;
    }

    public void execute(database.BatchableContext bc, list<contact> scope){
        system.debug(' inside execute method');

    }

    public void finish(database.BatchableContext bc){

        system.debug(' finish method called. Batch is done. ');
    }

}

