Map<String, List<decimal>> sehirlerinHavaDrm= new Map<String, List<decimal>>();

List<Decimal> IstanbulOfHot= new List<Decimal>{11.5, 15.4, 21.2, 9.5, 17.3,12.3,22.2};
sehirlerinHavaDrm.put('Istanbul', IstanbulOfHot);

List<Decimal> newYorkOfHot= new List<Decimal>{1.5, 5.4, 1.2, 19.5, 27.3,13.3,24.2};
sehirlerinHavaDrm.put('New york', newYorkOfHot);

List<Decimal> torontoOfHot= new List<Decimal>{-11.5, -15.4, 1.2, -9.5, 27.3, 2.3, 29.2};
sehirlerinHavaDrm.put('Toronto', torontoOfHot);

List<Decimal> nairobiOfHot= new List<Decimal>{11, 15, 29.2, 19.5, 16.3,14.3,32.2};
sehirlerinHavaDrm.put('Nairobi', nairobiOfHot);

List<Decimal> amsterdamOfHot= new List<Decimal>{21.5, 5.4, 26.2, 19.5, 7.3,2.3,2.2};
sehirlerinHavaDrm.put('amsterdam', amsterdamOfHot);

//MapCollection.printDegree(sehirlerinHavaDrm);
//MapCollection.averageDegree(sehirlerinHavaDrm);

MapCollection.averageDegree(sehirlerinHavaDrm);
