public class ContactSearch {
    public static List<Contact>searchForContacts(String sfc1, String sfc2){
        List<Contact> ASF = new List<Contact>();
        ASF =[SELECT Id, Name FROM Contact WHERE LastName = :sfc1 AND MailingPostalCode=:sfc2];
        return ASF;
    }
    }