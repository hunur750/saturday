public  class LeadController12 {
    @AuraEnabled
     public static lead[] searchName(string word) {
         string searchWord = '%' + word + '%';
         return [select FirstName, LastName, Company, Industry, leadSource from Lead where name like :searchWord];
    }
 
    @AuraEnabled
    public static lead[] searchIndustry(string industry) {
         return [select FirstName, LastName, Company, Industry, leadSource from Lead where Industry =: industry];
    }
 }