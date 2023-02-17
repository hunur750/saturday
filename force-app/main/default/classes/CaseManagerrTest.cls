@isTest
public with sharing class CaseManagerrTest {
    @TestSetup
    private static void makeData(){
        List<Case> cases= new List<Case>();
        for(Integer i=0; i<3; i++){
            Case cs= new Case(Subject='Test Subject '+i, Description='Test Description '+i, Origin='Web');
            cs.Type='Other';
            cs.Priority='Medium';
            cs.Status='Closed';
            cases.add(cs);
        }
        insert cases;
        List<Case> insertedCases=[select Id from case];
        system.assertEquals(3, insertedCases.size());
    }
    @isTest
    private static void postcaseTest(){
        
            // Test data setup
        
            // Actual test
            Test.startTest();
            Id caseId=CaseManager.postCase('Subject', 'Description', 'High', 'New');
            System.assertNotEquals(null, caseId);
            Case cs =[select Id, Subject, Priority from Case Where Id=:caseId];
            system.assertEquals('High', cs.Priority);
            Test.stopTest();

        
            // Asserts
        }
     @isTest
     private static void putCaseTest1(){
        Test.startTest();
        // pass null in Id => Testing insert scenarip
        Id caseId=CaseManager.putCase(null, 'Subject', 'Description', 'Medium', 'New');
        System.assertNotEquals(null, caseId);
        Case cs1 =[select Id, Subject, Priority from Case Where Id=:caseId];
        system.assertEquals('Medium', cs1.Priority);
        // pass valid Id => Testing Update scenario
        Id sameCaseId=CaseManager.putCase(caseId, 'Subject Changed', 'Description', 'High', 'In Progress');
        System.assertEquals(caseId, sameCaseId);
       
        Case cs2=[Select id,Priority from Case where Id=:caseId];
        system.assertEquals('High', cs2.Priority);
        Test.stopTest();
     } 
     @isTest 
     private static void getCaseTest() {
         Test.startTest();
         //1. Prepare RestRequest
         Case cs = [SELECT Id, Subject, Priority, Status FROM Case LIMIT 1];
         String homeUrl = System.URL.getSalesforceBaseUrl().toExternalForm();
 
         RestRequest request = new RestRequest();
         request.httpMethod = 'GET';
         request.requestURI = homeUrl + '/services/apexrest/Case/' + cs.Id;
 
         //2. Prepare RestContext
         RestContext.request = request;
 
         //3. Test the business method
         Case objCase = CaseManager.getCase();
         System.assertEquals(cs.Id, objCase.Id);
         System.assertEquals(cs.Subject, objCase.Subject);
         System.assertEquals(cs.Priority, objCase.Priority);
         Test.stopTest();
     }

    /* @IsTest
     public static void getCaseTest(){
        Test.startTest();
        //1 Prepare RestRequest
        Case cs =[select Id,Subject, Priority , Status from Case LIMIT 1];
        String homeUrl= System.URL.getSalesforceBaseUrl().toExternalForm();



        RestRequest request= new RestRequest();
        request.httpMethod='GET';
        request.requestURI=homeUrl +'/services/apexrest/Case' +cs.Id;

        //2 Prepare RestContext
        RestContext.request= request;


        //3 Test the business method
        case objCase= CaseManager.getCase();
        System.assertEquals(cs.Id, objCase.Id);
        System.assertEquals(cs.Subject , objCase.Subject);
        System.assertEquals(cs.Priority, objCase.Priority);
        Test.stopTest();
        
     }
     */
    @isTest 
    private static void deleteCaseTest() {
        Test.startTest();
        //1. Prepare RestRequest
        Case cs = [SELECT Id, Subject, Priority, Status FROM Case LIMIT 1];
        String homeUrl = System.URL.getSalesforceBaseUrl().toExternalForm();

        RestRequest request = new RestRequest();
        request.httpMethod = 'DELETE';
        request.requestURI = homeUrl + '/services/apexrest/Case/' + cs.Id;

        //2. Prepare RestContext
        RestContext.request = request;

        //3. Test the business method
        String status = CaseManager.deleteCase();
        System.assertEquals('Success', status);

        //Test Exception
        try {
            String failstatus = CaseManager.deleteCase();
            System.assertEquals('Success', failstatus);
        } catch(Exception ex) {
            
        }
        Test.stopTest();
    }

    /*
     @isTest
     public static void deleteCaseTest(){
        Test.startTest();
        Case cs=[select id, Subject, Priority,Status from Case limit 1];
        string homeUrl= System.URL.getSalesforceBaseUrl().toExternalForm();

        RestRequest request= new RestRequest();
        request.httpMethod='DELETE';
        request.requestURI=homeUrl+'/services/apexrest/Case/'+ cs.Id;

        RestContext.request=request;


        string status=CaseManager.deleteCase();
        system.assertEquals('Success', status);

        try{
            String failStatus=CaseManager.deleteCase();
            System.assertEquals('Fail', failStatus);
        } catch(Exception ex){

        }
        Test.stopTest();
     }
     */
     @isTest
    private static void patchCase(){
    Test.startTest();
        Case cs=[select id,Subject, Description, Priority, Status FROM Case LIMIT 1];
        cs.Priority='Medium';
        cs.Status='In progress';
        string body=JSON.serialize(cs);

        RestRequest request= new RestRequest();
        request.httpMethod='PATCH';
        request.requestBody=Blob.valueOf(body);


        RestContext.request=request;
        Case objCase=CaseManager.patchCase();
        System.assertEquals('Medium', objCase.Priority);
        System.assertEquals('In Progress', objCase.Status);





    Test.stopTest();




    }
}