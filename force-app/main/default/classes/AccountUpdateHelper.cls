public class AccountUpdateHelper {
    @invocableMethod
    public static void updateAccountwebSite(list<Id> accIds) {
        List<Account> listAcc= [select id, website from Account where id in: accIds];

        for( Account eachAcc: listAcc){
            eachAcc.Website=' www.softinnovas.com';
        }
        update listAcc;
    }

 
}
