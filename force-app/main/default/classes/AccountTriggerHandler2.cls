public  class AccountTriggerHandler2 {
    public static void updateName( List<Account> triggerNew, Map<Id,Account> triggerOldmap) {
        for( Account acc:triggerNew){
            if( acc.name!=triggerOldmap.get(acc.Id).Name){
              acc.Description = 'Bu recordda isim degisikligi oldu..';
            
          
            }
          }
        
    }

}
