/*
 * JSP generated by Resin-3.1.6 (built Sun, 04 May 2008 03:25:50 PDT)
 */

package _jsp;
import javax.servlet.*;
import javax.servlet.jsp.*;
import javax.servlet.http.*;
import java.util.*;
import java.util.Vector.*;
import java.sql.*;

public class _stock_0items_0display__jsp extends com.caucho.jsp.JavaPage
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
    com.caucho.jsp.PageContextImpl pageContext = com.caucho.jsp.QJspFactory.allocatePageContext(this, _jsp_application, request, response, null, session, 8192, true, false);
    javax.servlet.jsp.JspWriter out = pageContext.getOut();
    final javax.el.ELContext _jsp_env = pageContext.getELContext();
    javax.servlet.ServletConfig config = getServletConfig();
    javax.servlet.Servlet page = this;
    response.setContentType("text/html");
    try {
      out.write(_jsp_string0, 0, _jsp_string0.length);
       Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
   
      out.write(_jsp_string1, 0, _jsp_string1.length);
       
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

      out.write(_jsp_string2, 0, _jsp_string2.length);
      
if(admin_check || fn_check)
{

 
      out.write(_jsp_string3, 0, _jsp_string3.length);
       if(admin_check){ 
      out.write(_jsp_string4, 0, _jsp_string4.length);
       } 
      out.write(_jsp_string2, 0, _jsp_string2.length);
       if(fn_check){ 
      out.write(_jsp_string5, 0, _jsp_string5.length);
       } 
      out.write(_jsp_string6, 0, _jsp_string6.length);
       
	String ser=request.getParameter("groupname");
	Statement st2=con.createStatement();
	 String q2="select * from stockitems where name=? ";
	 PreparedStatement p = con.prepareStatement(q2);
	 p.setString(1,ser);
	 	
	 ResultSet rs2=p.executeQuery();
	 String ss1=null;
	 String ss2=null;
	 String ss3=null;
	 String ss4=null;
	 String ss5=null;
	 String ss6=null;
	 int ss7=0;
     double ss8=0;
	 String ss9=null;
	 double ss10=0;

	  while(rs2.next())
	  {
		  ss1=rs2.getString(1);
		  ss2=rs2.getString(2);
		  ss3=rs2.getString(3);
		  ss4=rs2.getString(4);
		  ss5=rs2.getString(5);
		  ss6=rs2.getString(6);
		  ss7=rs2.getInt(7);
		  ss8=rs2.getDouble(8);
		  ss9=rs2.getString(9);
		  ss10=rs2.getDouble(10);
		   
		  
	  }
	  
	   String dd= ss1;
	    session.setAttribute("dummy",dd);
	 

      out.write(_jsp_string7, 0, _jsp_string7.length);
      out.println(ss1);
      out.write(_jsp_string8, 0, _jsp_string8.length);
      out.println(ss2);
      out.write(_jsp_string9, 0, _jsp_string9.length);
      out.println(ss3);
      out.write(_jsp_string10, 0, _jsp_string10.length);
      out.println(ss4);
      out.write(_jsp_string11, 0, _jsp_string11.length);
      out.println(ss5);
      out.write(_jsp_string12, 0, _jsp_string12.length);
      out.println(ss6);
      out.write(_jsp_string13, 0, _jsp_string13.length);
      out.println(ss7);
      out.write(_jsp_string14, 0, _jsp_string14.length);
      out.println(ss8);
      out.write(_jsp_string15, 0, _jsp_string15.length);
      out.println(ss9);
      out.write(_jsp_string16, 0, _jsp_string16.length);
      out.println(ss10);
      out.write(_jsp_string17, 0, _jsp_string17.length);
       } 
      out.write(_jsp_string18, 0, _jsp_string18.length);
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
    depend = new com.caucho.vfs.Depend(appDir.lookup("stock_items_display.jsp"), 5916014074834273273L, false);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, depend);
  }

  private final static char []_jsp_string4;
  private final static char []_jsp_string12;
  private final static char []_jsp_string13;
  private final static char []_jsp_string0;
  private final static char []_jsp_string17;
  private final static char []_jsp_string10;
  private final static char []_jsp_string6;
  private final static char []_jsp_string1;
  private final static char []_jsp_string11;
  private final static char []_jsp_string16;
  private final static char []_jsp_string5;
  private final static char []_jsp_string3;
  private final static char []_jsp_string8;
  private final static char []_jsp_string15;
  private final static char []_jsp_string9;
  private final static char []_jsp_string14;
  private final static char []_jsp_string7;
  private final static char []_jsp_string2;
  private final static char []_jsp_string18;
  static {
    _jsp_string4 = "\r\n<form action=\"kvk_finance_main.jsp\" method=\"post\">\r\n".toCharArray();
    _jsp_string12 = "  \r\n</td>\r\n</tr>\r\n\r\n<tr>\r\n<td>\r\n<font color=\"#573801\" face=\"verdana\" size=\"2\">Tax Tariff :</font>\r\n</td>\r\n<td>\r\n".toCharArray();
    _jsp_string13 = "  \r\n</td>\r\n</tr>\r\n\r\n\r\n<tr>\r\n<td>\r\n<font color=\"#573801\" face=\"verdana\" size=\"2\">Qunatity  :</font>\r\n</td>\r\n<td>\r\n".toCharArray();
    _jsp_string0 = "<!-- Strip whitespace -->\r\n\r\n\r\n\r\n\r\n".toCharArray();
    _jsp_string17 = "  \r\n</td>\r\n</tr>\r\n\r\n</table>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n".toCharArray();
    _jsp_string10 = "\r\n</td>\r\n</tr>\r\n\r\n\r\n\r\n\r\n\r\n<tr>\r\n<td>\r\n<font color=\"#573801\" face=\"verdana\" size=\"2\">Units   :</font>\r\n</td>\r\n<td>\r\n".toCharArray();
    _jsp_string6 = "\r\n\r\n<tr>\r\n<td width=\"300\"/>\r\n\r\n<td>\r\n<input align =\"left\" type=\"image\" src=\"images/home.jpg\"/>\r\n</form>\r\n</td>\r\n\r\n<form action=\"stock_items_selection.jsp\" method=\"post\">\r\n\r\n<td width=\"600\"/>\r\n\r\n<td>\r\n<input align =\"right\" type=\"image\" src=\"images/back.jpg\"/>\r\n</form>\r\n</td>\r\n\r\n</tr>\r\n</table>\r\n\r\n\r\n\r\n".toCharArray();
    _jsp_string1 = "\r\n<HTML>\r\n <HEAD>\r\n  <TITLE> KVK </TITLE>\r\n  \r\n </HEAD>\r\n\r\n".toCharArray();
    _jsp_string11 = "  \r\n</td>\r\n</tr>\r\n\r\n\r\n<tr>\r\n<td>\r\n<font color=\"#573801\" face=\"verdana\" size=\"2\">Tax Rate Of Duty:</font>\r\n</td>\r\n<td>\r\n".toCharArray();
    _jsp_string16 = "  \r\n</td>\r\n</tr>\r\n\r\n<tr>\r\n<td>\r\n<font color=\"#573801\" face=\"verdana\" size=\"2\">Value  :</font>\r\n</td>\r\n<td>\r\n".toCharArray();
    _jsp_string5 = "\r\n<form action=\"account_operator.jsp\" method=\"post\">\r\n".toCharArray();
    _jsp_string3 = "\r\n\r\n\r\n <BODY background=\"images/bg.jpg\" leftmargin=\"0\" topmargin=\"0\" marginwidth=\"0\" marginheight=\"0\">\r\n \r\n	\r\n\r\n <table width=\"800\"  border = \"0\" cellspacing = \"0\" cellpadding = \"0\" align =\"center\">\r\n <tr>\r\n <td>\r\n	<img src = \"images/banner.jpg\" width = \"800\"></td>\r\n </tr>\r\n </table>\r\n\r\n \r\n\r\n \r\n\r\n <table width = \"800\" border = \"0\" cellspacing = \"0\" cellpadding = \"0\" align = \"center\">\r\n <tr>\r\n <td background = \"images/after_main.jpg\" height = \"41\" align = \"center\" >\r\n	<strong> <font color = \"#573801\" size = \"3\" face = \"verdana\"> Welcome To Finance Department</font></strong>\r\n </td>\r\n </tr>\r\n </table>\r\n\r\n\r\n<p>&nbsp;</p>\r\n\r\n \r\n\r\n\r\n\r\n\r\n\r\n<table align=\"center\"    >\r\n<tr>\r\n <td ><strong> <font color=\"#573801\" size=\"3\" face=\"verdana\">Stock Items Display</font></strong>\r\n</td>\r\n</tr>\r\n</table>\r\n\r\n\r\n<table>\r\n".toCharArray();
    _jsp_string8 = " \r\n</td>\r\n</tr>\r\n\r\n<tr>\r\n<td>\r\n<font color=\"#573801\" face=\"verdana\" size=\"2\">(Alias)  :</font>\r\n</td>\r\n<td>\r\n".toCharArray();
    _jsp_string15 = "  \r\n</td>\r\n</tr>\r\n\r\n<tr>\r\n<td>\r\n<font color=\"#573801\" face=\"verdana\" size=\"2\">Per  :</font>\r\n</td>\r\n<td>\r\n".toCharArray();
    _jsp_string9 = " \r\n</td>\r\n</tr>\r\n\r\n<tr>\r\n<td>\r\n<font color=\"#573801\" face=\"verdana\" size=\"2\">Under  :</font>\r\n</td>\r\n<td>\r\n".toCharArray();
    _jsp_string14 = "  \r\n</td>\r\n</tr>\r\n\r\n\r\n<tr>\r\n<td>\r\n<font color=\"#573801\" face=\"verdana\" size=\"2\">Rate :</font>\r\n</td>\r\n<td>\r\n".toCharArray();
    _jsp_string7 = "\r\n \r\n&nbsp;\r\n\r\n\r\n<table  border = \"1\"    align=\"center\"  width=\"800\"  bgcolor=\"#FADFC3\" bordercolor=\"#F0B269\"  >\r\n\r\n\r\n<tr>\r\n<td width=\"392\">\r\n<font color=\"#573801\" face=\"verdana\" size=\"2\">Name  :</font>\r\n</td>\r\n<td width=\"392\">\r\n".toCharArray();
    _jsp_string2 = "\r\n\r\n".toCharArray();
    _jsp_string18 = "\r\n\r\n </BODY>\r\n</HTML>\r\n".toCharArray();
  }
}
