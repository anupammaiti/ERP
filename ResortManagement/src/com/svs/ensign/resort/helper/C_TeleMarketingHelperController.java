package com.svs.ensign.resort.helper;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class C_TeleMarketingHelperController {

	@Autowired
	DataSource ds;
	//Drop down for under in Ledger Creation Jsp.
		@RequestMapping(value="hlp_tel_agent.res",method={RequestMethod.GET,RequestMethod.POST})
		public void generateTelecallers(HttpServletRequest request,HttpServletResponse response) {
			Connection con;
			PreparedStatement pr;
			ResultSet rs;	
			try {
				con=ds.getConnection();
				PrintWriter out=response.getWriter();
				pr=con.prepareStatement("SELECT username FROM tl_employee WHERE designation='tele_agent'");
				rs=pr.executeQuery();
				while(rs.next()) {
				//	//System.out.println("List is\t"+rs.getString(1));
					out.println("<option>"+rs.getString(1)+"</option>");
				}
				con.close();
				pr.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
			response.setContentType("plian/text");
		}
		
		@RequestMapping(value="hlp_tel_agent_name.res",method={RequestMethod.GET,RequestMethod.POST})
		public void generateTeleAgentName(HttpServletRequest request,HttpServletResponse response) {
			Connection con;
			PreparedStatement pr;
			ResultSet rs;	
			try {
				con=ds.getConnection();
				PrintWriter out=response.getWriter();
				pr=con.prepareStatement("SELECT firstname,lastname FROM tl_employee WHERE username=?");
				pr.setString(1,request.getParameter("agentid"));
				rs=pr.executeQuery();
				while(rs.next()) {
				//	//System.out.println("List is\t"+rs.getString(1));
					String name=rs.getString(1)+"  "+rs.getString(2);
					out.println(name);
				}
				con.close();
				pr.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
			response.setContentType("plian/text");
		}
}
