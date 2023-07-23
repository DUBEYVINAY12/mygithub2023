trigger NewContactInExsistingAccount on Contact (before insert) {
    set<id> accid = new set<id>();
    for(Contact con : trigger.new){
        if(String.isNotBlank(con.AccountId))
            accid.add(con.AccountId);
    }
    if (accid.size()> 0){
   Map<id, account> accMap = new Map<id, account>([Select id, phone from Account where id in : accid]);
        For(Contact con : trigger.new){
         if(con.AccountId != null && accMap.Containskey(con.AccountId))
             if(accMap.get(con.AccountId).phone != null)
             con.OtherPhone = accMap.get(con.AccountId).phone;
        }
    }
    }