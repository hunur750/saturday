public  class DatetimemethodsDemo {
    public void calculateageInMonths(){

       date birthdate = date.newinstance(1975, 9, 22);
       date todayDate= date.today();
       
       integer ageInMonths=birthdate.monthsBetween(todayDate);
       system.debug('huseyin your age is'+ageInMonths);

       //integer ageInDays= birthdate.daysBetween(todayDate);
       //system.
    }

    public void calculateAgeInDays(){
        date birthdate = date.newinstance(1975, 9, 22);
       date todayDate= date.today();
        integer ageInDays= birthdate.daysBetween(todayDate);
        system.debug('huseyin yoru age in days is'+ageInDays);

    
    }

    public void printSubscriptionEndDate(){

        date subscriptionStartDate=date.today();
        date subscriptionEnDate = subscriptionStartDate.addDays(999);
        system.debug(' your subscriptipn will end of'+ subscriptionEnDate);
        date pastSubscriptionDate = subscriptionStartDate.addDays(-999);
        system.debug('past subscriptiondate is '+ pastSubscriptionDate);

        integer endDateYear = subscriptionEnDate.year();
        system.debug('end date year is'+endDateYear);

        integer endDateDay =subscriptionEnDate.day();
        system.debug('end day is'+endDateDay);

        integer endDateMonth = subscriptionEnDate.month();
        system.debug(' end date month is'+endDateMonth);

    }

        public void printOfferEndDateTime(){

            Datetime dtNow= datetime.now();
            datetime dtOfferEnd= dtNow.addHours(51);
            system.debug('Offer end time is'+dtOfferEnd);


        }

        public void bithrDayInMilliseconds(){

            Datetime birthTime= Datetime.newInstance(1975, 9, 22, 3, 0, 0);
            long longBirthDate =birthTime.getTime();
            system.debug(' my birthdate in long(milliseconds) is ....'+longBirthDate);
        }
                
            
        
}
