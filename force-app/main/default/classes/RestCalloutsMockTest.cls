
@isTest
public with sharing class RestCalloutsMockTest {
    @isTest 
    private static void getAnimalsTest(){
        //1. Set the mock
        RestCalloutsMock mock= new RestCalloutsMock();
        test.setMock(HttpCalloutMock.class, mock);
        //2. Test the mock
        HttpResponse response = RestCallouts.getAnimals();

        // 3. Run asserts
        system.assertEquals(200, response.getStatusCode());
        system.assertEquals('OK', response.getStatus());
        
    }

    @isTest
    private static void getAirlinesTest(){
       //1 set the mock
        RestCalloutsMock mock= new RestCalloutsMock();
        test.setMock(HttpCalloutMock.class, mock);
        HttpResponse response=RestCallouts.getAirlines();
        system.assertEquals(200, response.getStatusCode());
        system.assertEquals('OK', response.getStatus());
    }
    @isTest

    private static void getEmployeesTest(){
        RestCalloutsMock mock= new RestCalloutsMock();
        test.setMock(HttpCalloutMock.class, mock);
        HttpResponse response=RestCallouts.getEmployees();
        system.assertEquals(200, response.getStatusCode());
        system.assertEquals('OK', response.getStatus());
    }
}
