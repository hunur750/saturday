public  class Calculator12 {
    public static Decimal dynamicCalculationMethod(Decimal x,Decimal y, String operation){
        Decimal calculation;

        switch on operation {
            when 'add' {
                calculation=x+y;
            }
            when 'subs' {
                calculation=x-y;
                
            }
            when 'division'{
                calculation=x/y;
            }
            when 'multipication'{
                calculation=x*y;
            }
            when else{
                system.debug('please enter valid operation');
                calculation=null;
            }
        }


        return calculation;

    }
    
}
