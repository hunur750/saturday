@istest
public  class Batch12DemoTest {
    @istest
    private static void printWelcomeTest() {
        Batch12Demo.printWelcome();
    }
    @istest
    private static void welcomePersonTest() {
        Batch12Demo.welcomePerson('Enes');
    }
    @istest
    private static void toplamaTest() {
        // integer a = 11;
        // integer b = 22;
        // Batch12Demo.toplama(a, b);
        integer sum = Batch12Demo.toplama(11, 22);
        system.assertEquals(33, sum);
    }
    @istest
    private static void createAccountTest() {
        Batch12Demo.createAccount();
        List<Account> accList = [select id, name from account where name = 'Test'];
        system.assert(accList.size()>0);
        system.assertEquals(1, accList.size());
        system.assertEquals('Test', accList[0].name);
    }
    @istest
    private static void updateAccountTest() {
        account ac = new account();
        ac.Name = 'Salesforce';
        insert ac;
        Batch12Demo.updateAccount();
        account acc = [select id, name from Account where name = 'Salesforce Inc.' limit 1];
        system.assertEquals('Salesforce Inc.', acc.name);
    }
    @istest

    private static void createContactOfAccountTest() {
      Account ac= new Account();
      ac.name='Softinnovas Inc.';
      insert ac;
      Batch12Demo.createContactOfAccount();
      List<Contact> conList=[ select id, lastName from Contact where LastName='Contact'];
      system.assertEquals(1, conList.size());

      
    }
}