//1. sorunun cevabi
map<Integer,String> licence= new Map<Integer,String>();
licence.put(34, 'Istanbul');
licence.put(16, 'Bursa');
licence.put(27, 'Gaziantep');
licence.put(35, 'Izmir');
licence.put(42, 'Konya');
System.debug(licence);
//2. sorunun cevabi
integer getNumberOf= 34;
String getCity= licence.get(getNumberOf);
System.debug(getCity);
//3. sorunun cevabi
boolean containLicence= licence.containsKey(34);
System.debug(containLicence);
if(containLicence){
   System.debug(' 34 nolu plaka mapimizde mevcuttur'+ getCity+ ' a aitttir');
}else{
     System.debug(' 34  plakali sehir mapimizde mevcut degildir');

}

boolean containLicence1= licence.containsKey(61);
System.debug(containLicence1);
if(containLicence1){
   System.debug(' licence mapimizde 61 plakali sehir vardir');
}else{
     System.debug('licence mapimizde 61 plakali sehir yoktur ');
    }

Integer sizeOfLicence= licence.size();
System.debug( ' licence mapinin eleman sayisi --->'+ sizeOfLicence);
//4. sorunun cevabi
String removeOfKey= licence.remove(16);
System.debug(removeOfKey);
System.debug(licence);
// 5. sorunun cevabi
Set<Integer> licenceSet= licence.keySet();
List<String> licenceList = licence.values();
6. sorunun cevabi
system.debug('6. sorunun cevabi '+ 'Plakalarda olusan liste ---> '+ licenceSet+' '+' sehirlerdenn olusan liste ----->  '+ licenceList);








