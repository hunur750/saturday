public  class MapDemoOne {
    
        public static string retrieveMonth(integer m){
            string month = '';
            map<integer, string> mapMonth = new map<integer, string>();
            mapMonth.put(1, 'January');
            mapMonth.put(2, 'Februrary');
            mapMonth.put(3, 'March');
            mapMonth.put(4, 'April');
    
            mapMonth.put(5, 'May');
            mapMonth.put(6, 'June');
            mapMonth.put(7, 'July');
            mapMonth.put(8, 'August');
    
            mapMonth.put(9, 'September');
            mapMonth.put(10, 'October');
            mapMonth.put(11, 'November');
            mapMonth.put(12, 'December');
    
            boolean keyExists = mapMonth.containsKey(m);
            if(keyExists){
                month = mapMonth.get(m);
            } else {
                month = 'No such month exists. Please behave!';
            }
            
            return month;
        }
    }




    
