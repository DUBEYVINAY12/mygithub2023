trigger CreateContact on Account (after insert) {
    list<Contact> lstcontact = new list<Contact>();
    for(Account acc:Trigger.new){
        Contact con = new Contact(LastName = acc.Name, AccountId = acc.Id, 
                                   Email = 'trigger01@gmail.com');
        system.debug('account created'+acc.Id);
        lstcontact.add(con);
    }
    insert lstcontact;
}