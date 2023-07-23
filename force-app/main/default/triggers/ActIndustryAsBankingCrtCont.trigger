trigger ActIndustryAsBankingCrtCont on Account (after insert) {
   list<Contact> cons = new list<Contact>();
    For(Account acc : Trigger.new){
        if(acc.industry == 'Banking'){
            contact cont = new contact();
            cont.AccountId = acc.Id;
            cont.LastName = acc.Name;
            cont.Phone = acc.Phone;
            cons.add(cont);
        }
        insert cons;
        
    }

}