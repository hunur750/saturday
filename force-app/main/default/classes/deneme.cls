public class deneme implements Database.Batchable<SObject>, Database.stateful{
    public integer recordProcess=0;
    public Database.QueryLocator start(Database.BatchableContext BC){

        return Database.getQueryLocator('select id, Rating from account ');
    }
    
    public void execute( database.BatchableContext BC, List<account> acList){
    // codelar buraya yazilacak
        for( Account ac: acList){

            if(ac.Rating!= 'Cold'){
                ac.Rating='Cold';
                recordProcess+=1;
            }
            update acList;
        }

    }

    public void finish (Database.BatchableContext BC){
        system.debug(recordProcess+'Account has been updated');

        //tum batchler bitince buraya yazilacak.
    }


}