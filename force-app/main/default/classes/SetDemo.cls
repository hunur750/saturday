public  class SetDemo {
    public static void cityName() {
        Set<String> cities= new Set<String>();

        cities.add('tokyo');
        cities.add('lisbon');
        cities.add('nairobi');
        cities.add('tokyo');
        cities.add('lisbon');
        cities.add('nairobi');
        System.debug(' cities are'+cities);

    }
    public static set<string>  upperCaseSet(set<string> setStr) {

        Set<String> returnSet = new Set<String>();
        for( String eachString: setStr){

            string tempStr=eachString.toUpperCase();
            returnSet.add(tempStr);

        }
        return returnSet;

        
    }

    public static void randomIntegerSet() {

        Set<Integer> integerSet= new Set<Integer>();

        integerSet.add(10);
        integerSet.add(15);
        integerSet.add(21);
        integerSet.add(15);
        integerSet.add(15);

        System.debug( 'integer set '+integerSet);
        }


   public static set<integer> setFromList(List<Integer> intList) {
    Set<Integer> setInt= new Set<Integer>();
    setInt.addAll(intList);


    return setInt;
    
   }     

    }
    

