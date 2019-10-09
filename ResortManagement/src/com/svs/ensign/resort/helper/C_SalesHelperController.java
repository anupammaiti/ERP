package com.svs.ensign.resort.helper;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.svs.ensign.resort.util.C_Util_Date;
import com.svs.ensign.resort.util.C_Util_Mail;

@Controller
public class C_SalesHelperController {

	@Autowired
	DataSource ds;
	@Autowired
	C_Util_Date util_date;
	@Autowired
	C_Util_Mail util_mail;
	
	private List message;
	
	private String mailmessage=null;	
	// Display Remainder
	@RequestMapping(value = "hlp_remainder.res", method = {RequestMethod.GET,RequestMethod.POST})
	public void displayRemainder(HttpServletRequest request,
			HttpServletResponse response) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		String presentdate=util_date.generateDate();
		
		String remainderquery = "SELECT clientname,time1 FROM tl_sl_manager_task WHERE dateofmeeting=? and deltby=?";
		
		try {
			con = ds.getConnection();
			PrintWriter out = response.getWriter();
			pr = con.prepareStatement(remainderquery);
			pr.setString(1,presentdate);
			pr.setString(2, request.getParameter("deltby"));
			rs = pr.executeQuery();
			while (rs.next()) {
				out.println("Today's Meeting with\t"+rs.getString(1)+"\tat\t"+rs.getString(2));
			}
			con.close();
			pr.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		response.setContentType("plian/text");
	}
	//Sales Manager's List.
	@RequestMapping(value = "hlp_list_managers.res", method = {RequestMethod.GET,RequestMethod.POST})
	public void displaySalesManagers(HttpServletRequest request,
			HttpServletResponse response) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		String presentdate=util_date.generateDate();
		String remainderquery = "SELECT username FROM tl_employee where department=? AND designation=?";
		try {
			con = ds.getConnection();
			PrintWriter out = response.getWriter();
			pr = con.prepareStatement(remainderquery);
			pr.setString(1, "SalesAndMarketing");
			pr.setString(2,"sales_manager");
			rs = pr.executeQuery();
			while (rs.next()) {
				out.println("<option>"+rs.getString(1)+"</option>");
			}
			con.close();
			pr.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		response.setContentType("plian/text");
	}
	//Displaying Alert Before One Week.
	@RequestMapping(value = "hlp_alert_before_week.res", method = {RequestMethod.GET,RequestMethod.POST})
	public void displayAlertBeforeOneWeek(HttpServletRequest request,
			HttpServletResponse response) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		String presentdate=util_date.generateDate();
		////System.out.println("Today's Date"+presentdate);
		String dayafterweek=util_date.noOfDaysFormDate(presentdate);
		ArrayList alertlist=new ArrayList();
		////System.out.println("After that Date"+dayafterweek);
		String bodytext=null;
		String remainderquery = "SELECT clientname,dateofmeeting,time1 FROM tl_sl_manager_task WHERE dateofmeeting LIKE ? and deltby=?";
		try {
			con = ds.getConnection();
			PrintWriter out = response.getWriter();
			pr = con.prepareStatement(remainderquery);
			pr.setString(1,dayafterweek);
			pr.setString(2, request.getParameter("deltby"));
			rs = pr.executeQuery();
			while (rs.next()) {
				////System.out.println("Meeting With"+rs.getString(1)+"On"+rs.getString(2)+"at"+rs.getString(3));
				out.println("Meeting With\t"+rs.getString(1)+"\tOn\t"+rs.getString(2)+"\tat\t"+rs.getString(3));
				alertlist.add(rs.getString(1));
			}
			con.close();
			pr.close();
			bodytext="<tr><td>"+alertlist+"</td></tr>";
			
			try
			{
		String sendto[]={"rayaprolu.ravikiran@gmail.com"};
		new C_Util_Mail().sendSSLMessage(sendto, "Check the mail.",
				"Mail is sending");//calling the mail function
				//System.out.println("Sucessfully Sent mail to All Users");
				//response.sendRedirect("home.jsp");
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			//util_mail.sendMail("rayaprolu.ravikiran@gmail.com","Please Check the mail today","Hai How are You");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		response.setContentType("plian/text");
	}
	//Displaying Manager AccessingController.
		@RequestMapping(value = "hlp_manager_task.res", method = {RequestMethod.GET,RequestMethod.POST})
		public void displayManagerAccess(HttpServletRequest request,
				HttpServletResponse response) {
			Connection con;
			PreparedStatement pr;
			ResultSet rs;
			String presentdate=util_date.generateDate();
			////System.out.println("Today's Date"+presentdate);
			String dayafterweek=util_date.noOfDaysFormDate(presentdate);
			////System.out.println("After that Date"+dayafterweek);
			String remainderquery = "SELECT DISTINCT(deltby) FROM tl_sl_manager_task WHERE dateofmeeting LIKE ?";
			try {
				con = ds.getConnection();
				PrintWriter out = response.getWriter();
				pr = con.prepareStatement(remainderquery);
				pr.setString(1,dayafterweek);
				rs = pr.executeQuery();
				while (rs.next()) {
					////System.out.println("Meeting With"+rs.getString(1)+"On"+rs.getString(2)+"at"+rs.getString(3));
					out.println(rs.getString(1));
					
				}
				con.close();
				pr.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			response.setContentType("plian/text");
		}
	
}
