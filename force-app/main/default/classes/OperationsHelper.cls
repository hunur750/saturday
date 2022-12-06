public class OperationsHelper {

    public static Decimal Sum (List<Decimal> listOfDecimal){


        decimal Total;
        if(!listOfDecimal.isEmpty()){
            Total=0;
            
            for( Decimal eachNum: listOfDecimal){
                Total+=eachNum;

                }
                 }else{
            system.debug('Please provide values to do the operation');
        }
        return Total;
     }

     public static Decimal average (List<Decimal> averageOfDecimal){
        decimal avarage1;
        Decimal total;
        if(!averageOfDecimal.isEmpty()){
            total=0;
            
            for(Decimal eachNum:averageOfDecimal){

                total+=eachNum;

            }
            avarage1= total/ averageOfDecimal.size();
        }else{
            system.debug('Please provide values to do the operation');

        }
        return avarage1;


     }

     public static Decimal highest(List<Decimal> highestDecimal){
        Decimal biggerNum;
        if(!highestDecimal.isEmpty()){

            biggerNum=highestDecimal[0];
            for( Decimal eachNum1:highestDecimal){


                if(eachNum1>biggerNum){
                    biggerNum=eachNum1;
                }
            System.debug('liste elemani '+eachNum1+ 'en buyuk deger '+biggerNum);


            }
        }else{
            System.debug('Please provide values to do the operation');
        }
        return biggerNum;
     }
      


}
