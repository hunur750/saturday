List<Opportunity> listOpp=new List<Opportunity>();
for(integer i= 1; i<4; i++){
    Decimal a= 2000.00;
   Decimal b= 3000.00;
    Opportunity oppName= new Opportunity();
    oppName.Name='Test trigger '+i;
    oppName.CloseDate=date.today();
    oppName.StageName='Closed Won';
    oppName.Amount=a+i*b;
    listOpp.add(oppName);
}
insert listOpp;