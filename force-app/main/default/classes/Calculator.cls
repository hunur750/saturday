public  class Calculator {
    public void welcomeMessage(){
        //system.debug--> to print and to debug our code
        // we use it whenever we want to UDDERRSTAND what our code is doing.
        system.debug('welcome to apex calc,');
    }

    public void printMessage(string msg){
        system.debug(msg);

    }
    //void -> return nothing
    // if we want to return string, write string.
    public string printAndReturnMessage(String msg2){
        system.debug(msg2);
        String returnStr= msg2+'...ok cool';
        return returnStr;


    }
    public integer add ( integer a, integer b){
        integer sum=a+b;
        integer sum1=a-b;
        return sum;



    }
    public integer add(integer a, integer b, integer c){
    integer sum=a+b+c;
    return sum;
    }

    public Boolean leapYearCheck(date dt){
        integer year =dt.year();
        boolean lp= date.isLeapYear(1974);
        return lp;


        

}


        private void printPrivaateMessage(){
            system.debug('private message msg');
            
        }
}