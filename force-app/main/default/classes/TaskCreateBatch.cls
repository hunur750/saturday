public  class TaskCreateBatch implements Database.Batchable<SObject>, Database.stateful {
    public integer totalNumber=0;
    public database.QueryLocator  start(Database.BatchableContext bc) {
        database.QueryLocator query= database.getQueryLocator([select Id, status,OwnerId, LastModifiedDate from case where Status!='Closed' and        LastModifiedDate< LAST_N_DAYS:5]);
        return query;
      
    }
    public void execute(Database.BatchableContext bc, List<case> caseList){
        list<Task> listTask= new List<Task>();
        for( case cs: caseList){
            task ts= new task();
            ts.Subject=system.label.TaskSubject;                //'Critical action needed';
            ts.ActivityDate=Date.today().addDays(2);
            ts.Description=system.label.TaskDescription;
            //ts.Description='Complete fast';
            ts.WhatId=cs.Id;
            ts.OwnerId=cs.OwnerId;
            ts.Status='In Progress';
            listTask.add(ts);
            totalNumber++;
         }
         if(!listTask.isEmpty()){
            insert listTask;
         }

    
    }
    public void finish(Database.BatchableContext bc){
        system.debug('Total number of created tasks: ' + totalNumber);
     
    }
}
  

