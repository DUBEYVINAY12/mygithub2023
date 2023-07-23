trigger updateACPhone_On_All_LinkedContact on Account (after insert, after update) {

    set<id> accid = new set<id>();
    for(Account ac : trigger.new){
        if(ac.Phone != Null){
            accid.add(ac.Id);
        }
            
    }
    try{
    list<Contact> updatedcontact = new list<Contact>();
    list<Contact> conList = new list<Contact>([Select id, name, Account.phone from Contact where id IN : accid]);
    for(contact cont: conList){
        cont.Phone = cont.Account.phone;
        updatedcontact.add(cont);
        
    }
    if(updatedcontact.size()>0){
        update updatedcontact;
    }
    }
    catch(Exception e){
        system.debug('e msg---'+e.getMessage());
    }
    
    
}