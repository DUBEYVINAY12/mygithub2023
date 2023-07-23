trigger AddOwnerColour on Account (before insert, before update) {
    set<id> ownerids = new set<id>();
    for(Account a : Trigger.new){
        ownerids.add(a.OwnerId);
    }
    map<id, user> owners = new map<id, user>([Select Favourite_Colour__c from User where id in :ownerids]);
    
    for(Account a :trigger.new){
        a.owner_Favourite_Colour__c = owners.get(a.OwnerId).Favourite_Colour__c;
    }
}