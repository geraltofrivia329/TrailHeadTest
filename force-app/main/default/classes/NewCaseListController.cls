public class NewCaseListController {

    
    
    private String sortOrder = 'New';
public List<Case> getNewCases() {
    List<Case> results = Database.query(
        'SELECT Id, CaseNumber' +
        'FROM Case ' +
        'ORDER BY ' +' ASC '
    );
    return results;
}
    public void sortByNewCase() {
    this.sortOrder = 'New';
}
}