public  class DummyDataNumber {
    public static list<account> creAcc( integer n ){
        list<Account> lstAcc= new List<Account>();
        if( n>0){

            for (Integer i = 1; i < n; i++){
                Account acc= new Account();
                acc.name='New acccount'+i;
                acc.Rating='Hot';
                acc.Phone='2356890';
                lstAcc.add(acc);
            }
            if(!lstAcc.isEmpty()){
                insert lstAcc;
            } 
            
            }else{ 
                system.debug(' enter valid number for n');
            }
            return lstAcc;
        }


    }      
    

