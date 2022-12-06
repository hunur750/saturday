public class AccountUtility {
    public static void viewAnnualRevenue(){
        List<Account> accountList= [SELECT  Name, AnnualRevenue FROM Account];
        for(Account acc: accountlist ){
            string acctRev = 'name' +acc.Name+' : '+ 'annual revenue '+ acc.AnnualRevenue;
            system.debug(acctRev);
  

    }
}
}