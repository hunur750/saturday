public  class updateDesc {

    @Future
    public static void updatedDescriptionOppandCon(set<id> accIds){
        List<opportunity> listOpp =[Select id, name, Description, Account.Description from Opportunity where AccountId in :accIds];
        for (Opportunity opp :listOpp) {
            opp.Description =opp.Account.Description;
            listOpp.add(opp);
        }
        update listOpp;
}
}