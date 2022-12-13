trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {
 if( Trigger.isBefore){
    system.debug( 'You are in before trigger.Not even saved');


 
 if( Trigger.isInsert){
    system.debug('we are in Before Insert Trigger');
 }

 if( Trigger.isUpdate){
    system.debug('we are in Update Insert Trigger');
 }
}

 if( Trigger.isAfter){
    system.debug('we are in After  Trigger');
 

 if( Trigger.isInsert){
    system.debug('we are in After Insert Trigger');
 }

 if( Trigger.isUpdate){
    system.debug('we are in After Update Trigger');
 }
}


}