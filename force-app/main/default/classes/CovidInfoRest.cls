public  class CovidInfoRest {
    public static HttpResponse getCovidInfo(){

        HttpRequest request= new HttpRequest();
        request.setEndpoint('https://api.covidtracking.com/v1/us/current.json');
        request.setMethod('GET');

        Http hp= new Http();

        HttpResponse response= hp.send(request);


        if(response.getStatusCode()==200){
            String jsonString= response.getBody();
            List<CovidInfoWrapper> covidWrapper= (List<CovidInfoWrapper>)JSON.deserialize(jsonString,  List<CovidInfoWrapper>.class);
            CovidInfoWrapper wrp = covidWrapper[0];
            list<Covid_Info__c> dateCheckList=[select id, name, Negative__c,Positive__c, Pending__c from Covid_Info__c where Date__c = TODAY   ];
            List<Covid_Info__c> covList= new List<Covid_Info__c>();

            if(!dateCheckList.isEmpty()){ 
                // soql dan gelen bilgi update ediliyor
                dateCheckList[0].Name=string.valueOf(wrp.states);
                dateCheckList[0].Negative__c=wrp.negative;
                dateCheckList[0].Positive__c=wrp.positive;
                dateCheckList[0].Pending__c=wrp.pending;
                covList.add(dateCheckList[0]);

            } else {
                //jsondan gelen bilgiyi kaydediyoruz
                Covid_Info__c c1= new Covid_Info__c();
                c1.Name=string.valueOf(wrp.states);
                c1.Negative__c=wrp.negative;
                c1.Positive__c=wrp.positive;
                c1.Pending__c=wrp.pending;
                c1.Date__c=date.today();
                covList.add(c1);
            }

            upsert covList;
            
        }
        
        return response;

    }
    //Endpoint:https://gorest.co.in/public/v2/posts
    public static HttpResponse postPosInfo() {

        HttpRequest request= new HttpRequest();
        request.setEndpoint('https://gorest.co.in/public/v2/posts');
        request.setMethod('POST');

        Postu__c listPost= [select Id, User_ID__c, Title__c, Body__c from Postu__c where CreatedDate = today Limit 1];
        PostWrapper wrap= new PostWrapper();
        wrap.user_id = integer.valueOf(listPost.User_ID__c);
        wrap.title=listPost .Title__c;
        wrap.body=listPost.Body__c;
        string wrapperBody= Json.serialize(wrap);
        request.setBody(wrapperBody);
        // request.setBody(Json.serialize(wrap)) da yazabiliriz 
        request.setHeader('Content-Type', 'application/json');
        request.setHeader('Authorization', 'Bearer 97605e7a5fe860a0843078b7caa6fecee1b05d031f04d38afb9b8cbc06615c1c');


        Http http= new Http();

        HttpResponse response=http.send(request);

        if(response.getStatusCode()==201){
            system.debug(response.getBody());


        } else {
            System.debug('Error');
        }
        
        return response;






    }

    public class PostWrapper{
        public integer user_id;
        public string title;
        public  string body;
    }

}