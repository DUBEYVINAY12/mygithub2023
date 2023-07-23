public class ControllPassParamNew {
    public Account account {get;set;}
    
    public ControllPassParamNew()
    {
        if(Account == Null)
          Account = [Select Name from account 
                    where id ='0012w00001QhOXBAA3'];  
    }
    public PageReference Save()
    {
        update account;
        PageReference SecondPage = Page.MySecondPage;
        secondPage.setRedirect(True);
        SecondPage.getParameters().put('id',account.Id);
        return SecondPage;
    }
    public PageReference GoToNewPage()
    {
        PageReference Secondpage = page.mysecondpage;
        secondpage.setRedirect(true);
        secondpage.getParameters().put('id',account.Id);
        return Secondpage;
    }

}