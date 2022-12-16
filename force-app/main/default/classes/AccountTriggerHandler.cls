public class AccountTriggerHandler {
    public static void updateAccountDescription(List<Account> accTriggerNew, List<Account> accTriggerold,


map<id, Account> accTriggerOldMap, Map<Id,Account> acctriggerNewMap){
    system.debug(' Befor insert/ update trigger on Account object');
    for( Account eachAcc: accTriggerNew){
      Boolean updateDesc= false;

      if(trigger.isInsert&& eachAcc.Active__c=='Yes'){
        updateDesc=true;

        eachAcc.Description=' Account is now Active.Enjoy celebrate';
      }
      if(trigger.isUpdate){
        // get oldAccoun tvalue---> using oldMap
        // get neeAccount value--> using Newmap
        Id accId=eachAcc.id;


        Account oldAcc=accTriggerOldMap.get(eachAcc.Id);
        Account newAcc= acctriggerNewMap.get(eachAcc.Id);



        if(eachAcc.Active__c=='Yes'&& oldAcc.Active__c!=newAcc.Active__c){
          updateDesc=true;
          eachAcc.Description='Account id now Active.Enjoy and celebrate';
        
        if(updateDesc)
        eachAcc.Description='Account is now Active. enjoy,celebrate,have fun';

        }


      }
    }
  }
  
  



        
    }
   

