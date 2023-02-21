@isTest
public with sharing class OpportunityManagerTest {
   @isTest
    private static void postOpportunity() {
        Test.startTest();
        Id oppId= OpportunityManager.createOpportunity('John', '2023-6-2', 'Prosoecting', '3000000');
        System.assertNotEquals(null, oppId);
        Opportunity op=[select id, name, closeDate, stageName, amount from Opportunity where Id=: oppId];
        System.assertEquals('John', op.Name);
        Test.stopTest();
    }
    
}