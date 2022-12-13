trigger OppTrigger on Opportunity (before insert, before update, after insert, after update) {
if(trigger.isBefore&& trigger.isInsert){

    for (opportunity opp1 : trigger.new) {
        system.debug(opp1.StageName+' '+ opp1.Description+' '+ opp1.Name
        );
        system.debug((trigger.new).size());
        
    }
}























    /*List<Opportunity> opp= trigger.new;
if(trigger.isBefore&& trigger.isInsert){
    for( Opportunity opp1: opp){
        System.debug('opportunity name is '+opp1.Name+ opp1.CloseDate+' '+opp1.Amount);

    }
    system.debug(opp.size());


}
*/
}