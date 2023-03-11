public with sharing class EmployeeCtrl {
   
    @AuraEnabled
    public static List<Employee__c>  searchEmployees(String searchKey) {
        searchKey = '%' + searchKey + '%';
        return  [SELECT  Name , Designation__c, Email__c
        FROM Employee__c
        WHERE Name LIKE :searchKey
        ];
    }

}