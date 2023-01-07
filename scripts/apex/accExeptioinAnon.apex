try {
    string s;
    s.toLowerCase();
    account ac= new account();
    insert ac;
} catch (DmlException dex) {
    system.debug(' dml went wrong');
    
}catch(Exception ex){
    system.debug('somethng went wrong buddy');
    system.debug('exeption message:' +ex.getMessage());
    system.debug('ex line number'+ ex.getLineNumber());
}
system.debug('Apex is SIMPLE');