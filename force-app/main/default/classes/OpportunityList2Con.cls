public class OpportunityList2Con {
    public ApexPages.StandardSetController Setcon{
        get{
            if(Setcon == Null ){
                Setcon = new ApexPages.StandardSetController(Database.getQueryLocator([ 
                Select Name, CloseDate FROM Opportunity]));
            }
            return Setcon;
        }
        set;
    }
    public List<Opportunity> getOpportunities(){
        return setCon.getRecords();
    }

}