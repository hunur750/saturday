public class week4Assign {
    
    public static void mapOfCurr () {
        
    
    Map<String, Decimal> currISOCodeAndExhangeRateMap= new Map<String, Decimal>();
    currISOCodeAndExhangeRateMap.put('EUR', 0.73);
    currISOCodeAndExhangeRateMap.put('CAD', 0.78);
    currISOCodeAndExhangeRateMap.put('EUR',1.13);
    currISOCodeAndExhangeRateMap.put('NZD', 0.68);
    currISOCodeAndExhangeRateMap.put('INR', 0.013);
    
    integer sizeOfMap= currISOCodeAndExhangeRateMap.size();
    
    System.debug(' size of map is ---->'+ sizeOfMap);
    }
    public static void mapOfCurr2() {
        string codeIso='EUR';
        Decimal conRate= currISOCodeAndExhangeRateMap.get(codeIso);
        system.debug( codeIso+ ' s rate is '+conRate);
    }
    public static void mapOfCurr3() {
        
    }
    
    
        
    
    
    

    
}