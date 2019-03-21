trigger CETrigger on ClassEnrollment__c (before insert) {
    if(Trigger.isBefore && Trigger.isInsert){
        CEExample.noClue(Trigger.new);
    }
}