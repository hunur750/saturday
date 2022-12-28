public  class CaseTriggerHandler {
    public static void createChildCase(List<Case> triggerNew) {
        Set<Id> caseId = new Set<Id>();
        for (Case cs : triggerNew) {
            if (cs.Description.containsIgnoreCase('password')) {
                caseId.add(cs.Id);
            }
        }  

        if (!caseId.isEmpty()) {
            List<Case> listCs = new List<Case>();
            for (Id csId : caseId) {
                Case csChild = new Case();
                csChild.Subject = 'Parent Case may contain secret info, do something NOW';
                csChild.ParentId = csId;
                csChild.Priority = 'High';
                csChild.Description = 'Secret info not allowed in case'; 
                listCs.add(csChild);
            }
            insert listCs; 
        }
    }
 
}
