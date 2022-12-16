trigger SaleProTrigger on Salesforce_Project__c (before insert, after insert) {

if( trigger.isAfter&& trigger.isInsert){
    SaleProTriggerHandler.createDefaultTicket(trigger.new);






}



}