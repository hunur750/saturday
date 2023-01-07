List<Account> dl= [select id, name from account where name like'New%' ];
delete dl;

