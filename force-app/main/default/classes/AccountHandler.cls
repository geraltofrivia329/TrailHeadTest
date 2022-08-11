public class AccountHandler {
    public static Account insertNewAccount(string msg){
        Account eh = new Account(Name = msg);
   try{   insert eh;
      }catch (DmlException e)
   {
        System.Debug('null' + e.getMessage());
   		return null;
   }
        		return eh;
  }
}