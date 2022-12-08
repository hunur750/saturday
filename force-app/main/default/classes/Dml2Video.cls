public  class Dml2Video {
    public static Id createAccount() {
        Account acc= new Account();
        acc.Name='Supr';
        insert acc;

        return acc.Id;
        

        
    }

    public  static void createContact() {
        createAccount();
        Contact c= new Contact();
        c.LastName='Daily';
        c.AccountId= createAccount();
        
        insert c;

    }






}
