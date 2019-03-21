public class PostToChatterContact {
    public static void postChatterContact(List<Contact> newContacts) {
        System.debug('postChatterContact is starting');
        
        //Check for emails for the contacts
        for (Contact c : newContacts) {
            if (c.email == null) { //If they have no email in the contact
                System.debug('Contact with Last Name: ' + c.LastName + ' did not have an email specified');    
            } else { //Posts to chatter.  The post is made by the running user (He who fires the trigger)
                ConnectApi.FeedElement feedElement = ConnectApi.ChatterFeeds.postFeedElement(Network.getNetworkId(), 
                                                                                             c.Id , ConnectApi.FeedElementType.FeedItem, 'Email This Person.');
            }
        }
        
        /*
         * Execute Anonymous Window
         * Contact c = new Contact(LastName = 'uuuggghhhh', email = 'ugh@gmail.com');
Contact c2 = new Contact(LastName = 'uuuggghhhh2', email = 'ugh2@gmail.com');
Contact c3 = new Contact(LastName = 'uuuggghhhh3', email = 'ugh3@gmail.com');

List<Contact> conList = new List<Contact> {c, c2, c3};
insert conList;
*/
        
        System.debug('postChatterContact is ending');
    }
}