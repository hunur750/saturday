Account acc= new Account();
acc.Name='Demo 12 Apex';
insert acc;

Account acc2=[ select id, name from account where name='Demo 12 Apex' limit 1];
acc2.Name='Demo 12 Apex Update';
update acc2;


Account acc3=[ select id, name from account where name='Demo 12 Apex Update' limit 1];
acc3.Name='Demo 12 Apex Update New';
update acc3;

contact con= new Contact();
con.LastName='Demo 12 Contact Apex';
insert con;

account acc4=[select id, name from Account where Name='Demo 12 Apex Update New' ];

contact con2=[ select id, lastName, accountId from contact where name= 'Demo 12 Contact Apex'];
con2.AccountId=acc4.id;
update con2;

List<Account> accList = new List<Account>();

Account acc5= new Account();
acc5.Name='Batch 12 A';
accList.add(acc5);


Account acc6= new Account();
acc6.Name='Batch 12 B';
accList.add(acc6);

Account acc7= new Account();
acc7.Name='Batch 12 C';
accList.add(acc7);
insert accList;

list<Account> listAcc= new List<Account>();

for( Integer i=1; i<100; i++){
    Account acc= new Account();
    acc.name='Batch 12 New'+ i;
    listAcc.add(acc);

}
insert listAcc;


List<Account> lAcc =[ select id, name from account where name like 'Batch 12 New%' limit 100];
List<Contact> listCon= new List<Contact>();
integer a=1;

for( account acc: lAcc){
    contact cn= new contact();
    cn.LastName= 'Batch 12 Contact'+a;
    a++;
    cn.AccountId=acc.Id;
    listCon.add(cn);
    
}
if(!listCon.isEmpty()){
    insert listCon;
}

//Yukarida create edilen 100 accountu getirin her birine bir contact create ederek baglayin..

//List<Account> lAcc = [select id, name from account where name like 'Batch 12 New%' limit 100];
//List<Contact> listCon = new List<Contact>();
//integer a = 1;
//for(account acc : lAcc){
  //  contact cn = new contact();
    //cn.LastName = 'Batch 12 Contact ' + a;
    //a++;
    //contacti accounta bagladik..
    //cn.AccountId = acc.id;
    //listCon.add(cn);
    //insert cn;
//}
//if(!listCon.isEmpty()){
  //   insert listCon;
//}

