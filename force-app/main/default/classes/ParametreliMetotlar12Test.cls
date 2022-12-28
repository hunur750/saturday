@isTest
public  class ParametreliMetotlar12Test {
    @isTest
    private static void karekterUzunluguTest() {
        // test edecegimiz metodu uygun bir parametre ile cagiriyoruz. return degerinin dogru olup olmadigini kontrol ediyoruz
        //system.assertEquals(, ,);
        integer a =ParametreliMetotlar12.karakterUzunlugu('Merhaba');
        system.assertEquals(7, a, 'kelimenin karekter');
        
    

}

@isTest
private static void rakamSayisiTest() {
   integer rs= ParametreliMetotlar12.rakamSayisi(112233);
    system.assertEquals(6, rs);
}

@isTest
private static void toplamaTest() {
    integer tp=ParametreliMetotlar12.toplama(11, 22);
    system.assertEquals(33, tp);
}
@isTest
private static void cikarmaTest() {
 integer ck=ParametreliMetotlar12.cikarma(89, 44);    
 system.assertEquals(45, ck);
}@isTest
private static void ucretTest() {
     ParametreliMetotlar12.ucret('lost', 12.50, 11);
    
}
}