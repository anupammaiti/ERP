package com.svs.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class C_Util_Date {

	public int daysBetween(String fromdate, String enddate) {
		int nodays = 0;
		int days = 0;
		int month = 0;
		int year = 0;
		int days1 = 0;
		int month1 = 0;
		int year1 = 0;
		//////System.out.println(fromdate.length());
		Calendar cal1 = new GregorianCalendar();
		Calendar cal2 = new GregorianCalendar();
		// from date
		days = Integer.parseInt(fromdate.substring(0, 2));
		//////System.out.println("days is:" + days);
		month = Integer.parseInt(fromdate.substring(3, 5));
		//////System.out.println("Months is" + month);
		year = Integer.parseInt(fromdate.substring(6, 8));
		//////System.out.println("Year is" + year);

		// end date

		days1 = Integer.parseInt(enddate.substring(0, 2));
		// //////System.out.println("End date year"+days1);
		month1 = Integer.parseInt(enddate.substring(3, 5));
		// //////System.out.println("End Date Month"+month1);
		year1 = Integer.parseInt(enddate.substring(6, 8));
		// //////System.out.println("End Date Year is"+year1);
		cal1.set(year, month, days);
		cal2.set(year1, month1, days1);

		// //////System.out.println("Days= "+days(cal1.getTime(),cal2.getTime()));
		nodays = days(cal1.getTime(), cal2.getTime());
		// //////System.out.println("No of Days is:"+nodays);
		return nodays;
	}

	public int days(Date d1, Date d2) {
		return (int) ((d2.getTime() - d1.getTime()) / (1000 * 60 * 60 * 24));
	}

	public String generateDate(){
		String presentdate=null;
		Date nowdate=new Date(); 
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		presentdate=dateFormat.format(nowdate);
		return presentdate;
		
	}
	public String noOfDaysPerTheMonth(){
		Calendar calendar = Calendar.getInstance();
		String presentdate=generateDate();
		String presenetyear=presentdate.substring(0, 5);
		String presentmonth=presentdate.substring(7,9);
		//////System.out.println("Present Year"+presenetyear);
		//////System.out.println("Present Month"+presentmonth);
		  int year = 2008;
		  int month = Calendar.FEBRUARY;
		  int date = 1;
		  calendar.set(year, month, date);
		  int days = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
		  //////System.out.println("Number of Days: " + days);
		  
		  return "";
	}
	
}
