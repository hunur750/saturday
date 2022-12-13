trigger ContactTrigger2 on Contact (before insert, after insert, before update, after update) {
if( trigger.isBefore&& trigger.isInsert)
for(Contact cnt: trigger.new){
    if(cnt.AccountId!=null){
        system.debug(cnt.Name+'contact created with acoount');
    }else{system.debug(cnt.Name+'contact created without acoount');}
}
}