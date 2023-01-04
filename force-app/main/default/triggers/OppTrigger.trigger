trigger OppTrigger on Opportunity (before insert, before update, after insert, after update, after delete, after undelete) {
    
    Set<Id> accId= new Set<Id>();
    
    if(trigger.isAfter){

       

        if(trigger.isInsert|| trigger.isUndelete){
            for (opportunity oppEach : trigger.new) {
                if( oppEach.AccountId!=null){
                    accId.add(oppEach.AccountId);
                }

            }
        }

        if(trigger.isUpdate){
            for (opportunity oppEach : trigger.new ) {
                Opportunity oldOpp= Trigger.oldMap.get(oppEach.id);
                if(oppEach.AccountId!=null&&(oppEach.Amount!=oldOpp.Amount|| oppEach.StageName!=oldOpp.StageName||oppEach.AccountId!=oldOpp.AccountId)){
                    accId.add(oppEach.AccountId);
                    accId.add(oldOpp.AccountId);
                    
                }
                
            }
        }
        if(trigger.isDelete){
            for (opportunity oppEach : trigger.old) {
                if(oppEach.AccountId!=null){
                    accId.add(oppEach.AccountId);
                }
                
            }
        }
    }
        if(!accId.isEmpty()){
            OpportunityTriggerHandler.highOpp(accId);
            OpportunityTriggerHandler.targetAmountOpp(accId);
            OpportunityTriggerHandler.totalAmountOpp(accId);
        }

}

/*if( trigger.isBefore && trigger.isUpdate){
OpportunityClassHandler.printUpdateTrigger(trigger.oldMap, trigger.New);
}

//Bir opportunity nin Amount update edildiğinde bağlı olduğu accountun tüm 
//opportunities nin Amount toplamları Accountun Description kısmına yazılsın.

if(trigger.isAfter){
    

    set<id> accIds= new set<id>();

if(trigger.isInsert || trigger.isUndelete){
    for (opportunity op : trigger.new) {
        if(op.AccountId!= null && op.Amount!=null){

            accIds.add(op.AccountId);
        }
        
    }

}
if(trigger.isUpdate){
    for( Opportunity op: trigger.new){
        if( op.AccountId!=trigger.oldMap.get(op.id).AccountId || op.Amount!=trigger.oldMap.get(op.id).Amount){
            accIds.add(op.AccountId);
            accIds.add(trigger.oldMap.get(op.id).AccountId);
        }
    }
}
if(trigger.isDelete){
    for( Opportunity op:trigger.old){
    if(op.AccountId!= null|| op.Amount!= null){
        accIds.add(op.AccountId);
    }
}
}
if(!accIds.isEmpty()){

    List<Account> accList =[ select id, name, description,( select id , name, amount from Opportunities) from account where id in: accIds];
        for(account acc: accList){
        Decimal total= 0;
        if( acc.Opportunities.size()==0 ){
            acc.Description=null;

        }else {
            for( Opportunity op: acc.Opportunities){
                total+=op.Amount;
            }
            acc.Description='bu accountlara bagli opportunitieslerin amounlari toplami= ' +total;
        
            

            }
        }

            update accList;
}*/




























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
