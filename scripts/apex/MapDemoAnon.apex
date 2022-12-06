Map<String,String> mapcntcurrency = new Map<String,String>();

mapcntcurrency.put('Turkey','TL');
mapcntcurrency.put('India','Rupe');
mapcntcurrency.put('USA', 'Dollar');
mapcntcurrency.put('Japan', 'Yen');
mapcntcurrency.put('China', 'Yen');

System.debug('map of country currency is '+mapcntcurrency);

String indiaCurrency = mapcntcurrency.get('India');
System.debug( ' courrency of India is ....' + indiaCurrency);

String country = 'Japan';
String turkeyCurreny= mapcntcurrency.get(country);
System.debug( country + 'currencu is '+ turkeyCurreny);


// keySet ---> returns set<key_datatype>
Set<String> coutrySet = mapcntcurrency.keySet();
System.debug( 'set of country is --->'+ coutrySet);

// values()---> returns List<value_datatype>
List<String> currencyList= mapcntcurrency.values();
System.debug('currency list is...'+ currencyList);


// keyset---> set of country

Set<String> countries=mapcntcurrency.keySet();

for(string eachCountry: countries){

    System.debug('each country is '+ eachCountry);
    String eachCurrency = mapcntcurrency.get(eachCountry);
    System.debug(' ** each currency is '+ eachCurrency);

    System.debug( ' ---> ccountry is '+ eachCountry+' each currency is '+ eachCurrency);
}

