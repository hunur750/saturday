
list<account> listAcc=[select id from Account];

List<Contact> createContacts = new list<contact>();
for( integer i=0; i<500; i++){
    Contact c= new Contact();
    c.FirstName='anon';
    c.LastName='ymous' +i;
    c.Email='anonymous'+i +'@self.com';
    id accid;
    if(i<157){
        accid =listAcc[0].id;
    } else if (i<394){
        accid=listAcc[1].id;
    } else if(i<444){
        accid=listAcc[2].id;
    } else {
        accid = listAcc[3].id;
    }
    c.AccountId=accid;
    createContacts.add(c);

}
insert createContacts;
