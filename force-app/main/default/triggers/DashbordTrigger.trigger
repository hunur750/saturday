/*trigger DashbordTrigger on Contact (before insert, before update, after insert, after update) {
    List<Contact> newList= trigger.new;
    List<Contact> oldList= trigger.old;

    map<Id, Contact> newMap = trigger.newMap;
    Map<Id,Contact> oldMap = trigger.oldMap;
    if(trigger.isAfter&& trigger.isUpdate){

         set<id> newId= newMap.keySet();

         for( Id eachId: newId){

         Contact newListofMap= newList.get(eachId);

          String nameoflist= newListofMap.Name;


         }
    }

}
*/