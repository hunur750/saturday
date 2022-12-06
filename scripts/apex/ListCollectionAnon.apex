List<String> isimList  = new List<String>();

isimList.add('Hicran');
isimList.add('Gulsah');
isimList.add('Mehmet');
isimList.add('Eda');
isimList.add('Uzayli');

system.debug('Isim listemiz =' + isimList);
System.debug(' Index numarasi 2 olan ismi get metodu ile :' +isimList.get(2));
system.debug(' Index numarasi 2 olan ismi koseli parentez metodu ile getirelim:'+isimList[2]);

integer elemanSayisi=isimList.size();
System.debug('listemin eleman sayisi ='+ elemanSayisi);
List<String> isimList2= new List<String>{'Eric', 'Ozlem', ' Keni'};
isimList.addAll(isimList2);
System.debug(isimList);

isimList.sort();
System.debug(isimList);
ListCollection.printNames(isimList);


List<decimal> = new List<Decimal>(11.5, 23.4, 56.8, 11.2);


SoqlDemo2.