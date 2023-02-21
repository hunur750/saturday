public with sharing class EmployeeHandler {
    public static void afterInsert(list<Employee__c> triggerNew) {
        for(Employee__c emp : triggerNew){
            RestCalloutSundayAssign.postEmployee(emp.Id);
        }
        
    }
}