SetDemo.cityName();
SetDemo.randomIntegerSet();

List<integer> listInteger = new list<integer>();
listInteger.add(10);//0 //indexes will always be integer.
listInteger.add(15);//1
listInteger.add(21);//2
listInteger.add(15);//3
listInteger.add(12);//4
Set<Integer> setInteger= SetDemo.setFromList(listInteger);
system.debug('set-> '+ setInteger);

Set<String> cities= new Set<String>();

        cities.add('tokyo');
        cities.add('lisbon');
        cities.add('nairobi');
        cities.add('tokyo');
        cities.add('lisbon');
        cities.add('nairobi');

        set<string> uppercaseCities = SetDemo.upperCaseSet(cities);
        system.debug(uppercaseCities);
