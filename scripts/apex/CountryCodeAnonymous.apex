// access custom setting here.
map<string, country_code__c> allCountryCode= country_code__c.getall();
system.debug('all country code---> '+ allCountryCode);

// country name is India , its code is IND

for (string eachCountry : allCountryCode.keyset()) {
    system.debug('Country name is '+ eachCountry+ ' ,its code is '+allCountryCode.get(eachCountry).code__c);
    
}