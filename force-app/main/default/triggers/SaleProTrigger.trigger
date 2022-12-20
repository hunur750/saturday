trigger SaleProTrigger on Salesforce_Project__c (before insert, after insert, before update) {

    if( trigger.isAfter&& trigger.isInsert){
        SaleProTriggerHandler.createDefaultTicket(trigger.new);
    }

    if(trigger.isBefore&& trigger.isUpdate){

        SaleProTriggerHandler.validateSPComplete(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);




        
    }



}