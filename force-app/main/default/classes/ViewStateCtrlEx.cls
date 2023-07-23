public with sharing class ViewStateCtrlEx {
    public  integer a{get;set;}
    private  integer b{get;set;}
    transient integer c{get;set;}
    public integer d{get;set;}
    public integer z{get;set;}
    public opportunity opp{get;set;}
    
    public ViewStateCtrlEx()
    {
        a = 20;
        b = 30;
        c = 40;
        opp = new opportunity(name = 'test', stageName='test');
    }
    
    public void Changedata()
    {
        
        if(a == 20)
        {
          a = 5;
        }
        
            if (b == 30)
            {        
                z=3;
        }
        
            if (c == 40)
            {
                d= 7;
            }
            else
            {
                d=40;
            }
    }
    

}