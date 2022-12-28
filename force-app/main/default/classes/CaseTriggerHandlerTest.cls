@istest
public class CaseTriggerHandlerTest {
    @istest
    private static void caseChildParent() {
        List<Case> csList= new List<Case>();
        for(integer i =0; i<200; i++){
            case cs= new case();
            //cs.Subject='Nasilsin';
            //cs.Status='new';
            //cs.origin='Web';
            if(i<100){
                cs.Description='password';
            }else{ 
            cs.Description='Secret info not allowed in case';
        }
        csList.add(cs);

        
    }
    insert csList;
    test.startTest();
    list<case> cslist1=[select id,status,priority from Case];
    system.assertEquals(300, cslist1.size() );
    test.stopTest();


}

}