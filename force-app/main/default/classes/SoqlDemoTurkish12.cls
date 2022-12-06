public  class SoqlDemoTurkish12 {
    // account recordlarindan Industry 'education' olanlarin listesinin record sayisini bulup return eden bir metod yazin.
    public static integer accountIndustryOfEducation(String indst) {
        List<account> accList=[select id, name, industry from Account where industry =: indst ];
        system.debug('account listesi'+accList);
        integer recordSayisi=accList.size();
        return recordSayisi;
        
    }// accountlardan industryisi energy olanlar contactlariyla birlikte listeleyin her bir recordu tek tek yazdirin
    public static void AccountWithContact(string indstry) {
        List<Account> accList=[ select Id, name, (select id, lastName from Contacts) from Account where Industry=: indstry];
        system.debug('Account listemiz'+accList);
        for (account acc : accList) {
            system.debug(acc);
            system.debug(acc.Contacts);

            for (contact con : acc.Contacts) {
                system.debug(con);

                
            }
            
        }

        
    }

}
