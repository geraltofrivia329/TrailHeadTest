@isTest
public class TestVerifyDate {
    @isTest
    static void Date1MonthReturn()
    {
        Date Date1 = Date.NewInstance(2020,04,02);
        Date Date2 = Date.newInstance(2020,06,04);
        Date resultdate1month = VerifyDate.CheckDates(Date1, Date2);
        System.assertEquals(Date.NewInstance(2020,04,30) , resultdate1month);
    }   
    
    @isTest
    static void Date2Return()
    {
        Date Date1 = Date.NewInstance(2020,05,07);
        Date Date2 = Date.newInstance(2020,05,09);
        Date resultdate2 = VerifyDate.CheckDates(Date1, Date2);
        System.assertEquals(Date.NewInstance(2020,05,09) , resultdate2);
    } 
    
    @isTest
    static void Date1MthReturn()
    {
        Date Date1 = Date.NewInstance(2020,05,07);
        Date Date2 = Date.newInstance(2020,05,04);
        Date resultdate1mth=VerifyDate.CheckDates(Date1, Date2);
        System.assertEquals(Date.NewInstance(2020,05,31) , resultdate1mth);
    } 
    @isTest 
    static void Date4()
    {
        Date Date1 = Date.NewInstance(2020,05,07);
        Date Date2 = Date.newInstance(0);
        Date resultdate1mth=VerifyDate.CheckDates(Date1, Date2);
        System.assertEquals(Date.NewInstance(2020,05,01) , resultdate1mth);
        
    }
}