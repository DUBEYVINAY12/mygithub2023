public class NewAndExsistingController {
    public Account account {get; private set;}
    
    public NewAndExsistingController()
    {
        Id id = ApexPages.currentPage().getParameters().get('id');
        account = (id == null) ? new Account():
        [Select Name, Phone, Industry From Account Where Id= :id];
    }
    
    public PageReference Save()
    {
        try{
            upsert(account);
        }
        catch (system.DmlException e){
            ApexPages.addMessages(e);
            return null;
        }
        PageReference redirectsuccess = new ApexPages.StandardController(Account).View();
        return redirectsuccess;
    }
}