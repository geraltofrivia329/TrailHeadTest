public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(string fds){
        List<List<sObject>> candllist = [FIND :fds IN ALL FIELDS 
        RETURNING Lead(FirstName,LastName), Contact(FirstName,LastName)];
            return candllist;
    }
        
}