public class EasyDifficulty {
    public static void firstOne(){
        //After a contact is created and it's Account is specified, increase the Account's Number of Employees by field one.
        
        Contact c = new Contact(LastName = 'Stevens');
        List<Account> WillId = new List<Account>();
        WillId = [SELECT Id FROM Account WHERE Name LIKE 'William%'];
        System.debug(WillId);
        
    }
}