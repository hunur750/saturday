car type57c= new car();
type57c.carColor='blue';
type57c.carName='type 57 c';
type57c.switchOn();
type57c.drive();
type57c.driveAtMaxSpeed();
system.debug('type 57 c'+type57c);

system.debug('_______________');

car mer = new car();
mer.carColor='white';
mer.carName='mer';
mer.switchOn();
mer.drive();
mer.driveAtMaxSpeed();
system.debug('mer--->'+mer);
system.debug('_______________');

for ( integer i =0; i<150; i++){
    Account a= new Account(Name='New Account'+1);
insert a;
system.debug(a);
}
