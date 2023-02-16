@isTest
public  class RestApiOutboundCallout12MockTest {
   @istest
    private static void getCountryFlagTest() {
        // 1- mock create ediyoruz olusturdugumuz mock clasindan
        GetFlagCountry12CalloutMock mock= new GetFlagCountry12CalloutMock();
        Test.setMock(HttpCalloutMock.class, mock);


        //- Test ediyoruz
        HttpResponse response=CountryFlags12.getCountries();
        
        //3- Assert ile kontrol..
        System.assertEquals(200, response.getStatusCode());
        System.assertEquals('OK', response.getStatus());
    }
 
}