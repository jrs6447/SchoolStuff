trigger ContactTrigger on Contact (before insert, after insert) {
    if (Trigger.isAfter && Trigger.isInsert) {
        PostToChatterContact.postChatterContact(Trigger.new);
    } else if (Trigger.isBefore && Trigger.isInsert){
        DuplicateChecker.checkForContactDuplicates(Trigger.new);
    }
   /*    Second way to do it
    if (Trigger.isBefore) {
        if (Trigger.isInsert){
            //do some stuff
        }
    } else {
        if (Tigger.isInsert){
            PostToChatterContact.postChatterContact(Trigger.new);
        }
    }*/
}