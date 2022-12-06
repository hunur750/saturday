public class SoqlDemo2 {
    public static void soqlChildToParent_1() {
        List<Contact> listCnt= [ Select id, name,account.name, Account.Industry from Contact WHERE account.Industry='Energy'];
        for (Contact eachContact:listCnt){
            string cntName=eachContact.Name;
            String cnId=eachContact.Id;
            String accountName= eachContact.Account.name;
            string accountInd= eachContact.Account.Industry;
            system.debug( ' contact name is '+cntName+ 'contact id is '+cnId+' contact acoount name is '+ accountName);
        }
        
    }
    public static void soqlParentToChild() {
        List<Account> listAccOpp=[select id, name, annualrevenue,( select name, amount from Opportunities where stagename='ClosedWon') from account where type='Customer - Direct'];
        for ( Account eachAcc: listAccOpp){
            System.debug('account name is '+ eachAcc.Name+' annual revenue is '+ eachAcc.AnnualRevenue);
            List<Opportunity> listOpp= eachAcc.Opportunities;
            for( Opportunity eachOpp: listOpp){
                system.debug( '____ opp name is '+ eachOpp.Name+ ' amount is '+ eachOpp.Amount);
            }
        }
        
    }
   }

