public class BatchApex12 implements Database.Batchable<SObject> {
    // tum accountlarin iimlerinin sonuna batch 12 ekleyelim

    // start tum data buraya cagrilir ve return edilir execute metoduna
    public Database.QueryLocator start( Database.BatchableContext bc){
        string query='Select id, name from acount';
        return Database.getQueryLocator(query);
    }
    //execute : belirlenen sayilarla recordlarla parca parca islenen islem yapilir
    public void execute( Database.BatchableContext bc,List<Acoount> scope){
        for (account ac : scope) {
            ac.name+ac.name+'batch 12';
        }
        update scope;
    }


    // finish : tum islem bittiginde 1 kere calisir... mesaj veya mail atabilirsiniz.
    public void finish( Database.BatchableContext bc){
    system.debug('Islem bitti');
    AsyncApexJob a =[select id, Status, NumberOfErrors,JobItemsProcessed,TotalJobItems, CreatedBy.email from AsyncApexJob where id =:bc.getJobId()]
}
}