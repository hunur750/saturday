public with sharing class CaseInvocable {
    @invocablemethod( label='Send Email & Save Activity'
    description=' This method sends an email and saves the same as activity'
    category='Case')
    public static void sendEmailSaveActivity( list<InputRequest> inputs){
        list<messaging.SingleEmailMessage> msgs= new list<messaging.SingleEmailMessage>();
        //iterate over the inputs and create an email for each 
        for( InputRequest input: inputs){
            Messaging.SingleEmailMessage msg= new Messaging.SingleEmailMessage();
            msg.setSubject('Case Created' + input.caseNumber );
            msg.setPlainTextBody('A case has been created for your querry. Please quote the case number available in the subject when you talk to customer care!');
            msg.setTargetObjectId(input.contactId);
            msg.setSaveAsActivity(true);
        }
        if(!msgs.isEmpty()){
            Messaging.sendEmail(msgs);
        }

    }

    public class InputRequest{
        @Invocablevariable(label='Contact ID' description='Contact Id' required=true)
        public Id contactId;
        @Invocablevariable(label='Case Number' description='Case Number' required=true)
        public String caseNumber;
    }
 
}