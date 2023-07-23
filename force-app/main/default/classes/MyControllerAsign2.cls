public class MyControllerAsign2 {
    private final Account account;

    public MyControllerAsign2 ()
    {
        account = [Select id, Name , Site from account
                    where id= :ApexPages.currentPage().getparameters().get('id')];
    }
    
    public Account getaccount() {
        return account;
    }
    public Pagereference Save()
    {
        update account;
        return null;
    }
    
    
    
}