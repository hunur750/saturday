trigger MycustomerTrigger on MyCustomer (before insert, after insert, before update, after update) {
    if(trigger.isAfter){

        if(trigger.isInsert){
            list<MyCustomer> newCus=trigger.new;
            list<MyCustomer> oldCus=trigger.old;
            for(mycustomer eachCus: newCus){
                if(eachCus.id==oldCus.id){
                    
                }
            }
        }
    }


}