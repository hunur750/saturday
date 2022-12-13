trigger LeadTrigger on Lead (before insert, before update, after insert, after update ) {

    if(trigger.isBefore&& trigger.isInsert){
        for( Lead lead1: trigger.new){
            if( lead1.LeadSource== 'web'){
                System.debug( 'Rating should be cold');
            } else {
                System.debug( 'Rating should be hot');

            }
        }
    
        }

    }
