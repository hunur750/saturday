public with sharing class RestCalloutSundayAssign {
    @future(Callout=True)
    public static void postEmployee(Id employeeId) {
        Employee__c employee=[select Name, Complete_Address__c, Designation__c, Email__c, Gendeer__c, Phone_Number__c, UserName__c, Integration_Status__c  from Employee__c where Id=:employeeId];

        EmployeeWrapper wrap= new EmployeeWrapper();
        wrap.name=employee.Name;
        wrap.designation=  employee.Designation__c;
        wrap.complete_address=employee.Complete_Address__c;
        wrap.gender= employee.Gendeer__c;
        wrap.phone_number=employee.Phone_Number__c;
        wrap.username=employee.UserName__c;
        wrap.email=employee.Email__c;
        
        String body=JSON.serialize(wrap);
        
        Http httpObject = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.onlinewebtutorblog.com/employees');
        request.setMethod('POST');
        request.setBody(body);
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        


        HttpResponse response = httpObject.send(request);
        String responseBody = response.getBody();
        employee.Integration_Status__c=responseBody;

        update employee;
        
        
    }
    
}