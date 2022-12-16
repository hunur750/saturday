trigger AccountTrigger on Account (before insert, before update, after insert, after update ) {
  
if( trigger.isAfter&& trigger.isInsert){
  List<Contact> conList= new List<Contact>();
  for( Account acc: trigger.new){
    for( integer i=1; i<=7;i++){
      contact c= new contact();
      c.FirstName=acc.Name;
      c.LastName='Contact' +i;
      c.AccountId=acc.Id;
      conlist.add(c);
    }



  }

insert conList;





}
if(trigger.isBefore&& trigger.isUpdate){

  AccountTriggerHandler2.updateName(trigger.new, trigger.oldMap);
}




}
























  
  /*if(trigger.isBefore){
    AccountTriggerHandler.updateAccountDescription(trigger.new,trigger.old,trigger.oldMap,trigger.newMap);
    
}
  
}*/
  
  

  
  /*Map<Id,Account> accTriggerNewMap = trigger.newMap;
  Map<Id,Account> accTriggeroldMap= trigger.oldMap;
  List<Account> accNewList=trigger.new;
  List<Account> accOldList=trigger.old;
  // keys means ids of newMap and oldMp are same ( for update ) ofcourse


  if(trigger.isAfter&& trigger.isUpdate){
    set<id> accIds= accTriggerNewMap.keySet();

    for( Id eachId: accIds){
      system.debug(' each id is '+eachId);
      Account newAccount= accTriggerNewMap.get(eachId);
      system.debug( 'newAccountName is '+newAccount.Name);
      string newWebsite= newAccount.Website;

      Account oldAccount = accTriggeroldMap.get(eachId);
      system.debug( 'oldAccountName is '+oldAccount.Name);
      string oldWebsite=oldAccount.Website;
      
      if(newWebsite!=oldWebsite){

        system.debug( 'Account '+ newAccount.Name + 'new web site is '+newAccount.Website);
        
      }
      

    }
    //for each loop of set 
    // get value od Id from new map
    // get 










  }*/

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  /*if( trigger.isBefore&& trigger.isInsert){

    system.debug( 'before insert trigger new  '+ accNewList);
    system.debug(' before insert trigger old  '+  accOldList);

    system.debug( 'before insert trigger new map '+ accTriggerNewMap);
    system.debug(' before insert trigger old map '+  accTriggeroldMap);

  }
  if( trigger.isAfter&& trigger.isInsert){
    system.debug( 'after insert trigger new  '+ accNewList);
    system.debug(' after insert trigger old '+  accOldList);

    system.debug( 'after insert trigger new map '+ accTriggerNewMap);
    system.debug(' after insert trigger old map '+  accTriggeroldMap);
    
  }
  if( trigger.isBefore&& trigger.isUpdate){
    system.debug( 'before updaate trigger new  '+ accNewList);
    system.debug(' befgore update trigger old  '+  accOldList);


    system.debug( 'before updaate trigger new map '+ accTriggerNewMap);
    system.debug(' befgore update trigger old map '+  accTriggeroldMap);
    
  }
  if( trigger.isAfter&& trigger.isUpdate){

    system.debug( 'after update trigger new  '+ accNewList);
    system.debug(' after update trigger old  '+  accOldList);

    system.debug( 'after update trigger new map '+ accTriggerNewMap);
    system.debug(' after update trigger old map '+  accTriggeroldMap);
    
  }






















}*/




  /*if (trigger.isAfter&&Trigger.isUpdate) {

    List<Account> accTriggerOld = trigger.old;

    for(Account oldAcc: accTriggerOld){

      system.debug(' old acc id is '+oldAcc.id +' old acc name is '+oldAcc.Name );
    }
    
  

    List<Account> accTriggerNew = trigger.new;

    for(Account newAcc: accTriggerNew){

      system.debug(' new acc id is '+newAcc.id +' new acc name is '+newAcc.Name );
    }
    
  }







}
*/








  /*if (trigger.isBefore&& trigger.isInsert) {
    system.debug('before insert trigger.old is '+trigger.old);// null
  }
    if (trigger.isAfter&& trigger.isInsert) {
    system.debug('after insert trigger.old is '+trigger.old);// null
    }

    if (trigger.isBefore&& trigger.isUpdate) {
      system.debug('before insert trigger.old is '+trigger.old);// 
    }
      if (trigger.isAfter&& trigger.isUpdate) {
      system.debug('after insert trigger.old is '+trigger.old);// 
      }
  
  
  
  }*/
  
  /*List<Account> accTriggerNew = trigger.new;

  if(Trigger.isBefore&& Trigger.isInsert){
    system.debug( 'record is before insert :'+accTriggerNew);
    System.debug('Before of records inserted'+ accTriggerNew.size());
    for(account eachAcc : accTriggerNew) {
      System.debug( '  before acc id is '+ eachAcc.id + ' , before acc name is '+ eachAcc.Name);

    }





  } if(Trigger.isAfter&& Trigger.isInsert){
    system.debug( 'record is after insert :'+accTriggerNew);
    System.debug('3 of records inserted'+ accTriggerNew.size());
    for(account eachAcc : accTriggerNew) {
      System.debug( ' acc id is '+ eachAcc.id + ' , acc name is '+ eachAcc.Name);

    }

   
  
  
  }
  if(Trigger.isBefore&& Trigger.isupdate){
    system.debug( ' before record is before update :'+accTriggerNew);
    System.debug('Before of records updated'+ accTriggerNew.size());
    for(account eachAcc : accTriggerNew) {
      System.debug( '  before acc id is '+ eachAcc.id + ' , before acc name is '+ eachAcc.Name);

    }





  } if(Trigger.isAfter&& Trigger.isupdate){
    system.debug( 'record is after update :'+accTriggerNew);
    System.debug('3 of records updated'+ accTriggerNew.size());
    for(account eachAcc : accTriggerNew) {
      System.debug( ' acc id is '+ eachAcc.id + ' , acc name is '+ eachAcc.Name);

    }

   
  
  
  }
  
  
  
  
  
  
}*/
  
  /*
 if( Trigger.isBefore && Trigger.isUpdate ){

    System.debug(' account Befoe Update trigger called');
 }   
  if(Trigger.isAfter&& Trigger.isUpdate){

    system.debug(' account After update trigger called. yihhuuu');

  } 
}
   
   
   
   
   
   
   
   
   
    /* if(trigger.isInsert){
        system.debug(' account before insert trigger callde');

    }

    if(Trigger.isUpdate){
        system.debug('account is updated');
    }



    /*if(Trigger.isBefore){

    system.debug(' account before insert trigger called');
    }
    if(Trigger.isAfter){
    system.debug(' account after insert trigger called');

    }

}*/