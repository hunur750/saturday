public class loopDemo {

    
    public void print_int_while(){

        Integer count = 1;
        while (count<= 25) {
            system.debug(count);
            count++;
            
        }
        
    }


    public void print_N_numbers( integer n){

        for (Integer i = 0; i < n; i++) {
            system.debug(i);
        }
        }

    public void print_N_Odd_numbers(integer startInt, integer endInt){


        for (Integer j = startInt  ; j < endInt; j++) {
            Integer remainder= math.mod(j, 2);
            if (remainder==1) {
                system.debug(j);
                
            }
            
        }
    }
    
}
