public class DuplicateChecker {
    public static void checkForContactDuplicates(List<Contact> newContacts) {
        //Step 1: We have a list of contacts.  Extract email from those new contacts
        Set<String> newEmailSet = new Set<String>(); //using set to group all identical emails into one slot in the collection
        for(Contact newContact : newContacts){
            if(newContact.email != null) {
                newEmailSet.add(newContact.email);
            }
        }
        //Step 2:  Find dupliacte contacts from database
        Map<String, Contact> existingContactMap = new Map<String, Contact>();
        for(Contact c : [SELECT Id, Name, Email
                        FROM Contact
                        WHERE Email in :newEmailSet]){
                             
                             existingContactMap.put(c.email, c);
                         }
        
        //Step 3:  Compare and throw error
        for(Contact newContact : newContacts){
            Contact duplicateContact = existingContactMap.get(newContact.email);
            if(duplicateContact != null){
                newContact.addError('ERROR: There is already an identical record:  ' + duplicateContact.Id);
            }
        }
    }
}