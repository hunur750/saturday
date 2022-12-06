public  class DmlDemo {
    public static void dmlInsertDemo_stndObj() {
        // we will create account record using Apex.
        Account acc= new Account();
        acc.Name= 'Soft Innovas';

        insert acc;
        System.debug(' inserted acc;'+acc);
        
    }
    public static void dmlInsertDemo_cstmObj() {
        Salesforce_project__c spNew= new Salesforce_project__c();
        spNew.project_name__c= 'Teach DML to Batch12';
        spNew.description__c=' All of you doing great.';
        insert spNew; 
        
    }
    public static void dmlUpdateDemo_1() {
        Account acc= new Account();
        acc.Name= 'Sfcd';

        insert acc;
        
        
        acc.Name='Saleforce Inc';
        update acc;



        
    }
}
