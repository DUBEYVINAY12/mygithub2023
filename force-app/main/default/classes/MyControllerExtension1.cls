public class MyControllerExtension1 {
    private Final Account acct;
    
    public MyControllerExtension1(ApexPages.StandardController stdController){
        this.acct=(Account)stdController.getRecord();
    }
    public string getGreeting(){
        return 'Hello' + acct.Name + '('+ acct.Id +')' ;
    }

}