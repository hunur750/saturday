trigger CaseTrigger on Case (before insert,before update, after insert, after update) {
    System.debug('We are in the trigger');


 /*   if(trigger.isAfter){
        system.debug('We are in the after triggers');

        if(trigger.isUpdate){
            system.debug(' We are in the after- update triggers');
        }

        if(trigger.isInsert){
            system.debug(' We are in the after- insert triggers');
        }
    }
        if(trigger.isBefore){
            System.debug(' We are in the before triggers');
            if(trigger.isUpdate){
                system.debug(' We are in the before- update triggers');
            }
            if(trigger.isInsert){
                system.debug(' We are in the before- insert triggers');
            }
    }
*/
            list<case> listCs = trigger.new;
            if(trigger.isAfter&& trigger.isInsert){
                for(case eachCase : listCs){
                    system.debug(eachCase.CaseNumber+ ' was created with id '+' on '+ eachCase.Id+ eachCase.CreatedDate);
                    
                }
                

            }
            if(trigger.isBefore&& trigger.isUpdate){
                for(case eachCase : listCs){
                    system.debug(eachCase.CaseNumber+ ' was created with id '+' on '+ eachCase.Id+ eachCase.CreatedDate);
                    
                }
                

            }
            if(trigger.isAfter&& trigger.isUpdate){
                for(case eachCase : listCs){
                    system.debug(eachCase.CaseNumber+ ' was created with id '+' on '+ eachCase.Id+ eachCase.CreatedDate);
                    
                }
                

            }

    }

