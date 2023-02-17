@isTest

public with sharing class AccountRestServicesTest {
@testSetup
private static void makeData() {
    List<Account> accList= new List<Account>();
    for( integer i=0; i<3; i++){
        Account acc=new Account( Name='Test Name'+i, Site='Test Site' +i );
        acc.Active__c='Yes';
        acc.Industry='Energy';
        acc.Rating='Hot';
        acc.Phone='456987';
        accList.add(acc);
     }
     insert accList;
     List<Account> insertedAcc=[select id from Account];
     System.assertEquals(3, insertedAcc.size());
    
}

@isTest
  private static void postAccTest(){
    Test.startTest();
    Id accId=AccountRestServices.postAcc('Name', 'Banking', '236598');
    System.assertNotEquals(null, accId);
    Account acc=[select Id, Name, Industry, Rating, Phone FROM Account where Id=: accId];
    System.assertEquals('Banking', acc.Industry);
    
    Test.stopTest();
  }
  @isTest
  public static void putAccTest(){
    Test.startTest();
    Id accId=AccountRestServices.putAcc(null, 'Name', 'Electrical', '789123456');
    System.assertNotEquals(null, accId);
    Account acc1=[Select Id, Name, Industry,Phone from Account WHERE Id=:accId];
    System.assertEquals('Electrical', acc1.Industry);



    Test.stopTest();
  }
  @isTest

  public static void getAccTest(){
    Test.startTest();
    Account acc=[Select Id, Name, Industry,Phone from Account LIMIT 1 ];
    String homeUrl= System.URL.getSalesforceBaseUrl().toExternalForm();
    RestRequest request= new RestRequest();
    request.httpMethod='GET';
    request.requestURI=homeUrl+'/services/apexrest/account/'+acc.Id;

    RestContext.request=request;
    Account objAcc=AccountRestServices.getAcc();
    System.assertEquals(acc.Id, objAcc.Id);
    System.assertEquals(acc.Name, objAcc.name);
    System.assertEquals(acc.Industry, objAcc.Industry);
    
    Test.stopTest();
    }

    @isTest
    public static void deleteAccTest(){
        Test.startTest();
        Account acc=[Select Id, Name, Industry, Phone FROM Account LIMIT 1];
        String homeUrl= System.URL.getSalesforceBaseUrl().toExternalForm();
        RestRequest request= new RestRequest();
        request.httpMethod='DELETE';
        request.requestURI=homeUrl+'/services/apexrest/account'+acc.id;

        RestContext.request=request;
        String status=AccountRestServices.deleteAcc();
        System.assertEquals('Success', status);

        try {
            String failStatus=AccountRestServices.deleteAcc();
            System.assertEquals('Fail', failStatus);
            
        } catch (Exception ex) {
            
        }
        Test.stopTest();

    }

    @isTest
    public static void patchAccTest(){
        Test.startTest();
        Account acc=[Select  Id, Name, Industry, Phone from Account LIMIT 1];
        acc.Industry='Consulting';
        string body=JSON.serialize(acc);
        RestRequest request= new RestRequest();
        request.httpMethod='PATCH';
        request.requestBody=Blob.valueOf(body);

        RestContext.request=request;
        Account objAcc=AccountRestServices.patcAcc();
        system.assertEquals(acc.Industry, objAcc.Industry);




        Test.stopTest();


    }
}