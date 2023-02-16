public with sharing class RestCallouts {
//Endpoint: https://th-apex-http-callout.herokuapp.com/animals
    //Http Method: GET
    //1-0 Prepare HttpRequest and wrap all the necessary data in it
    Public static HttpResponse getAnimals(){
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');
        //2- Prepare Internet
        Http http =  new Http();
        //3- Send the HttpRequest over the internet in order to receive HttpResponce back
        HttpResponse response = http.send(request);
        // 4 Process HttpResponse
        system.debug(response.getStatusCode());
        system.debug(response.getBody());
        return response;

     }
     //Endpoint: https://api.instantwebtools.net/v1/airlines
    //Http Method: GET
     public static HttpResponse getAirlines(){
         //1-0 Prepare HttpRequest and wrap all the necessary data in it
         HttpRequest request = new HttpRequest();
         request.setEndpoint('https://api.instantwebtools.net/v1/airlines');
         request.setMethod('GET');
         //2- Prepare Internet 
         Http http = new Http();

         //3- Send the HttpRequest over the internet in order to receive HttpResponce back
         HttpResponse response = http.send(request);

          // 4 Process HttpResponse
        if(response.getStatusCode()== 200){
            string jsonString= response.getBody();
            system.debug(jsonString);
            // convert the response body into list<airline__c>
            List<AirlineWrapper> wrappers = (list<AirlineWrapper>)JSON.deserialize(jsonString, List<AirlineWrapper>.class);
            // convert the wrappers into list<Airlaine__c>
            list<Airline__c> airlines = new list<Airline__c>();
            for (AirlineWrapper aw : wrappers) {
                if(aw.id!= null && aw.id.length()<3){
                Airline__c airline= new Airline__c();
                airline.Name= aw.id;
                airline.country__c= aw.country;
                airline.established__c=aw.established;
                airline.Head_Quartes__c=aw.head_quaters;
                airline.Logo_URL__c=aw.logo;
                airline.Name__c=aw.name;
                airline.website__c= aw.website;
                airlines.add(airline);
                }
            }
            try{
            insert airlines;
            } catch( Exception ex) {
                System.debug(ex.getMessage());

            }    
        }
        return response;





     }

      //Endpoint: https://api.onlinewebtutorblog.com/employees
      //Http Method: GET

      Public Static HttpResponse getEmployees(){
        //1-0 Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request= new HttpRequest();
        request.setEndpoint('https://api.onlinewebtutorblog.com/employees');
        request.setMethod('GET');
         //2- Prepare Internet
         Http http = new Http();

         //3- Send the HttpRequest over the internet in order to receive HttpResponce back
         HttpResponse response = http.send(request);
         // 4 Process HttpResponse
         if(response.getStatusCode()==200){
            string jsonString = response.getBody();
            system.debug(jsonString);
            // Convert the jsonString into Employee Response class
            //EmployeeResponse empRes=(EmployeeResponse) json.deserialize(jsonString, EmployeeResponse.class);
            EmployeeResponse empRes = (EmployeeResponse)JSON.deserialize(jsonString, EmployeeResponse.class);
            List<EmployeeResponse.EmployeeWrapper> wrappers= empRes.data;
            // Convert each EmployeeWrapper into Employee__c object record
            list<Employee__c> employees= new list<Employee__c>();
            for(EmployeeResponse.EmployeeWrapper wrap : wrappers){
                Employee__c emp= new Employee__c();
                emp.name = string.valueOf(wrap.id);
                emp.Username__c= wrap.username;
                emp.Employee_Name__c=wrap.name;
                emp.Email__c= wrap.email;
                emp.Phone_Number__c= wrap.phone_number;
                emp.Gender__c= wrap.gender;
                emp.Designation__c=wrap.designation;
                emp.Complete_Address__c=wrap.complete_address;
                employees.add(emp);


            }
            try{
                insert employees;
            } catch(Exception ex){
                system.debug(ex.getMessage());
            }
        
        
        }
         return response;

        }
        
        //Endpoint: https://db0000008d1ecmay-dev-ed.develop.my.salesforce.com/services/apexrest/Cases/500B000000AZIHb
        //Http Method: GET
        public static HttpResponse getCasesUsingNC(){
                 //1-0 Prepare HttpRequest and wrap all the necessary data in it
                HttpRequest request = new HttpRequest();
                request.setEndpoint('callout:ikinci_kaynak_karsilik/services/apexrest/Cases/500B000000AZIHb');
                request.setMethod('GET');
                
                //2- Prepare Internet
                 Http http=new Http();

                 //3- Send the HttpRequest over the internet in order to receive HttpResponce back
                 HttpResponse response= http.send(request);
                 
                 // 4 Process HttpResponse 
                 system.debug(response.getStatusCode());
                 system.debug(response.getStatus());
                 system.debug(response.getBody());
                 return response;

        }
        public static HttpResponse get2CasesUsingKam(){
            //1-0 Prepare HttpRequest and wrap all the necessary data in it
            HttpRequest request= new HttpRequest();
            request.setEndpoint('callout:Ucuncu_Named_Credit/services/apexrest/500Do000003Dy8xIAC');
            request.setMethod('GET');
             //2- Prepare Internet

             Http http=new Http();
             //3- Send the HttpRequest over the internet in order to receive HttpResponce back
             HttpResponse response= http.send(request);
                 
             // 4 Process HttpResponse
             system.debug(response.getStatusCode());
                 system.debug(response.getStatus());
                 system.debug(response.getBody());
                 return response;
        }
            //Endpoint: https://th-apex-http-callout.herokuapp.com/animals

             //Http Method: POST

            public static HttpResponse postAnimal(){
                //1-0 Prepare HttpRequest and wrap all the necessary data in it
                HttpRequest request= new HttpRequest();
                request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
                request.setMethod('POST');
                string body='{"name":"mighty moose"}';
                request.setBody(body);
                request.setHeader('Content-Type', 'application/json;charset=UTF-8');

                //2- Prepare Internet
                Http http= new Http();

                //3- Send the HttpRequest over the internet in order to receive HttpResponce back
                HttpResponse response=http.send(request);

                // 4 Process HttpResponse
                if(response.getStatusCode() == 201) {

                    system.debug('Request has been processes succesfully!');

                }else {
                    system.debug('Something went wrong while creating animal information :' +response.getBody());
                }
                return response;
            }
        }

        


