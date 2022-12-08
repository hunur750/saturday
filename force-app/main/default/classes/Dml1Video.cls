public class Dml1Video {
    public static void createContact() {
        Contact c= new Contact();
        c.Salutation='Mr.';
        c.LastName='Must';
        // DML 
        insert c;
    }
    public static void createUpdateContact() {
        Contact c= new Contact();
        c.Salutation= 'Mr.';
        c.LastName='Must';
        System.debug(c);
        insert c;
        system.debug('after dml c='+c);
        
        c.FirstName='Melon';
        update c;
        System.debug('aafter dml c= '+c);
    }
    public static void updateONEContact() {
    Contact c1=[select id,firstname, lastname from Contact where LastName= 'Must' LIMIT 1 ];

    c1.FirstName= 'Elom';
   
    c1.Phone='5566998877';
    c1.Fax='445577889966';
    update c1;
    }
    
    
        
    
   
}
