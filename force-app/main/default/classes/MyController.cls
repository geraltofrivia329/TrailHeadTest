public class MyController {
    Account account;
    public PageReference save() {
        update account;
        return null;
    }
    
    public string getName(){
        return 'MyController';
    }
    
    public Account getAccount(){
        if(account == null)
        account = [select id, name from Account
               where id = :ApexPages.currentPage().getParameters().get('id')];
        return account;
    }
}