ParametreliMetodlar fg = new  ParametreliMetodlar();
string cumle = 'Salesforce Developer olma yolunda emin adimlarla yuruyorsunuz...';
integer sonuc1=fg.karakterUzunlugu(cumle);
system.debug(sonuc1);
ParametreliMetodlar pm2= new ParametreliMetodlar();
integer rkySs= pm2.rakamSayisi(4444444);
system.debug('toplam rakam sayisi'+rkySs);

ParametreliMetodlar pm3= new ParametreliMetodlar();
integer tplm=pm3.toplamMethodu(11,22);
system.debug(tplm);
Integer ckrm=pm3.cikarmaMethodu(55,44);
system.debug(ckrm);

//sayilarin toplaminin sayilarin farkina bulun
Decimal blm=tplm/ckrm;
system.debug('bolme islemi sonucu'+blm);

ParametreliMetodlar pm4= new ParametreliMetodlar();
pm4.kirtasiye('harry potter',25,5);
pm4.kirtasiye('suc ve ceza',14,9);



