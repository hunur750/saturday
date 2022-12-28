@isTest
public class SoqlDemoTurkish12Test {
    @istest
    private static void accountIndustryOfEducationTest() {
        List<Account> listAcc= new List<Account>();
        account acc1= new account();
        acc1.name='Tes1';
        acc1.Industry='Education';
        listAcc.add(acc1);


        Account acc2= new Account();
        acc2.Name='Test2';
        acc2.Industry='Energy';
        listAcc.add(acc2);

        insert listAcc;

        integer sz=SoqlDemoTurkish12.accountIndustryOfEducation('Education');
        system.assertEquals(1,sz );
    }
    @isTest

    private static void dmlInsertDemo() {
        Account acc=new Account();
        acc.Name='Biden';
        insert acc;

        SoqlDemoTurkish12.dmlInsertDemo_4();
        Contact cn=[select id,lastName from Contact where LastName='Biden' limit 1];
        system.assert(cn.LastName=='Biden');
    }
}

.04 g