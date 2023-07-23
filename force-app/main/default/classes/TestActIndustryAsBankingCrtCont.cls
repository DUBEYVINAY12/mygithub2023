@istest
public class TestActIndustryAsBankingCrtCont {
    
   @istest public Static void Testme1(){
       Account acct = new Account(Name= 'broski', Industry= 'Banking');
       try{
           insert acct;
       }
       catch (Exception e){
           system.debug('e');
       }
      Contact c = [Select LastName from Contact where AccountId =: acct.Id];
       system.assertEquals(c.LastName, acct.Name);
        
    }

}