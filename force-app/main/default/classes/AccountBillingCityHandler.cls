public  class AccountBillingCityHandler {
    public static void updateBillCity(List<account> accTriggerNew, List<account> accTriggerOld, 
    Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap) {
        set<Id> accId= new set<Id>();
        for(Account eachAccBill: accTriggerNew){

            if( eachAccBill.BillingCity!=accTriggerOldMap.get(eachAccBill.id).BillingCity){

                accId.add(eachAccBill.id);
            }
        }
        List<Contact> allCon=[select id,mailingCity, Account.Id from contact where AccountId in: accId ];
        for ( contact eachCon:allCon){
          eachCon.MailingCity=accTriggerNewMap.get(eachCon.Account.Id).BillingCity;

        }
        update allCon;
        
    }
}
