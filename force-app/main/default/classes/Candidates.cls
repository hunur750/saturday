public class Candidates {
    public string name;
    public String gender;
    public static string companyName;
    public static integer coiuntCandidates =0;


    public void printCandidates(){

        System.debug(' name of candidate is'+ name + ' , gender is' + gender);
        System.debug('company name is ' + companyName);
    }

    public static void printCandidatesInfo(){
        // we CAN access static members in static method.
        System.debug(' company name in static method is ' + companyName);
        // weCAN NOT access NON SATATIC members in static method.
    
    }


    
}
