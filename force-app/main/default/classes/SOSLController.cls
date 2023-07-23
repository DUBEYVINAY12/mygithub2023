public class SOSLController {
    public list<Account> acclist {get;set;}
    public list<Contact> conlist {get;set;}
    public list<Opportunity> optylist {get;set;}
    
    public String searchStr {get;set;}
    public SOSLController(){
        }
     
    public void soslDemo_Method(){
        acclist = new list<Account>();
        conlist = new list<Contact>();
        optylist = new list<Opportunity>();
        if(searchStr.length() > 1){
            String searchStr1 = '*'+searchStr+ '*' ;
            
            String searchQuery = 'Find \'' + searchStr1 + '\' IN ALL FIELDS RETURNING Account(id, Name, Type), Contact(Name, Email), Opportunity(Name, StageName) ';
            
            list<list <sObject>> searchList = search.query(searchQuery);
            acclist = ((list<Account>) searchlist [0]);
            conlist = ((list<Contact>) searchlist [1]);
            optylist = ((list<Opportunity>) searchlist [2]);
            
            if(acclist.size()== 0 && conlist.size()== 0 && optylist.size()== 0)
            {
                ApexPages.addMessage(new ApexPages.message(Apexpages.Severity.ERROR,'Sorry, No results returned with matching string..'));
                return;
            }
            else {
                ApexPages.addMessage(new ApexPages.message(Apexpages.Severity.ERROR,'Please Enter Atleast Two Characters..'));
                return;
            }
        }
        
    }
}