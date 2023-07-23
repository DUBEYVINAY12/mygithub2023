trigger OpportunityUpdateTRigger on Opportunity (before update) {
     Map<id, Opportunity> oppOld = trigger.oldmap;
    Map<id, Opportunity> oppNew = trigger.newmap;
    set<id> keys =oppOld.keySet();
    for(id rid : keys){
        Opportunity OldOpportunity = oppOld.get(rid);
        Opportunity NewOpportunity = oppNew.get(rid);
        system.debug('Old Stage Value' +OldOpportunity.StageName );
        system.debug('New Stage Value' +NewOpportunity.StageName );
        if(OldOpportunity.StageName != 'Closed Won'&& NewOpportunity.StageName == 'Closed Won'){
         NewOpportunity.CloseDate = system.today();
            NewOpportunity.Type = 'New Customer';
        }
    }
}