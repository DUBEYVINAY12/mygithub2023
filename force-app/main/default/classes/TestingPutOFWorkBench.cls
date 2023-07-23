@RestResource (urlMapping='/Account3/*')
Global class TestingPutOFWorkBench {
    
    @Httpput
    Global Static String Testingput( String Name, String Phone){
        restrequest req =restcontext.request;
        string accountId = req.requestURI.substring(req.requestURI.Lastindexof('/')+1);
        Account act = new Account (Id= accountId);
        act.Name = Name;
        act.Phone = phone;
        update act;
        return accountId; 
    }

}