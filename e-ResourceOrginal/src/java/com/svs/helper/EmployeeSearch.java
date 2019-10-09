package com.svs.helper;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.util.ConvertStackTracetoString;

/**
 * Servlet implementation class EmployeeSearch
 */
public class EmployeeSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static Logger logger = Logger.getLogger(EmployeeList.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeSearch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	    String companyname=request.getParameter("company");
		String department=request.getParameter("department");
		String qualification=request.getParameter("qualification");
		String name=request.getParameter("name");
		String empno=request.getParameter("empno");
		String sex=request.getParameter("sex");
		String query;
		//////System.out.println("company"+companyname);
		//////System.out.println("dept"+department);
		//////System.out.println("name"+name);
		//////System.out.println("empno"+empno);
		//////System.out.println("sex"+sex);
		//////System.out.println("qualification"+qualification);
		
		Connection conn=null;
		ConnectionUtils connectionUtils=new ConnectionUtils();
		
		PrintWriter out=response.getWriter();
		
	   //Class.forName("com.mysql.jdbc.Driver");
	  // Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrerp","root","root");
	    ResultSet rs;
		PreparedStatement pstmt=null;
		try{
				//////System.out.println("search3.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
				conn=connectionUtils.getDBConnection();
				//////System.out.println("search3.jsp::ConnectionPool----->>>>After Open --->>>>Test");
			
		/*if((name.equals("")) && (empno.equals(""))&& (sex.equals("")) && (department!="") && (companyname!="") && (qualification!=""))
		{
		//////System.out.println("1");
		   query="select * from  employee where (department='"+department+"') && (companyname='"+companyname+"') && (qualification='"+qualification+"')";
	            pstmt=conn.prepareStatement(query);
	            rs=pstmt.executeQuery();
				
	    }
		
	 if((name.equals(null)) && (empno.equals(null))&& (department.equals(null)) && (qualification.equals(null)) && (companyname!=null) && (sex!=null))
		{
		//////System.out.println("2");
		   query="select * from  employee where (companyname='"+companyname+"') && (sex='"+sex+"')";
	            pstmt=conn.prepareStatement(query);
	            rs=pstmt.executeQuery();
	    }*/

		/* if((name.equals("")) && (empno.equals(""))&& (department.equals("")) && (qualification.equals("")) && (sex.equals("")) && (companyname!=""))
		{
		//////System.out.println("company"+companyname);
		//////System.out.println("3");
		   query="select * from  employee where companyname='"+companyname+"'";
		   //////System.out.println("company"+companyname);
	            pstmt=conn.prepareStatement(query);
	            rs=pstmt.executeQuery();
	    }	*/
		
	 if(name!=null && (empno==null) && (department==null) && (sex==null) && (companyname==null))
		{
		//////System.out.println("************4");
		   query="select * from  employee where name like '"+name+"%'";
		 
	            pstmt=conn.prepareStatement(query);
	            rs=pstmt.executeQuery();
	    }
		
		else if(empno!=null && (name==null)&& (department==null)&& (sex==null) && (companyname==null))
		{
		//////System.out.println("******5");
		   query="select * from  employee where empno='"+empno+"'";
		        pstmt=conn.prepareStatement(query);
	            rs=pstmt.executeQuery();
	    }
	else if((qualification!="") && (empno.equals(""))&& (department.equals("")) && (sex.equals("")) && (companyname.equals(""))&& (name.equals("")))
		{
		//////System.out.println("***********Only Quali");
		   query="select * from  employee where qualification='"+qualification+"'";
		        pstmt=conn.prepareStatement(query);
	            rs=pstmt.executeQuery();
	    }
	   
	  else if((qualification!="") && (empno.equals(""))&& (department.equals("")) && (sex!="") && (companyname.equals(""))&& (name.equals("")))
		{
		//////System.out.println("********8qua and sex"+sex+"and"+qualification);
		  query="select * from  employee where (qualification='"+qualification+"') && (sex='"+sex+"')";
		       pstmt=conn.prepareStatement(query);
	            rs=pstmt.executeQuery();
	    }
		
	else if(qualification.equals("") && (empno.equals(""))&& (department.equals("")) && (sex!="") && (companyname.equals(""))&& (name.equals("")))
		{
		//////System.out.println("**********only Gender");
		   query="select * from  employee where sex='"+sex+"'";
		          pstmt=conn.prepareStatement(query);
	            rs=pstmt.executeQuery();
	    }

		else if((qualification.equals("")) && (department.equals("")) && (sex.equals("")) && (empno.equals("")) && (name.equals("")) && (companyname!=""))
		{
		//////System.out.println("Only company"+companyname);
		   query="select * from  employee where companyname='"+companyname+"'";
		           pstmt=conn.prepareStatement(query);
	            rs=pstmt.executeQuery();
	    }
		
		else if((qualification!="") && (department.equals("")) && (sex!="") && (empno.equals("")) && (name.equals("")) && (companyname!=""))
		{
		//////System.out.println("*****company,Quali,Gender"+companyname+qualification+sex);
		//////System.out.println("9");
		   query="select * from  employee where (qualification='"+qualification+"') && (companyname='"+companyname+"') && (sex='"+sex+"')";
		        pstmt=conn.prepareStatement(query);
	            rs=pstmt.executeQuery();
	    }
		
		else if((qualification.equals("")) && (department!="") && (companyname.equals("")) && (empno.equals("")) && (name.equals("")) && (sex.equals("")))
		{
		//////System.out.println("*******DEPT only");
		//////System.out.println("10");
		   query="select * from  employee where department='"+department+"'";
	            pstmt=conn.prepareStatement(query);
	            rs=pstmt.executeQuery();
	    }

		else if((qualification!="") && (department!="") && (companyname!="") && (empno.equals("")) && (name.equals("")) && (sex!=""))
		{
		//////System.out.println("********Q,D,C,S");
		   query="select * from  employee where (department='"+department+"') && (companyname='"+companyname+"') &&(sex='"+sex+"') && (qualification='"+qualification+"')";
	            pstmt=conn.prepareStatement(query);
	            rs=pstmt.executeQuery();
	    }

		else if((qualification!="") && (department!="") && (companyname!="") && (empno.equals("")) && (name.equals("")) && (sex.equals("")))
		{
		//////System.out.println("Q,C,D only");
	   query="select * from  employee where (qualification='"+qualification+"') && (department='"+department+"') && (companyname='"+companyname+"')";
		        pstmt=conn.prepareStatement(query);
	            rs=pstmt.executeQuery();
	    }

		else if((qualification!="") && (department.equals("")) && (companyname!="") && (empno.equals("")) && (name.equals("")) && (sex.equals("")))
		{
		//////System.out.println("Q,C only");
		   query="select * from  employee where (companyname='"+companyname+"') && (qualification='"+qualification+"')";
		            pstmt=conn.prepareStatement(query);
	            rs=pstmt.executeQuery();
	    }
		
		else if((qualification.equals("")) && (department!="") && (companyname.equals("")) && (empno.equals("")) && (name.equals("")) && (sex!=""))
		{
		//////System.out.println("Dept,Sex");
		  query="select * from  employee where (sex='"+sex+"') && (department='"+department+"')";
		      pstmt=conn.prepareStatement(query);
	            rs=pstmt.executeQuery();
	    }

		else if((qualification.equals("")) && (department.equals(""))&& (sex!="") && (name.equals("")) && (companyname!="") && (empno.equals("")))
		{
		//////System.out.println("*******company and sex");
		   query="select * from  employee where (companyname='"+companyname+"') && (sex='"+sex+"')";
	            pstmt=conn.prepareStatement(query);
	            rs=pstmt.executeQuery();
	    }
		
		else if((qualification!="") && (department!="")&& (sex.equals("")) && (name.equals("")) && (companyname.equals("")) && (empno.equals("")))
		{
		//////System.out.println("*************Q,D only");
		   query="select * from  employee where (qualification='"+qualification+"') && (department='"+department+"')";
	            pstmt=conn.prepareStatement(query);
	            rs=pstmt.executeQuery();
	    }
				
		else if((qualification.equals("")) && (department!="")&& (sex.equals("")) && (name.equals("")) && (companyname!="") && (empno.equals("")))
		{
		//////System.out.println("***************company,dept only");
		   query="select * from  employee where (companyname='"+companyname+"') && (department='"+department+"')";
	            pstmt=conn.prepareStatement(query);
	            rs=pstmt.executeQuery();
	    }
		else if((qualification.equals("")) && (department!="")&& (sex!="") && (name.equals("")) && (companyname!="") && (empno.equals("")))
		{
		//////System.out.println("***************company,dept only");
		   query="select * from  employee where (companyname='"+companyname+"') && (sex='"+sex+"')&& (department='"+department+"')";
	            pstmt=conn.prepareStatement(query);
	            rs=pstmt.executeQuery();
	    }
		
		else if((qualification.equals("")) && (department.equals(""))&& (sex.equals("")) && (name.equals("")) && (companyname.equals("")) && (empno.equals("")))
		{
		//////System.out.println("company"+companyname);
		//////System.out.println("18");
		   query="select * from  employee ";
		   //////System.out.println("All............"+companyname);
	            pstmt=conn.prepareStatement(query);
	            rs=pstmt.executeQuery();
	    }
		
		
	else
	  {
	    query="select * from  employee where (name='"+name+"') | (qualification='"+qualification+"') | (sex='"+sex+"') | (empno='"+empno+"') | (department='"+department+"') | (companyname='"+companyname+"')";
		            pstmt=conn.prepareStatement(query);
	//////System.out.println("else");
	
	                        rs=pstmt.executeQuery();
	}
	 int c=0;
	 while(rs.next()){
		 c++;
		 
		 out.println("<tr onMouseOver='this.className='highlight'' onMouseOut='this.className='normal'' class='tr1'><td><a href='Employeeinformation?empid="+rs.getString(1)+"' target='_blank' id='anchorcolor' title='Click Here To View Details'><img src='images/report1.png' align='absmiddle'>&nbsp;"+rs.getString(1)+"</a></td><td>"+rs.getString(2)+"</td><td><font size='1'>"+rs.getString(6)+"</font></td><td><font size='1'>"+rs.getString(8)+"</font></td><td><font size='1'>"+rs.getString(9)+"</font></td><td><font size='1'>"+rs.getString(24)+"</font></td><td><font size='1'>"+rs.getString(10)+"</font></td><td><font size='1'>"+rs.getString(33)+"</font></td><td><font size='1'>"+rs.getString(23)+"</font></td></tr>");
		 
	 }
	 if(c==0){
		 out.println("<font color=red size=5>No Data Found</font>");	 
	 }
	 
	 
		}catch(Exception ex)
		{
		 logger.error(util_stacktrace.sendingErrorAsString(ex));
		}finally {
			try
			{
				//////System.out.println("search3.jsp::ConnectionPool--Before Close --->>>>Test");
				if (conn != null) connectionUtils.setDBClose();
				//////System.out.println("search3.jsp::ConnectionPool--After Close--->>>>Test");

			} catch (Exception e)
			{
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
		response.setContentType("text/plain");
	}

}
