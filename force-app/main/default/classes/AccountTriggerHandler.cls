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
        public static void updateOppStageName(List<account> accTriggerNew) {
          //Set<Id> accId= new set<id>();
          //for( Account acc: acctriggernew){
            //accId.add(acc.Id);

          //}
          // alternatif yontem accId seti where inde kullanilmadan direk accTriggerNew
          List<Opportunity> listOpp= [select id,StageName from Opportunity where AccountId in:accTriggerNew and StageName!='Closed Won'];
          for (opportunity opp : listOpp) {
            opp.StageName= 'Closed Lost';
            
          }
          update listOpp;
          
        }
        /*Whenever an Account phone number is modified, update all the contacts of the Account as
        follows:
        - Contacts otherPhone as Old phone no of account
        - Contacts mobilePhone as New phone no of Account.
        */
        public static void updateContPhone(List<account> accTriggerNew, Map<id, account> accTriggerOldMap, Map<id, account> accTriggerNewMap) {
          Set<Id> accId= new set<id>();
          for( account acc:accTriggerNew){
            if(acc.Phone!= accTriggerOldMap.get(acc.Id).phone){
              accId.add(acc.id);
            }
          }

          
          list<Contact> listCont=[select id, OtherPhone, MobilePhone, AccountId from contact where AccountId in: accId];

          if(!listCont.isEmpty()){
          for( contact cont: listCont){
            cont.OtherPhone=accTriggerOldMap.get(cont.AccountId).phone;
            cont.MobilePhone=accTriggerNewMap.get(cont.AccountId).phone;
          }
          update listCont;
         }

         
        }
        public static void validateAnnualRevenue(List<account> accTriggerNew,Map<id, account> accTriggerOldMap) {
          for(account acc: accTriggerNew){
            if( acc.AnnualRevenue< accTriggerOldMap.get(acc.id).AnnualRevenue && (acc.AnnualRevenue!= null && accTriggerOldMap.get(acc.id).AnnualRevenue!= null)){
              acc.AnnualRevenue.addError('Annual Revenue for an account cannot be reduced');

            }

          }
          
        }

      }

      







        /*1. When the Annual revenue value of an Account is reduced from the previous value then show the
following message:
‘Annual Revenue for an account cannot be reduced’. And do not allow the user to save the record.*/






      

      



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
   

