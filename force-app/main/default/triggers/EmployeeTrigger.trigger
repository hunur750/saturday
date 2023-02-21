trigger EmployeeTrigger on Employee__c (after insert) {
   if(Trigger.isAfter&& Trigger.isInsert){
    EmployeeHandler.afterInsert(trigger.new);
   }
}