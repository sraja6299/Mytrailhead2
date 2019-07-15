@isTest
public class TestRestrictContactByName {
  
    public static testMethod void testExample(){
        Contact con = new Contact();
        con.Lastname= 'INVALIDNAME';
            system.test.startTest();
           	 insert con;   
        	system.test.stopTest();
    }
}