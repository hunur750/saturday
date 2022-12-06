Map < String, decimal> currISOCodeAndExchangeRateMap = new Map< String, Decimal>();

    currISOCodeAndExchangeRateMap.put('AUD', 0.73);
    currISOCodeAndExchangeRateMap.put('CAD' ,0.78);
    currISOCodeAndExchangeRateMap.put('EUR', 1.13);
    currISOCodeAndExchangeRateMap.put('NZD', 0.63);
    currISOCodeAndExchangeRateMap.put('INR', 0.013);

    System.debug( ' mapp of currency--->' + currISOCodeAndExchangeRateMap);

    Decimal curreny1= currISOCodeAndExchangeRateMap.get('AUD');
    System.debug('currency'+ curreny1);

    boolean isSad = currISOCodeAndExchangeRateMap.containsKey('SAD');
    System.debug('is sad contains--->'+isSad);

         set< string> moreThan1 = new Set<String>();
         set< string> moreThan2 = new Set<String>();
    for( String eachCurr: currISOCodeAndExchangeRateMap.keySet()){
        if( currISOCodeAndExchangeRateMap.get(eachCurr) >=1){
            moreThan1.add(eachCurr);


        }else{
            moreThan2.add(eachCurr);
        }


    }System.debug(' if convert rate is more than  '+ moreThan1);
    System.debug(' if convert rate is more than  '+ moreThan2);
    

    
