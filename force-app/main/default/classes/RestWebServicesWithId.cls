@RestResource(urlMapping='/Account/*')

Global class RestWebServicesWithId {
    @HttpGet
    
    Global Static Account GetAc(){
       restrequest req = restcontext.request;
        String accountId = req.requestURI.Substring(req.requestURI.Lastindexof('/')+ 1);
        system.debug('Account id'+accountId);
    Account Results = [Select id, Name, Phone , Website FROM Account Where id =: accountId];
        return Results;
        
    }
    

}