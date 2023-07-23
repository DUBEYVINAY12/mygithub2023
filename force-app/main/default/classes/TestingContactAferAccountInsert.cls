@istest
public class TestingContactAferAccountInsert {

    @istest public Static void testme(){
       
        Account acc = new Account(Name ='gani bhai', phone='123456987');
        try{
        insert acc;
        }
        catch(Exception e){ 
        
            system.debug('e');
         }
        
       Contact c =  [Select LastName , Phone From Contact where Accountid =: acc.Id];
        system.assertEquals(c.LastName, acc.Name);
        system.assertEquals( c.Phone, acc.Phone);
    }
}