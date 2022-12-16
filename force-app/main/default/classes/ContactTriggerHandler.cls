public class ContactTriggerHandler {
    public static void updateContactValidation1(List<contact> conTriggerNew, List<contact> conTriggerOld,
    Map<id, contact> conTriggerNewMap, map<id, contact> conTriggerOldMap) {
        for( Contact eachContact:conTriggerNew){

            if( eachContact.LeadSource=='Partner Referral'){

                eachContact.addError('Cannotupdate Partner Referral contact');
            }
        }
        
    }
   
}
