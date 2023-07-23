public class Pagination1CustomCtrl {
    private integer totalRecs= 0;
    private integer offsetsize= 0;
    private integer limitSize=5;
    public boolean HasPrevious{get;set;}
    
    
    public Pagination1CustomCtrl()
    {
        totalRecs= [select count() from account ];
        
    } 
    
    public list<account> getacclist()
    {
       list<account> acc = Database.query('Select Name , website, Annualrevenue, description,Type from account LIMIT '+limitSize+' OFFSET '+offsetsize);
        return acc;
    }
    
    public void Previous()
    {
       offsetsize= offsetsize - limitSize; 
    }
    public void Next()
    {
        offsetsize= offsetsize + limitSize;
    }
    public boolean HasPrevious()
    {
     if (offsetsize <= 0)
         return true;
        else
            return false;
    }
    
    public Boolean HasNext()
    {
        if(offsetsize <= 100) //  none of any use
            return false;
        else
            return true;
    }
}