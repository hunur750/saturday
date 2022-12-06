public  class ParametreliMetodlar {
    //Metodumuz string bir parametre alsin.Bu metot gelen 
    //parametreninkarakterr uzunlugunu return etsin.

    public integer karakterUzunlugu(string text){

        integer krktrUzn =text.length();
        return krktrUzn;
    }


    // Metodumuz parametre olarak integer v=bir deger alsin
    //Bu integerr sayi kac rakamdan olusuyor bunu return etsin.

    public integer rakamSayisi(integer sayi){

        string strSy=string.valueOf(sayi);
        integer rakamSayisi=strSy.length();
        return rakamSayisi;
    }

    //parametre olarak 2 integer alsin ve bunlarin toplamini return etsin...
    public integer toplamMethodu (integer a,Integer b){
        return a + b;

        
    }
//parametre olarak 2 integer alsin ve bunlarin farkini return etsin...

    public Integer cikarmaMethodu(integer c,integer d){

        return c-d;
    }

    // kitap adi fiyatini ve adedini uc paremetre seklinde alan bir metod yazin
    //bu kitaplar icin ne kadar odeyeceginizi yazsin

    public void kirtasiye (string ad, decimal fiyat,integer adet){
        
        decimal odeme= fiyat*adet;
        system.debug(ad+'kitabindan'+' '+adet+' '+'aldiniz'+'deyeceginiz miktar'+' '+odeme);
    }





    
}
