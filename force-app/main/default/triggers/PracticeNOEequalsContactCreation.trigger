trigger PracticeNOEequalsContactCreation on Account (after insert) {
    list<contact> contacts = new list<Contact>(); 
    map<id, integer> mapacc = new map<id, integer>();
    for(Account acc : trigger.new){
        mapacc.put(acc.Id, acc.NumberOfEmployees);
    }
    if(mapacc.size()>0 && mapacc != Null){
        for(id accid :mapacc.keySet()){
            for(integer i =0 ;i<mapacc.get(accid); i++){
                contact con = new contact();
                con.AccountId = accid;
                con.LastName = 'contact'+ i ;
                contacts.add(con);
            }
        }
    }
    if(contacts.size()>0 && contacts != Null)
        insert contacts;
    
}