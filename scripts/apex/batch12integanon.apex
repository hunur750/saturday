List<Account> lisaacc= new List<Account>();

Account acc1= new Account();
acc1.Name = 'Integration Account 1';
acc1.AnnualRevenue = 10000;
acc1.Phone = '22222';
lisaacc.add(acc1);

Account acc2= new Account();
acc2.Name = 'Integration Account 2';
acc2.AnnualRevenue = 20000;
acc2.Phone = '33333';
lisaacc.add(acc2);

system.debug(lisaacc);

string listAccJson= JSON.serialize(lisaacc);
system.debug(listAccJson);

// listemizi JSON formattan tekrar Account recordlari haline getirelim
 List<Account> accListNew=(list<Account>)JSON.deserialize(listAccJson, list<Account>.class);
 system.debug(accListNew);

//Case objesinden Contactlara bagli olan 2 tane case recordu getirelim. CaseNumber, Subject, Description, Contact.FirstName, Contact.LastName, Account.Name bilgileri ile beraber gelsin ve bu record bilgilerini JSON formata cevirelim..

List<Case> caseList =[select id, caseNumber, subject, description, contact.firstName, contact.Name, Account.Name from case LIMIT 2];

string listCaseJson =JSON.serialize(caseList);
system.debug(listCaseJson);
