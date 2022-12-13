trigger AccountTrigger on Account (before insert, before update, after insert, after update ) {

  List<Account> accTriggerNew = trigger.new;

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
  
  
  
  
  
  
}
  
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