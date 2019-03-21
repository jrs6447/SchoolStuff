@isTest(SeeAllData=true)
public class RunAsTest {
    @isTest static void viewClasses(){
        User u = [SELECT Id FROM User WHERE Id = '0051U000004UoGMQA0'];
        
        List<Class__c> classes = [SELECT Id, Name FROM Class__c];
        System.debug('classes: ' + classes);
        
        System.runAs(u) {
            classes = [SELECT Id, Name FROM Class__c];
            System.debug('classes: ' + classes);
        }
    }
}