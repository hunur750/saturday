public class Batch12Demo {
    public static void printWelcome() {
        System.debug('Hosgeldiniz..');
    }
    public static void welcomePerson(string nm) {
        System.debug('Hosgeldiniz ' + nm);
    }
    public static integer toplama(integer a, integer b) {
        // integer sum = a + b;
        // return sum;
        return a + b;
    }
    public static void createAccount() {
        Account acc = new Account();
        acc.Name = 'Test';
        insert acc;
    }
    public static void updateAccount() {
        account acc = [select id, name from account where name = 'Salesforce' limit 1];

        acc.name = 'Salesforce Inc.';
        update acc;
    }
    public static void createContactOfAccount() {
        Account acc= [select id, name from Account where name='Softinnovas Inc.' LIMIT 1];

        Contact con=new Contact();
        con.LastName='Contact';
        con.AccountId=acc.id;
        insert con;
        
        
    }

}