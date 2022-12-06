public  class MapCollection {
    //farklı 5 şehrin son 7 gündeki sıcaklık durumlarını şehir ismi key sıcaklık değerleri decimal liste olan bir map yazın.. son 1 haftanın sıcaklık ortalamalarına göre 10 derecenin üstünde olan şehirleri bir liste 10 derece ve altındaki şehirleri ayrı liste olarak yazdırın.
    // 1.sehir son bir haftanin sicakliklarini liste olarak alan bir metod yazin bu metod her sehrin sicaklik degerleriyle birlikte yazdirsin.

    public static void printDegree(Map<String, List<decimal>> degreesMap) {
    System.debug(degreesMap);
    System.debug(degreesMap.get('amsterdam'));
    for(string city :degreesMap.keySet()){

        system.debug(city+' '+'sehrinin sicaklik degerleri='+ degreesMap.get(city));
    }
        
    }
    //2. son bir haftanin sicaklik ortalmalarini bulup sehir ismini key sicaklik ortalamasini value olarak alan bir map olusturun?

    public static void averageDegree(Map<String, List<decimal>> degreesMap2) {
        Map<String, decimal> averageMap= new Map<String, decimal>();

        for( String city : degreesMap2.keySet()){

            decimal sum=0;
            for( decimal eachDegree :degreesMap2.get(city)){
                sum+= eachDegree;
            }
            decimal average= sum/degreesMap2.get(city).size();
            averageMap.put(city, average);
        }
        System.debug( ' sehirlerin haftalik siacaklik ortalamalri =  '+averageMap);
    

    Set<String> less10= new Set<String>();
    Set<String> more10= new Set<String>();

    for (string city : averageMap.keySet()){
        if(averageMap.get(city)>10){
            more10.add(city);


        }else{
            less10.add(city);



        }



    }
    System.debug(' sicaklik ortalamasi 10dereceden buyuk olan sehirler =  '+ more10);
    System.debug(' sicaklik ortalamasi 10dereceden kucuk olan sehirler =  '+ less10);



    }






    }

