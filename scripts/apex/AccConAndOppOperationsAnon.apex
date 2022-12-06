List<Account> listAcc2=AccConAndOppOperations.accList();
system.debug( 'all the account is '+listAcc2);

List<Opportunity> oppList= AccConAndOppOperations.oppStatus('Web', 'Closed Lost');
system.debug(' filtered list is'+ oppList);