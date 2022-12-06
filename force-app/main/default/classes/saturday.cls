public  class saturday{
    public void hi(){
        string cumle1 = 'salesForce ogreniyorum';
        cumle1.capitalize();
        //gormek icin iki yol var
        //1- system debug icine yaziyorum
        system.debug(cumle1.capitalize());
        //2- string baska bir variabla assign edilir.
        string cumle2= cumle1.capitalize();
        system.debug(cumle2.capitalize());
        boolean control1=cumle2.contains('SalesForce');
        system.debug('Salesforce kelimesi'+cumle2+'icinde varmi='+control1);
        Boolean control2=cumle2.containsIgnoreCase('Salesforces');
        system.debug('Salesforce kelimesi '+cumle1+'icinde varmi='+control2);
        string buyuk='nasil';
        string orta='iyimi';
        string kucuk='nasil';
        Boolean test1 = buyuk.equals(kucuk);
        system.debug('buyuk degiskeni ile'+buyuk+' '+'kucuk degiskeni valuesi esitmi'+kucuk);
        integer yeni=buyuk.length();
        system.debug(yeni);
        string yeni2 =buyuk.remove('s');
        system.debug(yeni2);
    public void tarih(){
        
    }    

        
    } 

}
