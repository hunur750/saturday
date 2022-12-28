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
        //2. When a new contact is created for an existing account then set contact other phone as account
        //phone
        public static void contactSecondPhone() {
            
        }
        private static void contactOtherPhone2(list<contact>triggerNew) {
            set<id> conIds= new set<id>();
            for( Contact con: triggerNew){
                if(con.AccountId!= null){
                    conIds.add(con.Id);
                }

            }
            List <Contact> conList= [select id,otherPhone, account.phone from Contact where id in: conIds];

            for( Contact con:conlist){
                con.OtherPhone= con.Account.Phone;
            }
            if(!conlist.isEmpty()){
                update conlist;
            }
        }

        public static void mainContactCheckbox() {
            set<id> cont = new set<id>();
            for( Contact eachcon:triggerNew){

                if(eachcon.Main_Contact_Person__c != trigger.conTriggerOldMap.get(eachcon.id).Main_Contact_Person__c&& eachcon.Main_Contact_Person__c== true){
                    cont.add(eachcon.id);
                }
            }
            


            
        }





}
