public with sharing class CreateContactUtility {
    
    public static void CreateContacts(list<Account> lstAccount){
        list<Contact> lstcontact = new list<Contact>();
        
        for(Account acc : lstAccount){
            Contact cont = new Contact(lastName = acc.Name, AccountId = acc.Id, 
                                      Email = 'classtestWithTrigger@gmail.com');
            lstcontact.add(cont);
        }
        insert lstcontact;
        
    }
}