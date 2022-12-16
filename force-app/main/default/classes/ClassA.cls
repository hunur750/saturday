public  class ClassA {
    public ClassA(){
        if(GeneralSetting.printFlag!='off'){
        system.debug(' class A constructor.');
        GeneralSetting.printFlag='on';
        }
    }
    public ClassA( string p){

        if(GeneralSetting.printFlag!= 'off'){
            system.debug(' class A param constructor.p = '+p);
            GeneralSetting.printFlag='off';
        }
    }
    
    
    
    
    
    public static void classAmethod1() {   
        if(GeneralSetting.printFlag!='off'){

        System.debug(' class A method 1 print statement.');
        } 
    }
   
}
