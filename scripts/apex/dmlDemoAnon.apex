DmlDemo.dmlInsertDemo_5();
DmlDemo.dmlInsertDemo_stndObj();
DmlDemo.dmlInsertDemo_cstmObj();
DmlDemo.dmlUpdateDemo_1();
DmlDemo.dmlUpdateDemo_3();
DmlDemo.dmlInsertDemo_4();
//DmlDemo.dmlInsertMultiple_wrong();
DmlDemo.dmlInsertMultiple_right();
Dmldemo.dmlInsertMultiple_right2();

List<Account> listAccount= [select id from account where createddate = This_week limit];