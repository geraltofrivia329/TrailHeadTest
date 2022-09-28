public class ContactSearch2 {
    public static List<List<SObject>> searchContacts(string s){
        List<List<SObject>> dlist = [FIND :s IN ALL FIELDS
       	RETURNING Contact(FirstName, LastName)];
            return dlist;
    }
}