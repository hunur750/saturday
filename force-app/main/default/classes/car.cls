public  class car {
    public String carColor='';
    public String carName='';
    //if we dont write access modifier .Deaful is Private.
    integer maxSpeed = 150;




    public void switchOn(){
        system.debug('starting the car');
    }

    public void drive(){
        system.debug(' driving '+ carName +' color is '+' '+ carColor );
    }
    public void driveAtMaxSpeed(){
        string drivingDescription =' Driving '+ carName + ' , max speed  is ' + maxSpeed + ' km/h ';
        system.debug( drivingDescription);
    }
    
}
