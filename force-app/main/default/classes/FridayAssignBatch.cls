public  class FridayAssignBatch implements Database.Batchable<SObject>, Database.stateful {
    public integer totalNumber=0;
    public Database.QueryLocator  start(Database.BatchableContext bc) {
        // collect the batches of records or objects to be passed to execute
        Database.QueryLocator query=database.getQueryLocator([select id, name, stageName from opportunity where stageName ='Closed Lost']);
        return query;

    }
    public void execute(Database.BatchableContext bc, List<Opportunity> oppList){
        // process each batch of records
        if(!oppList.isEmpty()){
            totalNumber+=oppList.size();
            delete oppList;
        }
      
        }
    
    public void finish(Database.BatchableContext bc){
        // execute any post-processing operations
        system.debug('Total number of deleted records : '+ totalNumber);




    }

}