public with sharing class ContactCtrl {
@AuraEnabled
public static List<Contact> searchContacts(String searchKey){
    searchKey= '%' + searchKey + '%' ;
    return [select Firstname, LastName, Email, Title from Contact
    where Name LIKE :searchKey
    with SECURITY_ENFORCED];
}
}