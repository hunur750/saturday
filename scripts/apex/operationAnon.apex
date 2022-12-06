List<Decimal> newList= new List<Decimal>{ 11.2, 55.4, 66.7, 45, 89};
Decimal finalSum= OperationsHelper.Sum(newList);
System.debug(' sum of newList is---->'+ finalSum);

Decimal average2=OperationsHelper.average(newList);
System.debug('average of new list is ----->'+ average2);

Decimal highest2=OperationsHelper.highest(newList);
system.debug(' highest num ofnew list---->'+highest2);
