@istest
public  class AccountTriggerHandlerTest {
    Account acc1 = new account();
    acc1.Name = 'SI Test';
    acc1.Industry = 'Energy';

    Account acc2 = new account();
    acc2.Name = 'UI Test';
    acc2.Industry = 'Energy';
    acc2.Active__c='Yes';

    Account acc3 = new account();
    acc3.Name = 'PI Test';
    acc3.Industry = 'Banking';

    List<account> listAcc = new list<account>{acc1, acc2, acc3};
    insert listAcc;

    account checkInsertYes=[ select id, name, active_c, description from Account where id in: acc.id];
    system.assertEquals(' Account is now active')
}
