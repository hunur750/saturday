public with sharing class SoapCallouts12 {
 public static List<String> parksCallouts(string country) {

    ParksServices12.ParksImplPort parkService= new ParksServices12.ParksImplPort();
    String[] parks= parkService.byCountry(country);
    system.debug(country+'ulkesinin parklari=>>>' + parks);
    return parks;
 }
}