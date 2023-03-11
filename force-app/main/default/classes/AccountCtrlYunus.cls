public with sharing class AccountCtrlYunus {
   @AuraEnabled(cacheable=true)
   public static List<Account> topAnnualRevenue(){

    return  [Select Id, Name, Type, AnnualRevenue FROM Account WHERE AnnualRevenue!=  null ORDER BY AnnualRevenue LIMIT 5 ];

}

    @AuraEnabled
    public static Decimal totalAnnualRevenue(){

        List<Account> listAcc= [Select Id, AnnualRevenue from Account WHERE AnnualRevenue!=null];
        Decimal totalAnn=0;
        for( Account acc: listAcc){
            totalAnn+= acc.AnnualRevenue;
        }
        return totalAnn;
        

      
 
    }

   }
