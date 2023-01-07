public  class CaseQuable implements Queueable {
    public void execute (QueueableContext qc){
        
        case cs= new case();
        cs.Status='New';
        cs.Origin='Web';
        insert cs;

    }

}
