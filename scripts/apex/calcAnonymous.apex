Calculator c1= new Calculator();


date newDate= date.newInstance(2016, 4, 8);
boolean lpCheck=c1.leapYearCheck(newDate);
system.debug(newDate+'check leap year'+lpCheck);





integer sum33 =c1.add(12,23,34);
system.debug(sum33);

integer sum1=c1.add(10,5);
system.debug(sum1);

string r = c1.printAndReturnMessage('print this asap');
system.debug(r);
String message = 'print my message';
// buada onemli olan message variablen string olmasi sonra yukaridaki
c1.printMessage(message);
c1.printMessage('now print this');






c1.welcomeMessage();
