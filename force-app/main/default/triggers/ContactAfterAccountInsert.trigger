trigger ContactAfterAccountInsert on Account (after insert) {
  list<Contact> cons = new list<Contact>(); 
    for(Account acc : Trigger.new){
        contact c = new contact ();
        c.AccountId= acc.Id;
        c.LastName = acc.Name;
        c.phone = acc.Phone;
        cons.add(c);
    }
insert cons;
}