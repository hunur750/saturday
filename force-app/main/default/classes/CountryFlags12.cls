public  class CountryFlags12 {
    public static HttpResponse getCountries() {
        //1
        HttpRequest Request = new HttpRequest();
        Request.setEndpoint('https://restcountries.com/v2/all');
        Request.setMethod('GET');

        //2
        Http ht = new Http();
        HttpResponse Response = ht.send(request);

        //3
        if (Response.getStatusCode() == 200) {
            String jsonData = Response.getBody();
            List<wrapperCountryFlag> listWrapper = (List<wrapperCountryFlag>)JSON.deserialize(jsonData, List<wrapperCountryFlag>.Class); 

            //Bos bir Orgumuzdaki objemize ait bir liste olusturuyorum..
            List<Country_Flag__c> listCountry = new List<Country_Flag__c>();

            for (wrapperCountryFlag eachWrapper : listWrapper) {
                Country_Flag__c obj = new Country_Flag__c();
                obj.Name = eachWrapper.name;
                obj.Native_Name__c = eachWrapper.nativeName;
                obj.Population__c = eachWrapper.population;
                obj.Capital__c = eachWrapper.capital;
                obj.Flag_URL__c = eachWrapper.flags.svg; 
                obj.Region__c = eachWrapper.region;
                
                listCountry.add(obj);
            }
            insert listCountry;

        }
        return Response;
    }

    public class wrapperCountryFlag{
        public string name;
        public string nativeName;
        public integer population;
        public string capital;
        public string region;
        public flagsWrapper flags;
    }

    public class flagsWrapper{
        public string svg;
    }
}










