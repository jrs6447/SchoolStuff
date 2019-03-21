@isTest
public class ProjectZeroTest {
    @isTest static void testFibonacci() {
        //Single Action - Positive
        System.assertEquals(1, P0.fibonacci(1));
        System.assertEquals(1, P0.fibonacci(2));
        System.assertEquals(2, P0.fibonacci(3));
        System.assertEquals(89, P0.fibonacci(11));
        System.assertEquals(6765, P0.fibonacci(20));
        System.assertEquals(196418, P0.fibonacci(27));
        
        //Single Action - Negative
        System.assertEquals(-1, P0.fibonacci(-5));
    }
    
    @isTest static void testSortArray(){
        List<Integer> unsortedArray = new List<Integer>{2, 4, 5, 1, 3, 1};
        List<Integer> sortedArray = new List<Integer>{1, 1, 2, 3, 4, 5};
        List<Integer> returnedArray = P0.sortArray(unsortedArray);
        
        for (Integer i = 0; i < sortedArray.size(); i++){
            System.assertEquals(sortedArray[i], returnedArray[i]);
        }
    }
    
    @isTest static void testFactorial(){
        System.assertEquals(3628800, P0.factorial(10));
    }
    
    @isTest static void testRotateArray(){
        List<Integer> defaultArray = new List<Integer>{1, 2, 3, 4, 5};
            List<Integer> rotatedArray = new List<Integer>{4, 5, 1, 2, 3};
                List<Integer> roturntatedArray = P0.rotateLeft(defaultArray, 3);
    }
    
    @isTest static void testUpdateAccountSize() {
        //Test Single Action - Positive
        insert new Account(Name = 'Test12345', NumberOfEmployees=1);
        insert new Account(Name = 'Test123456', NumberOfEmployees=1001);
        insert new Account(Name = 'Test1234567', NumberOfEmployees=11000);
        P0.updateAccountSize();
        
        Account a1 = [SELECT Size__c FROM Account WHERE Name='Test12345' LIMIT 1];
        System.assertEquals('Small', a1.Size__c);
        Account a2 = [SELECT Size__c FROM Account WHERE Name='Test123456' LIMIT 1];
        System.assertEquals('Medium', a2.Size__c);
        Account a3 = [SELECT Size__c FROM Account WHERE Name='Test1234567' LIMIT 1];
        System.assertEquals('Large', a3.Size__c);
        
        //Test Bulk Action - Positive
        List<Account> accs = [SELECT NumberOfEmployees, Size__C FROM Account WHERE Name LIKE 'Test%'];
        for (Account a : accs){
            if(a.NumberOfEmployees < 1000) {
                System.assertEquals('Small', a.Size__c);
            } else if (a.NumberOfEmployees > 1000 && a.NumberOfEmployees < 10000){
                System.assertEquals('Medium', a.Size__c);
            } else
                System.assertEquals('Large', a.Size__c);
        }
    }
    
    @isTest static void testUpdateCALeads(){
        //Test Single Action - Positive
        List<Lead> leads = new List<Lead>();
        leads.add(new Lead(LastName = 'Test1234', State='CA', Company='123'));
        leads.add(new Lead(LastName = 'Test12345', State='CA', Company='123'));
        leads.add(new Lead(LastName = 'Test123456', State='CA', Company='123'));
        insert leads;
        
        P0.updateCALeads();
        
        List<Lead> ls = [SELECT Status, Description FROM LEAD];
        for (Lead l : ls){
            System.assertEquals('Closed - Not Converted', l.Status);
            System.assertEquals('We are no longer doing business in California', l.Description);
        }
    }
}