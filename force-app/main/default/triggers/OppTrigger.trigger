trigger OppTrigger on Opportunity (before insert, before update, after insert, after update) {


if( trigger.isBefore && trigger.isUpdate){
OpportunityClassHandler.printUpdateTrigger(trigger.oldMap, trigger.New);
}

















}



/*if( trigger.isBefore&& trigger.isInsert){
    system.debug('=====Before trigger tetiklend======');
    System.debug(' Trigger new '+ trigger.new);
    System.debug(' Trigger old '+ trigger.old);
    System.debug(' Trigger new map '+ trigger.newMap);
    System.debug(' Trigger old Map '+ trigger.oldMap);
}

if( trigger.isAfter&& trigger.isInsert){
    system.debug('=====Before trigger tetiklend======');
    System.debug(' Trigger new '+ trigger.new);
    System.debug(' Trigger old '+ trigger.old);
    System.debug(' Trigger new map '+ trigger.newMap);
    System.debug(' Trigger old Map '+ trigger.oldMap);
}

if( trigger.isBefore&& trigger.isUpdate){
    system.debug('=====Before trigger tetiklend======');
    System.debug(' Trigger new '+ trigger.new);
    System.debug(' Trigger old '+ trigger.old);
    System.debug(' Trigger new map '+ trigger.newMap);
    System.debug(' Trigger old Map '+ trigger.oldMap);
}

if( trigger.isAfter&& trigger.isUpdate){
    system.debug('=====Before trigger tetiklend======');
    System.debug(' Trigger new '+ trigger.new);
    System.debug(' Trigger old '+ trigger.old);
    System.debug(' Trigger new map '+ trigger.newMap);
    System.debug(' Trigger old Map '+ trigger.oldMap);
}







    System.debug('==============END=======');





















}*/


















    /*if(trigger.isBefore&& trigger.isInsert){

    for (opportunity opp1 : trigger.new) {
        system.debug(opp1.StageName+' '+ opp1.Description+' '+ opp1.Name
        );
        system.debug((trigger.new).size());
        
    }
}
*/






















    /*List<Opportunity> opp= trigger.new;
if(trigger.isBefore&& trigger.isInsert){
    for( Opportunity opp1: opp){
        System.debug('opportunity name is '+opp1.Name+ opp1.CloseDate+' '+opp1.Amount);

    }
    system.debug(opp.size());


}
*/
