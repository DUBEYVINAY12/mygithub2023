@istest
public class TestingCaseOriginweb1 {
    public static void MyTestMethod(){
       Account a = [Select id , Name from Account where Name ='Salman' Limit 1];
        system.Assert(a != Null);
     
        case ant = new case();
        ant.AccountId = (a.Id);
        ant.Last_Survey_Sent__c = 'good';
        insert ant;
        
    }
    
}