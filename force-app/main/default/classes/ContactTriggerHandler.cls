public class ContactTriggerHandler {
    public static void updateContactValidation1(List<contact> conTriggerNew, List<contact> conTriggerOld,
    Map<id, contact> conTriggerNewMap, map<id, contact> conTriggerOldMap) {
        for( Contact eachContact:conTriggerNew){
            Contact oldContact = conTriggerOldMap.get(eachContact.id);

            if( oldContact.LeadSource=='Partner Referral'){

                eachContact.addError('Cannotupdate Partner Referral contact');
            }
        }
        
    }   public static void updateContactValidation2(List<contact> conTriggerNew, List<contact> conTriggerOld,
            Map<id, contact> conTriggerNewMap, map<id, contact> conTriggerOldMap) {
            for (Contact eachContact : conTriggerNew) {
                    if (eachContact.LeadSource != conTriggerOldMap.get(eachContact.Id).LeadSource) {
                            eachContact.LeadSource.addError('Cannot Update LEAD SOURCE. Please user, behave!');
}   
    }

   
}
}
