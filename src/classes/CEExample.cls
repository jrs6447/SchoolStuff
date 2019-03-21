public class CEExample {
    public static void noClue(List<ClassEnrollment__c> classEnList){
        
        List<id> classIds = new List<id>();
        for(ClassEnrollment__c ce : classEnList){
            classIds.add(ce.Class__c);
        }
        
        List<Grade__c> gradesToInsert = new List<Grade__c>();
        for(Assessment__c assmt : [SELECT Id, Class__c FROM Assessment__c WHERE Class__c IN :classIds]) {
            for(ClassEnrollment__c ce : classEnList){
                //Only create a grade if CE and Assessment point to the same class
                if(ce.Class__c == assmt.Class__c) {
                    Grade__c g = new Grade__c();
                    g.Assessment__c = assmt.Id;
                    g.ClassEnrollmentGrade__c = ce.Id;
                    gradesToInsert.add(g);
                }
            }
        }
        insert gradesToInsert;
    }
}