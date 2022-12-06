public  class MapAssign {
    public static void mapStudent(){
    Map< String, Integer> marksObtainInMaths = new map< String, Integer>();
    marksObtainInMaths.put('0111CE112', 40);
    marksObtainInMaths.put('0111CE122', 23);
    marksObtainInMaths.put('0111CE222', 17);
    marksObtainInMaths.put('0111CE132', 45);
    marksObtainInMaths.put('0111CE142', 32);
    marksObtainInMaths.put('0111CE152', 17);
    marksObtainInMaths.put('0111CE162', 18);
    System.debug(' Student roll number and marks--->'+marksObtainInMaths);
    Set<String> rollNumberSet= new Set<String>();
    rollNumberSet=marksObtainInMaths.keySet();
    system.debug(' Student number is-->'+rollNumberSet);
}// if roll number is below 20 the student does not qualified join the class
public static void mapstudent2(string rNumb){
    Map< String, Integer> marksObtainInMaths = new map< String, Integer>();
    marksObtainInMaths.put('0111CE112', 40);
    marksObtainInMaths.put('0111CE122', 23);
    marksObtainInMaths.put('0111CE222', 17);
    marksObtainInMaths.put('0111CE132', 45);
    marksObtainInMaths.put('0111CE142', 32);
    marksObtainInMaths.put('0111CE152', 17);
    marksObtainInMaths.put('0111CE162', 18);



    integer mark= marksObtainInMaths.get(rNumb);
    system.debug(mark);
    if(mark<20){
        system.debug(rNumb+' grade mark is '+ mark + ' is not qualified for the next class');

    }else{
        system.debug(rNumb+' grade mark is '+ mark + ' is qualified for the next class');
    }



}

}














