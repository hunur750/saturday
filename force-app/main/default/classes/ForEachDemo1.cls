public  class ForEachDemo1 {

    public static void iterateIntegerList() {

        List<integer> listInteger= new List<Integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(10);
        
        for (integer eachInteger : listInteger) {

            System.debug(eachInteger);
            
        }

        
        

        
    }

    public static integer add( List<Integer> intList) {
        Integer returnInt =0;

        for (integer eachInte : intList) {

            System.debug('eachInte --> '+eachInte);
            returnInt= returnInt+eachInte;
            System.debug('returnInt -->'+returnInt);
            
        }






        return returnInt;

        
    }
    
}
