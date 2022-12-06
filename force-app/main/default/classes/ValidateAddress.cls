public class ValidateAddress {
    public void validateHomeAddress(){
        string HouseName = 'Swan House';
        string StreetName = 'Maple Street';
        string CityName = 'Atlanta';
        string StateName = 'Georgia';
        string stateISO = 'GA';
        string CountryName = 'United States of America';
        string countryISO = 'USA';
        
        integer lengthofSt = StreetName.length();
        system.debug('The length of characters of Street Name is: ' + lengthofSt);

        boolean containsH = StreetName.contains(HouseName);
        system.debug(containsH);

        boolean containsISO = StreetName.contains(stateISO);
        system.debug(containsISO);

        string convertISO = stateISO.toUpperCase();
        system.debug(convertISO);

        string convertcISO = countryISO.toUpperCase();
        system.debug(convertcISO);

        string convertcName = CountryName.toUpperCase();
        system.debug(convertcName);

        string convertCityN = CityName.toLowerCase();
        system.debug(convertCityN);

        string convertsName = StateName.toLowerCase();
        system.debug(convertsName);

        string fullAddress = HouseName + ' ' + StreetName + ' ' + CityName + ' ' + StateName + ' ' + CountryName;
        system.debug(fullAddress);
    }
}