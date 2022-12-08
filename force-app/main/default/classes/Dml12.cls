public  class Dml12 {
    
    // metodumuz 5 tane account create etsin sonra her accounta bagli 5 tanede contact create etsin ...
    public static void createAccountAndContacts(){
       list<account>  newAcc= new list<Account>();
       for( integer i=1; i<6; i++){
        Account acc1= new Account();
        acc1.name='Hayri'+I;
        insert newAcc;
       }
       if(!newAcc.isEmpty()){
        insert newAcc;
        system.debug(' 5 tane account basarili bur sekilde create edildi..');

       }


       List<Contact> conList = new List<Contact>();
       

       for( Account acc:newAcc){
        for( integer i=1; i<6;i++){
        contact con= new contact();
        con.FirstName=acc.Name;
        con.LastName='Berk';
        con.AccountId=acc.Id;
        conList.add(con);
        }
        if(!conList.isEmpty()){
            insert conList;
       

        }

       }

    }

 
}