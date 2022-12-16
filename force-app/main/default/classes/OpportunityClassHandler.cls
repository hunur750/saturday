public  class OpportunityClassHandler {
    public static void printUpdateTrigger( map<id, Opportunity> oldMapTrig ,List<Opportunity> triggerNew) {
        
            
            for( Opportunity eachOpp:triggerNew){
                system.debug('new amount is '+ eachOpp.Amount+' old amount is '+ oldMapTrig .get(eachOpp.id).amount);
                system.debug( ' new name is '+ eachOpp.Name+ ' old name is '+ oldMapTrig .get(eachOpp.id).Name);
        
            }
        
        
        
        
         
    }
  
}
