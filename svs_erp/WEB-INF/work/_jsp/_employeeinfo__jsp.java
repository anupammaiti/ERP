/*
 * JSP generated by Resin-3.1.6 (built Sun, 04 May 2008 03:25:50 PDT)
 */

package _jsp;
import javax.servlet.*;
import javax.servlet.jsp.*;
import javax.servlet.http.*;
import java.sql.*;

public class _employeeinfo__jsp extends com.caucho.jsp.JavaPage
{
  private static final java.util.HashMap<String,java.lang.reflect.Method> _jsp_functionMap = new java.util.HashMap<String,java.lang.reflect.Method>();
  private boolean _caucho_isDead;
  
  public void
  _jspService(javax.servlet.http.HttpServletRequest request,
              javax.servlet.http.HttpServletResponse response)
    throws java.io.IOException, javax.servlet.ServletException
  {
    javax.servlet.http.HttpSession session = request.getSession(true);
    com.caucho.server.webapp.WebApp _jsp_application = _caucho_getApplication();
    javax.servlet.ServletContext application = _jsp_application;
    com.caucho.jsp.PageContextImpl pageContext = com.caucho.jsp.QJspFactory.allocatePageContext(this, _jsp_application, request, response, "/", session, 8192, true, false);
    javax.servlet.jsp.JspWriter out = pageContext.getOut();
    final javax.el.ELContext _jsp_env = pageContext.getELContext();
    javax.servlet.ServletConfig config = getServletConfig();
    javax.servlet.Servlet page = this;
    response.setContentType("text/html; charset=iso-8859-1");
    request.setCharacterEncoding("ISO-8859-1");
    try {
      out.write(_jsp_string0, 0, _jsp_string0.length);
      
 String str=request.getParameter("empid");
 out.println("<font color=#006600 size=4>");
 out.println("Data Of Employee with EMPID="+request.getParameter("empid"));
 out.println("</font>");
 Class.forName("com.mysql.jdbc.Driver");
 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
 String str1="select * from employee where empno=?";
 PreparedStatement stmt=conn.prepareStatement(str1);
 stmt.setString(1,str);
 ResultSet rs=stmt.executeQuery();
   out.println("<table align=center border=1 bordercolor=#006600 bgcolor=#FADFC3>");
  while(rs.next())
   {   
      
		out.println("<tr>");
		out.println("<td>");
		out.println("Company Name");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(23));
	   out.println("</td>");
	   out.println("</tr>");
	   
     out.println("<tr>");
	 out.println("<td>");
		out.println("Emp No.");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(1));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Name in Full");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(2));
	   out.println("</td>");
	   out.println("</tr>");
	 out.println("<tr>");
	 out.println("<td>");
		out.println("Name in Hris");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(3));
	   out.println("</td>");
	   out.println("</tr>");
       out.println("<tr>");
	   out.println("<td>");
		out.println("Father's Name");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(4));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Date Of Birth");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(5));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Sex");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(6));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Joining Date");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(7));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Designation");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(8));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Department");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(9));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Reporting To");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(10));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Job Level");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(11));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Location");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(12));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Manner Of Entry");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(13));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	    out.println("<td>");
		out.println("Nationality");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(14));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Birth Place");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(15));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Maritul Status");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(16));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Marriage Date");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(17));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Religion");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(18));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("PAN Number");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(19));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Passport Number");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(20));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
	   out.println("<td>");
		out.println("Issue Date & Time");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(21));
	   out.println("</td>");
	   out.println("</tr>");
	   out.println("<tr>");
		out.println("<td>");
		out.println("Validity");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(22));
	   out.println("</td>");
	   out.println("</tr>");
	    out.println("<tr>");
		out.println("<td>");
		out.println("Qualification");
		out.println("</td>");
		out.println("<td>");
       out.println(rs.getString(24));
	   out.println("</td>");
	   out.println("</tr>");
   }
   
 


      out.write(_jsp_string1, 0, _jsp_string1.length);
    } catch (java.lang.Throwable _jsp_e) {
      pageContext.handlePageException(_jsp_e);
    } finally {
      com.caucho.jsp.QJspFactory.freePageContext(pageContext);
    }
  }

  private java.util.ArrayList _caucho_depends = new java.util.ArrayList();

  public java.util.ArrayList _caucho_getDependList()
  {
    return _caucho_depends;
  }

  public void _caucho_addDepend(com.caucho.vfs.PersistentDependency depend)
  {
    super._caucho_addDepend(depend);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, depend);
  }

  public boolean _caucho_isModified()
  {
    if (_caucho_isDead)
      return true;
    if (com.caucho.server.util.CauchoSystem.getVersionId() != -7072480922035483583L)
      return true;
    for (int i = _caucho_depends.size() - 1; i >= 0; i--) {
      com.caucho.vfs.Dependency depend;
      depend = (com.caucho.vfs.Dependency) _caucho_depends.get(i);
      if (depend.isModified())
        return true;
    }
    return false;
  }

  public long _caucho_lastModified()
  {
    return 0;
  }

  public java.util.HashMap<String,java.lang.reflect.Method> _caucho_getFunctionMap()
  {
    return _jsp_functionMap;
  }

  public void init(ServletConfig config)
    throws ServletException
  {
    com.caucho.server.webapp.WebApp webApp
      = (com.caucho.server.webapp.WebApp) config.getServletContext();
    super.init(config);
    com.caucho.jsp.TaglibManager manager = webApp.getJspApplicationContext().getTaglibManager();
    com.caucho.jsp.PageContextImpl pageContext = new com.caucho.jsp.PageContextImpl(webApp, this);
  }

  public void destroy()
  {
      _caucho_isDead = true;
      super.destroy();
  }

  public void init(com.caucho.vfs.Path appDir)
    throws javax.servlet.ServletException
  {
    com.caucho.vfs.Path resinHome = com.caucho.server.util.CauchoSystem.getResinHome();
    com.caucho.vfs.MergePath mergePath = new com.caucho.vfs.MergePath();
    mergePath.addMergePath(appDir);
    mergePath.addMergePath(resinHome);
    com.caucho.loader.DynamicClassLoader loader;
    loader = (com.caucho.loader.DynamicClassLoader) getClass().getClassLoader();
    String resourcePath = loader.getResourcePathSpecificFirst();
    mergePath.addClassPath(resourcePath);
    com.caucho.vfs.Depend depend;
    depend = new com.caucho.vfs.Depend(appDir.lookup("employeeinfo.jsp"), -7589891734119992799L, false);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, depend);
  }

  private final static char []_jsp_string0;
  private final static char []_jsp_string1;
  static {
    _jsp_string0 = "\r\n<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">\r\n<title>SVS</title>\r\n<style type=\"text/css\">\r\n<!--\r\nbody {\r\n	background-image: url(images/bg.jpg);\r\n	margin-left: 0px;\r\n	margin-top: 0px;\r\n	margin-right: 0px;\r\n	margin-bottom: 0px;\r\n}\r\n-->\r\n</style></head>\r\n\r\n<body>\r\n<table width=\"800\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n  <tr>\r\n    <td width=\"800\"><img src=\"images/banner.jpg\" width=\"800\"></td>\r\n  </tr>\r\n  <!--  <tr>\r\n   <td>\r\n  <table width=\"800\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n  <tr>\r\n    <td><img src=\"images/finance.jpg\" width=\"119\"></td>\r\n    <td><img src=\"images/project-management.jpg\" width=\"119\"></td>\r\n    <td><img src=\"images/inventory.jpg\" width=\"119\"></td>\r\n    <td><img src=\"images/sales.jpg\" width=\"119\"></td>\r\n    <td><img src=\"images/maintenance.jpg\" width=\"119\"></td>\r\n    <td><img src=\"images/power.jpg\" width=\"119\"></td>\r\n    <td><img src=\"images/human-resources.jpg\" width=\"119\"></td>\r\n  </tr>\r\n</table>\r\n\r\n   </td>\r\n  </tr>-->\r\n  \r\n</table>\r\n<table align=\"center\" background=\"images/bg.jpg\" width=\"800\">\r\n<tr>\r\n<td>\r\n<form action=\"employeeinformationform1.jsp\">\r\n <input type=\"image\" src=\"images/back.jpg\">\r\n</form>\r\n \r\n".toCharArray();
    _jsp_string1 = "\r\n</td>\r\n</tr>\r\n</table>\r\n</body>\r\n</html>\r\n".toCharArray();
  }
}
