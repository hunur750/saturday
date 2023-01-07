@istest
public  class CaseQuableTest {
@istest
private static void queCaseTest(){
     
    CaseQuable cq= new CaseQuable();
    test.startTest();
    system.enqueueJob(cq);
    test.stopTest();

    List<Case> listCase=[select id, status, origin from case];
    system.assert(listCase.size()== 1);
    system.assertEquals('New', listCase[0].Status);

}


 
}
