package com.svs.ensign.resort.util;

import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class C_Util_Date {

    public static int daysBetween(String fromdate, String enddate) {
        int nodays = 0;
        int days = 0;
        int month = 0;
        int year = 0;
        int days1 = 0;
        int month1 = 0;
        int year1 = 0;
        ////System.out.println(fromdate.length());
        Calendar cal1 = new GregorianCalendar();
        Calendar cal2 = new GregorianCalendar();
        // from date
        days = Integer.parseInt(fromdate.substring(0, 2));
        ////System.out.println("days is:" + days);
        month = Integer.parseInt(fromdate.substring(3, 5));
        ////System.out.println("Months is" + month);
        year = Integer.parseInt(fromdate.substring(6, 8));
        ////System.out.println("Year is" + year);

        // end date
        days1 = Integer.parseInt(enddate.substring(0, 2));
        // //System.out.println("End date year"+days1);
        month1 = Integer.parseInt(enddate.substring(3, 5));
        // //System.out.println("End Date Month"+month1);
        year1 = Integer.parseInt(enddate.substring(6, 8));
        // //System.out.println("End Date Year is"+year1);
        cal1.set(year, month, days);
        cal2.set(year1, month1, days1);

        // //System.out.println("Days= "+days(cal1.getTime(),cal2.getTime()));
        nodays = days(cal1.getTime(), cal2.getTime());
        // //System.out.println("No of Days is:"+nodays);
        return nodays;
    }

    public static int days(Date d1, Date d2) {
        return (int) ((d2.getTime() - d1.getTime()) / (1000 * 60 * 60 * 24));
    }

    public static String generateDate() {
        String presentdate = null;
        Date nowdate = new Date();
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        presentdate = dateFormat.format(nowdate);
        return presentdate;

    }

    public static String noOfDaysFormDate(String date1) {
        String beforeoneweek = null;

        Calendar now = Calendar.getInstance();
        /*  //System.out.println("Current date : " + (now.get(Calendar.MONTH) + 1) + "-"
	        + now.get(Calendar.DATE) + "-" + now.get(Calendar.YEAR));*/

        // add days to current date using Calendar.add method
        now.add(Calendar.DATE, 7);
        Date afterweek = now.getTime();
        //    //System.out.println("DAY after oneweek\t"+toddMMyy(afterweek));
        /*  //System.out.println("date after one day : " + (now.get(Calendar.MONTH) + 1) + "-"
	        + now.get(Calendar.DATE) + "-" + now.get(Calendar.YEAR));
         */
        beforeoneweek = toddMMyy(afterweek);
        /*(now.get(Calendar.YEAR)+"-"+(now.get(Calendar.MONTH) + 1)+"-"+now.get(Calendar.DATE));*/

//	    //System.out.println("Before One Week\t"+beforeoneweek);
        return beforeoneweek;
    }

    public static String toddMMyy(Date day) {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        String date = formatter.format(day);
        return date;
    }

    public static String fetchDecimalFormat(int number) {
        return new DecimalFormat("##,##,##,###.00").format(number);

    }

}
