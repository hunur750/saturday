trigger ContactTrigger on Contact (before insert, after insert, before update, after update,after delete,after undelete) {
   

   if(trigger.isAfter&&trigger.isUpdate){





















    
   }
/*set<Id> accountIds= new set<Id>();

if(trigger.isAfter){
  if(trigger.isInsert){
    for( Contact c: trigger.new){
        if(c.AccountId!= null){
          accountIds.add(c.AccountId);
        }

    }



  }
if(trigger.isUpdate){
  for(Contact c: trigger.new){
      if(c.AccountId!=trigger.oldmap.get(c.id).AccountId){
        accountIds.add(c.AccountId);
        
        accountIds.add(trigger.oldMap.get(c.id).AccountId);


      }



  }


    
  }
  if(trigger.isDelete){
    for(contact c :trigger.old){
      if( c.AccountId!= trigger.oldmap.get(c.id).AccountId){
        accountIds.add(c.AccountId);
        accountIds.add(trigger.oldMap.get(c.id).AccountId);

      }


    }


    if(!accountIds.isEmpty()){

      List<Account> acclist=[select id,name, Number_Of_Contact__c, (SELECT id from Contacts) from Account where Id in: accountIds];

      for( Account acc: acclist){
        acc.Number_Of_Contact__c= acc.Contacts.size();



      }


    }
    update.
  }
  

}

*/











}
  /*if(trigger.isBefore&& trigger.isInsert){
    List<Contact> list1= trigger.new;
    System.debug( 'trigger new ='+ list1);
    System.debug( 'record sayisi = '+ list1.size());
    for( Contact c:list1){
      System.debug( 'first name='+ c.FirstName);
      System.debug(' last name ='+c.LastName);
      system.debug( 'is'+c.Id);
      System.debug( 'account id'+c.Account.Id);

    }


  }
  
   if(trigger.isAfter&& trigger.isInsert){
    List<Contact> list2= trigger.new;
    System.debug( 'trigger new ='+ list2);
    System.debug( 'record sayisi = '+ list2.size());
    for( Contact c:list2){
      System.debug( 'first name='+ c.FirstName);
      System.debug(' last name ='+c.LastName);
      system.debug( 'is'+c.Id);
      System.debug( 'account id'+c.Account.Id);
      
    }


    
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}*/
  
  /*if (Trigger.isBefore) {
       if (Trigger.isUpdate) {
           system.debug('we are in Before update trigger');
           ContactTriggerHandler.updateContactValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
           ContactTriggerHandler.updateContactValidation2(Trigger.new, Trigger.old, Trigger.NewMap, Trigger.OldMap);
       
         }
   }
   */
