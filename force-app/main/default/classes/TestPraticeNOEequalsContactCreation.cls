@istest
public class TestPraticeNOEequalsContactCreation {
    @istest public Static void TestMePlease(){
        Account acc = new Account(Name = 'Kasturi', NumberOfEmployees = 2);
        try{
            insert acc;
        }
        Catch(Exception e){
            system.debug('e');
        }
    }
    

}