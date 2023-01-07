public class FutureDemo12 {
    //Account objecti'nin description field'inde bir update işlemi yapıldığında o account'a bağlı opportunity ve contact'ların description field'lerini account description ile aynı olacak şekilde update eden bir "future method" tasarlayınız.

    public static void updateDescriptionHelper(List<Account> accTriggerNew, Map<Id,Account> accTriggerOldMap) {
        //set olusturup etkilenen accountlarin id lerini toplayalim..
        Set<Id> accIds = new Set<Id>();
        for (Account ac : accTriggerNew) {
            if (ac.Description != accTriggerOldMap.get(ac.id).Description) {
                accIds.add(ac.id);
            }
        }
        if (!accIds.isEmpty()) {
            //updateDescription(accIds);
            updateDescription2(accIds);
        }
    }

    // @future
    // public static void updateDescription(Set<Id> idList) {
    //     List<Account> accList = [select id, name, description, (select id, description from Contacts), (select id, name, description from opportunities) from account where id IN :idList];

    //     List<Contact> conList = new List<Contact>();
    //     List<Opportunity> oppList = new List<Opportunity>();
    //     for (Account ac : accList) {      
    //         for (contact c : ac.Contacts) {
    //             c.Description = ac.Description;
    //             conList.add(c);
    //         }
    //         for (opportunity op : ac.Opportunities) {
    //             op.Description = ac.Description;
    //             oppList.add(op);
    //         }
    //     }
    //     update conList;
    //     update oppList;
    // }

    public static void updateDescription2(Set<Id> idList) {
        List<Contact> conList = [select id, accountId, description, account.description from contact where AccountId IN :idList];
        for (contact c : conList) {
            c.Description = c.Account.Description;
        }
        update conList;

        List<Opportunity> oppList = [select id, description, account.description from Opportunity where AccountId IN :idList];
        for (opportunity op : oppList) {
            op.Description = op.Account.Description;
        }
        update oppList;
    }
}