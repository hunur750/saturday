@RestResource(urlMapping='/Contact/*')
global with sharing class ContactManager {
    @HttpGet
    global static Contact getContact() {
        RestRequest request=RestContext.request;
        String uri=request.requestURI;
        Id conId=uri.substringAfterLast('/');
        Contact con=[select Id, firstName, LastName, Title, Email, Department from contact where Id=:conId];
        return con;
    }
    @HttpPost
    global static Contact postContact(String firstName, String lName, String Title, String Email, String Department) {
        Contact con= new Contact();
        con.FirstName=firstName;
        con.LastName=lName;
        con.Title=Title;
        con.Email=Email;
        con.Department=Department;
        insert con;
        return con;
        
    }
    @HttpDelete
    global static void deleteContact() {
        RestRequest request=RestContext.request;
        System.debug(request);
        String uri=request.requestURI;
        Id conId=uri.substringAfterLast('/');
        Contact con=[select Id from contact where Id=:conId];
        delete con;
        
    }
    @HttpPut
    global static Contact putContact(String Id, String FirstName, String LastName, String Title, String Email, String Department) {
        Contact con= new Contact();
        con.Id=Id;
        con.FirstName=FirstName;
        con.LastName=LastName;
        con.Title=Title;
        con.Email=Email;
        con.Department=Department;
        upsert con;
        return con;
        
    }
    @HttpPatch
    global static Contact patchContact() {
        RestRequest request=RestContext.request;
        System.debug(request);
        String jsonString=request.requestBody.toString();
        Contact con =(Contact)JSON.deserialize(jsonString, Contact.class);
        update con;
        Contact conNew=[select Id, FirstName, LastName, Title from Contact where Id=:con.Id];
        return conNew;
        
    }
}