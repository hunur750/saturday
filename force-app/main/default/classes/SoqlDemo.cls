public with sharing class SoqlDemo {
    public static void accountSOQL_1(){
        List<Account> listAcc = [ select id, name from account where name like '%a%'];
        System.debug(' list of acc-->'+ listAcc);


    }
    public static void accountSOQL_11(){

        Account acc =[select id, name, phone from Account ORDER BY CreatedDate DESC LIMIT 1];
        system.debug(' latest created account is ' + acc);
    }

    public static void accountSOQL_2(){
        Account acc =[select id, name, phone, AccountNumber from Account ORDER BY CreatedDate DESC LIMIT 1];

        String accName= acc.Name;
        string accPhone= acc.Phone;
        system.debug(' acc name is  '+ accName+' '+ ' acc phone is  '+ accPhone+ ' accountnumber is '+ acc.AccountNumber);
    }
    public static void accountSOQL_3(){
        list<Account> listAcc =[select id, name, phone, AccountNumber,  ShippingCity from Account ORDER BY CreatedDate DESC ];
        System.debug(' all created account is '+listAcc);
        for (Account eachAcc : listAcc) {
            String accName= eachAcc.Name;
            String accPhone= eachAcc.Phone;
            System.debug(' acc name is --->, '+ accName+' '+' acc phone is ---->, '+ accPhone+ ' account number is '+ eachAcc.AccountNumber);
            string accShippingCity = eachAcc.ShippingCity;
            System.debug( accShippingCity);
        }
       
}
public static void accountSoqlFilter(string accNameFilter) {
    List<Account> listAcc=[ select Id, Name, phone from Account where Name=: accNameFilter];
    System.debug('filtered account is '+ listAcc);
    



}
public static void accountSoql_Filter(list <string> accNames){
    List<Account> listAcc =[ select Id, Name, phone from Account where Name IN : accNames];
    System.debug( ' filtered account is '+ listAcc);





}




}