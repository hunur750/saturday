@isTest
public class SoqlDemo22Test {
@TestSetup// we have some accountd in testSetup
static void makeData(){
     //1. prepare data
     Account acc1 = new account();
     acc1.Name = 'SI Test';
     acc1.Industry = 'Energy';

     Account acc2 = new account();
     acc2.Name = 'UI Test';
     acc2.Industry = 'Energy';

     Account acc3 = new account();
     acc3.Name = 'PI Test';
     acc3.Industry = 'Banking';

     List<account> listAcc = new list<account>{acc1, acc2, acc3};
     insert listAcc;

     List<contact> listContact = new list<Contact>();
     for (Integer i = 0; i < 300; i++) {
         contact c = new contact();
         c.Lastname = 'test soql';
         if (i < 100) {
             c.AccountId = acc1.id;
         } else if (i < 200) {
             c.AccountId = acc2.id;
         } else {
             c.AccountId = acc3.id;
         }
         listContact.add(c);
     }
     insert listContact;
    
}

@isTest

private static void testMethod1() {
    Account acc1 = new account();
        acc1.Name = 'SI Test';
        acc1.Industry = 'Energy';

        Account acc2 = new account();
        acc2.Name = 'UI Test';
        acc2.Industry = 'Energy';

        Account acc3 = new account();
        acc3.Name = 'PI Test';
        acc3.Industry = 'Banking';

        List<account> listAcc = new list<account>{acc1, acc2, acc3};
        insert listAcc;

        List<contact> listContact = new list<Contact>();
        for (Integer i = 0; i < 300; i++) {
            contact c = new contact();
            c.lastname = 'test soql';
            if (i < 100) {
                c.AccountId = acc1.id;
            } else if (i < 200) {
                c.AccountId = acc2.id;
            } else {
                c.AccountId = acc3.id;
            }
            listContact.add(c);
        }
        insert listContact;
        test.startTest();
        SoqlDemo22.soqlChildToParent_1();

        test.stopTest();
    
    }
    @isTest
       private static void testMethod2() {
        list<account> lisstAcc= [select id, name from Account];
        for( Account eachAcc: lisstAcc){
            eachAcc.Type='Customer - Direct';

        }
        update lisstAcc;

        List<Opportunity> listOpp= new List<Opportunity>();
        for( integer i=0; i<300; i++){
            Opportunity op= new Opportunity();
            op.Name='Test Opp';
            op.stagename= 'Closed Won';
            op.CloseDate=date.today();
            if(i<100){
                op.AccountId=lisstAcc[0].Id;

            }else if (i<200){
                op.AccountId=lisstAcc[1].Id;


            }else{
                op.AccountId=lisstAcc[2].Id;
            }
            listOpp.add(op);



            }
            insert listOpp;
            test.startTest();
            SoqlDemo22.soqlParentToChild_1();
            test.stopTest();


        }
        
    }
    














