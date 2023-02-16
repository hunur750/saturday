trigger AirlineCalloutDenemeTrigger on Airline__c (after insert) {
    if(trigger.isAfter){
        if(trigger.isInsert){
            AirlineCalloutDenemeHandler.afterInsert(trigger.newMap);

        }
    }

}