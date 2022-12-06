saturday std= new saturday();
std.hi();

date tarih= Date.newInstance(2001, 2, 25);
system.debug(tarih);
Date bugun= date.today();
system.debug(bugun);

date dogum= Date.newInstance(1975, 9, 22);
integer gun =dogum.daysBetween(bugun);
Decimal yas = gun/365;
system.debug(yas);

