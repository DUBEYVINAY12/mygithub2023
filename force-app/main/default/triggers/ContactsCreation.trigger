trigger ContactsCreation on Account (after insert) {
    list <Contact> lstofcontact = new list<Contact>();
        map<id, integer> mapacc = new map<id, integer>();
    for(Account acc : trigger.new){
        mapacc.put(acc.Id, acc.NumberOfEmployees);
    }
    if(mapacc.size()> 0 && mapacc != Null ){
        for(id accid : mapacc.keySet()){
            for(integer i = 0;(i <mapacc.get(accid));i++){
                contact newContact = new contact();
                newContact.AccountId = accid;
                newContact.LastName = 'Contact'+i;
                lstofcontact.add(newContact);
            }   
        }    
    }
    if(lstofcontact.size()> 0 && lstofcontact != Null)
    insert lstofcontact;
}