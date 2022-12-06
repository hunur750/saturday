public  class etut1 {
    public static void allContacts() {
        List<Contact> listContacts = [select name, phone from Contact where FirstName = 'fname'];
        System.debug( listContacts);
        
        
    }
    public static void latestOfContact() {
        Contact latestcnt = [ select name, email from Contact ORDER BY CreatedDate desc limit 1];
        System.debug( 'latest created contact is -->'+ latestcnt);  
        String ltsName= latestcnt.Name;
        String ltsEmail= latestcnt.Email;
        system.debug('latest created name is --->'+ ltsName+' '+ ' latest created email is --->'+ ltsEmail);


        
    } 

    public static void contactWithEmail() {
    List<Contact> lestEmailContacts =[ select id, name, email from Contact where email!= NULL   ];
    system.debug( lestEmailContacts.size());
    for( Contact eachCnt : lestEmailContacts){
        System.debug(' contact name is '+eachCnt.Name.toUpperCase() +' each email is '+ eachCnt.Email.toUpperCase());


    }


    }
    public static void contactFilterName(string fname) {
        List<Contact> filteredContacts=[ select id, name, email, phone from Contact where FirstName=: fname ];
        System.debug(filteredContacts);

        
    }
    public static void oppFilteredNameEmail(string fname, string femail) {
        List<Opportunity> filterdOpprt=[ select id, name from Opportunity where NextStep!= NULL and Name=:fname and 	MainCompetitors__c=:femail];
        system.debug(filterdOpprt);
        
    }


    
}
