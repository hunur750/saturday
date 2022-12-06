public class PlayingDates {
    public void printDateOutput(){

        date todyaDate=date.today();
        System.debug('Todaydate is '+todyaDate);
        date date1= date.newInstance(2789, 11  , 5);
        System.debug('Date1 is '+date1);
        date date2= date.newInstance(1459, 3, 4);
        System.debug('date2 is '+date2);
        integer dayInt= 2;
        integer monthInt=1;
        integer yearInt=1983;

        date date3= date.newInstance(yearInt, monthInt, dayInt);
        system.debug('new date is '+date3);
    
    
    
    
    
    }
    
}
