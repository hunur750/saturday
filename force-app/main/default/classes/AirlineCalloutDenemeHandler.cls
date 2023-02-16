public with sharing class AirlineCalloutDenemeHandler {

    public static void afterInsert(Map<Id,Airline__c> newAirlines){ 
        for( Id airlineId : newAirlines.keySet()){

            AirlineCalloutDeneme.postAirline(airlineId);
        }
        
    }

}