@IsTest
private class TestRestrictContactByName {
    @IsTest static void TestRestrictContact (){
        Contact con = new Contact(LastName = 'INVALIDNAME');
        insert con;
        Test.startTest();
        Database.DeleteResult result = Database.delete(con, false);
        Test.stopTest();
    }
}