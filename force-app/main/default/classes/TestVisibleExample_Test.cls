@istest
public class TestVisibleExample_Test {

   @istest public static void test1(){
       integer i = TestVisibleExample.recordnumber;
        system.assertEquals(1, i );
        
        String name = testvisibleexample.updaterecord('hey bro');
        system.assertEquals('Hello', name);
    }
}