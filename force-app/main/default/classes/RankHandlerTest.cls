@istest
public  class RankHandlerTest {
    @istest
    private static void RankPrizeTest() {
        RankHandler rp= new RankHandler();
        string result= rp.rankPrize(1);
        system.assertEquals('Gold', result);

         result= rp.rankPrize(2);
         system.assertEquals('Silver', result);

         result= rp.rankPrize(3);
         system.assertEquals('Bronze', result);

         result= rp.rankPrize(7);
         system.assertEquals('Top 10 certi', result);
         
         result= rp.rankPrize(15);
         system.assertEquals('participation certificate. enjoy.', result);

         result= rp.rankPrize(-1);
         system.assertEquals('participation certificate. enjoy.', result);
    }

}
