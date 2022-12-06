public  class Soql2 {
    public static void oppurt() {
        //List<Opportunity> nameOpp = [ select Id, Name from Opportunity WHERE name like '%c%'];
        //System.debug(' name from oppurtunity starts with c is ---->'+ nameOpp);
        Opportunity opp= [ Select Id, Name, CreatedDate from Opportunity ORDER BY Name LIMIT 1];
        System.debug(' Latest 3 record created like --->'+ opp);
        
    }
    public static void oppurt2() {
        Opportunity opp2= [ select Id, Name, Fiscal FROM  Opportunity Order By CreatedDate desc limit 1 ];
        System.debug(' latest record is '+opp2);

        String oppName= opp2.Name;
        String oppFiscal=opp2.Fiscal;

        System.debug(' opp2 name is '+oppName+'opp2 fiscal is '+oppFiscal);

        
    }
    public static void oppurt3() {
        List<Opportunity> opp3=[Select Id, Name, NextStep from Opportunity ORDER BY NextStep DESC   ];

        system.debug( ' oppurt 3 list is '+ opp3);

        for( Opportunity eachOppurt : opp3){

            string oppName = eachOppurt.Name;
            string oppNext= eachOppurt.NextStep;

        System.debug( 'oppName = '+ oppName);
        System.debug( 'oppNext = '+ oppNext);

        }
        
    }
    public static void oppurtFilter() {
        string oppNameFilter=' SaleForce Inc';
        List<Opportunity> oppFilt1 =[ select Id, Name from Opportunity where Name= :oppNameFilter];
        System.debug(oppFilt1);
        
    }
   
}

