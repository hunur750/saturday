public class PrimitiveDataTypeDemo3 {
    public void printNewDateTime(){
    Datetime dt3 = datetime.newInstanceGmt(2021, 7, 8, 9, 10, 11);
    system.debug('dt3 is'+dt3);  
    
    
    Datetime dt4 = datetime.newInstance(0);
    system.debug('dt4 is '+dt4);

    datetime dt4_1= datetime.newinstance(-300000);
    system.debug('dt4_1 is '+dt4_1);
    long longTime = 1453244654745l;
    //current time
    datetime dt4_2= datetime.newInstance(longTime);
    system.debug('dt4_2 is '+dt4_2);



    datetime dt6 = datetime.now();
    system.debug('dt6 is'+dt6);
// 5. gmt
datetime dt5 = datetime.newInstanceGmt(1998, 5, 24, 5, 8, 10);
system.debug('dt5 is'+dt5);





} 
}
