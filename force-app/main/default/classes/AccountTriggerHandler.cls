public class AccountTriggerHandler {

    public static void updateVIPforContacts(List<account> accTriggerNew, List<account> accTriggerOld, 
     Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap) {

      set<id> accountIds= new set<Id>();
        for( Account eachAcc: accTriggerNew){
          if(eachAcc.vip__c!= accTriggerOldMap.get(eachAcc.Id).vip__c){

          accountIds.add(eachAcc.Id);

          }

        }
      List<Contact> allContacts=[select id, vip__c, accountId from contact where AccountId in : accountIds];
      for( Contact eachContact: allContacts){

        account newAcc= accTriggerNewMap.get(eachContact.AccountId);
        Boolean accVIP= newAcc.vip__c;
        eachContact.vip__c=accVIP;
      }
      update allContacts;
      

        }
      }

      



        //10 accounts
            //4 acc updated vip fields
            //6 acc updated other fields
        
            //set of account ids
        //for trigger.new
            //check if vip is changed (if condition)
               //add acc id in set of accountids
        
        //we have all acc ids where is vip is changed

        //get contacts of all the accounts where vip is changed. 
        //10 contacts

        //for loop of contact
            //set vip field same as account's vip field
        
        //update contacts



    
  





    /*public static void updateAccountDescription(List<Account> accTriggerNew, List<Account> accTriggerold,


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
  
  



        
    }*/
   

