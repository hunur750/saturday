
@istest
public class AccountsBatchTest {
    @istest

    private static void testBatch1() {
        List<Account> listAcc= new List<Account>();
        for( integer i=0; i<900; i++){
            account a =new Account();
            a.Name= 'Pi test'+ i;
            a.Active__c='Yes';
            listAcc.add(a);
        }
        insert listAcc;

        test.startTest();
        AccountsBatch ab= new AccountsBatch();
        Id jobId=Database.executeBatch(ab,900);
        test.stopTest();

        list<Account> getAllAaccounts=[ select Id ,description from Account];
        system.assert(getAllAaccounts[0].Description.contains('batch'));
        
    }
 
}
