
Account ac5= new Account();
ac5.name='ert';

Account ac2= new Account();
ac2.name='abc';



Account ac3= new Account();
Account ac4= new Account();

List<Account> listAcc= new List<Account>{ac5,ac2,ac3,ac4};

list<database.SaveResult> results= Database.insert(listAcc, false);

for(Database.SaveResult r :results){
    if(r.isSuccess()){
        system.debug(' record inserted  succesfully. record id is: '+r.getId());
    } else {
        system.debug('errored out. error is.. '+r.getErrors());
    }
}