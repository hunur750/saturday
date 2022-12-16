public  class CaseHandler2 {
    public static void caseOrigin(  list<case> triggerNew) {
        if(trigger.isbefore&& Trigger.isInsert ){

            for( case eachCase: triggerNew){
                if(eachCase.Origin=='Email'){

                    eachCase.Status='New';
                    eachCase.Priority='Medium';
                }
                





            }








        }
        
    }
   
}
