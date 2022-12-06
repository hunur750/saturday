public with sharing class SOQL_Assignment {
    public static void soql_WhereClause() {
        List<Contact> IstContact =[ select Id, Name from Contact WHERE Name LIKE '%A%'];
        System.debug(' last name contains A is ----> '+ IstContact);
        System.debug('size of the IstContact is ----->'+ IstContact.size());
    }
    public static void soql_formethod() {
        List<Contact> IstContact =[ select LastName, Phone FROM Contact];
        system.debug(IstContact);

        for( Contact eachCon: IstContact){

            string conLastName= eachCon.LastName;
            string conPhone= eachCon.Phone;
            System.debug('contact last name is  '+ conLastName+' contact phone no is '+conPhone);
        }
        
    }
}
