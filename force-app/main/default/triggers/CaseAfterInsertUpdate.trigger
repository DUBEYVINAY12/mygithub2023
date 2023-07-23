trigger CaseAfterInsertUpdate on Case (before insert) {
  list<Account> updateacclist = new list<Account>();
    list<id> AccIds = new list<id>();
    for(case c :trigger.new){
     AccIds.add(c.Accountid);   
    }
map<id, Account> Accupdatemap = new map<id, Account>();
    for(Account acc:[Select id, Last_Survey_sent__c from Account where id in : AccIds]){
        Accupdatemap.put(acc.Id, acc);
        }
    for(case c :trigger.new){
        Account updateacc =Accupdatemap.get(c.AccountId);
        updateacc.Last_Survey_Sent__c= c.last_Survey_Sent__c;
        updateacclist.add(updateacc);
    }
         update updateacclist;
}