public class DetailButtonController2 {
    private ApexPages.StandardController StandardController;
    
    public string greeting {get;set;}
    
    public DetailButtonController2(ApexPages.StandardController StandardController)
    {
       this.StandardController = StandardController;
        
    }
    
    public PageReference doSomething()
    {
        contact record = (contact)this.StandardController.getRecord();
        greeting = 'Hello'+' '+ record.Id;
            return null;
    }

}