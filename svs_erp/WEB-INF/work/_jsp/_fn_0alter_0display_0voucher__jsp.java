/*
 * JSP generated by Resin-3.1.6 (built Sun, 04 May 2008 03:25:50 PDT)
 */

package _jsp;
import javax.servlet.*;
import javax.servlet.jsp.*;
import javax.servlet.http.*;
import java.sql.*;

public class _fn_0alter_0display_0voucher__jsp extends com.caucho.jsp.JavaPage
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
       
boolean admin_check = false;
boolean fn_check = false;
if(session.getAttribute("user_name").toString().equals("admin_account") & "admin_account".equals(session.getAttribute("pwd").toString()) )
{
	admin_check = true;
}
else if(session.getAttribute("user_name").toString().equals("fn_account") & "fn_account".equals(session.getAttribute("pwd").toString()) )
{
	fn_check = true;
}

      out.write(_jsp_string1, 0, _jsp_string1.length);
      
if(admin_check || fn_check)
{

 
      out.write(_jsp_string2, 0, _jsp_string2.length);
      //out.println("<form action=fn_alter_display_vouchersubmit.jsp>");
    Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
	Statement stmt=conn.createStatement();
	String str="select * from vocherdata";
	ResultSet rs=stmt.executeQuery(str);
	
	out.println("<select name=vochertype>");
	while(rs.next())
	{
	  out.println("<option>");
	  out.println(rs.getString(1));
	  out.println("</option>");
	}
	out.println("</select>");
	out.println("<input type=submit value=submit>");
	//out.println("</form>");
   
      out.write(_jsp_string3, 0, _jsp_string3.length);
       if(admin_check){ 
      out.write(_jsp_string4, 0, _jsp_string4.length);
       } 
      out.write(_jsp_string1, 0, _jsp_string1.length);
       if(fn_check){ 
      out.write(_jsp_string5, 0, _jsp_string5.length);
       } 
      out.write(_jsp_string6, 0, _jsp_string6.length);
       } 
      out.write(_jsp_string7, 0, _jsp_string7.length);
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
    depend = new com.caucho.vfs.Depend(appDir.lookup("fn_alter_display_voucher.jsp"), -5505386155130321015L, false);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, depend);
  }

  private final static char []_jsp_string6;
  private final static char []_jsp_string4;
  private final static char []_jsp_string0;
  private final static char []_jsp_string3;
  private final static char []_jsp_string5;
  private final static char []_jsp_string2;
  private final static char []_jsp_string7;
  private final static char []_jsp_string1;
  static {
    _jsp_string6 = "\r\n	  \r\n	  <input type=\"image\" src=\"images/home.jpg\">\r\n	 </form>\r\n	</td>\r\n	<td>\r\n	 <form action=\"fn_voucher_info.jsp\">\r\n	  <input type=\"image\" src=\"images/back.jpg\">\r\n	 </form>\r\n	</td>\r\n  </tr>\r\n</table>\r\n\r\n".toCharArray();
    _jsp_string4 = "\r\n<form action=\"kvk_finance_main.jsp\" method=\"post\">\r\n".toCharArray();
    _jsp_string0 = "\r\n<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">\r\n<title>KVK</title>\r\n</head>\r\n\r\n\r\n".toCharArray();
    _jsp_string3 = "\r\n  </td>\r\n  </tr>\r\n  </form>\r\n</table>\r\n<table align=\"center\">\r\n<tr>\r\n    <td colspan=\"2\" align=\"right\">\r\n	 ".toCharArray();
    _jsp_string5 = "\r\n<form action=\"account_operator.jsp\" method=\"post\">\r\n".toCharArray();
    _jsp_string2 = "\r\n\r\n\r\n\r\n<body background=\"images/bg.jpg\" leftmargin=\"0\" topmargin=\"0\" marginwidth=\"0\" marginheight=\"0\">\r\n<table width=\"800\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n  <tr>\r\n    <td><img src=\"images/banner.jpg\" width=\"800\"></td>\r\n  </tr>\r\n  \r\n</table>\r\n  <table width=\"800\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n  <tr>\r\n    <td background=\"images/after_main.jpg\" height=\"41\" align=\"center\"><strong><font color=\"#573801\" size=\"3\" face=\"verdana\">Welcome To Finance Department</font>      <font size=\"3\" face=\"verdana\">\r\n      <!--<img src=\"images/after_main.jpg\">-->\r\n    </font></strong>    	</td>\r\n  </tr>\r\n</table>\r\n<h4 align=\"center\"><font color=\"#573801\" face=\"verdana\" size=\"3\"> Alter or Display Voucher </font></h4>\r\n<table align=\"center\" width=\"800\" border=\"1\" bgcolor=\"#FADFC3\" bordercolor=\"#F0B269\">\r\n <form action=fn_alter_display_vouchersubmit.jsp>\r\n <tr>\r\n  <td width=\"392\">\r\n   <font color=\"#573801\" face=\"verdana\" size=\"2\">\r\n    Select Voucher\r\n   </font>\r\n  </td>\r\n  <td width=\"392\" valign=\"middle\">\r\n   ".toCharArray();
    _jsp_string7 = "\r\n\r\n\r\n</body>\r\n</html>\r\n".toCharArray();
    _jsp_string1 = "\r\n\r\n".toCharArray();
  }
}
