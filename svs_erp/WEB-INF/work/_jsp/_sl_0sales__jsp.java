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

public class _sl_0sales__jsp extends com.caucho.jsp.JavaPage
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
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kvk","root","root");
   
      out.write(_jsp_string1, 0, _jsp_string1.length);
       
   boolean sl = false;
   boolean sl_ad = false;
if(session.getAttribute("user_name").toString().equals("sales") & "sales".equals(session.getAttribute("pwd").toString()) )
sl=true;

if(session.getAttribute("user_name").toString().equals("sales_admin") & "sales_admin".equals(session.getAttribute("pwd").toString()) )
sl_ad=true;

if(sl || sl_ad)
{

 
      out.write(_jsp_string2, 0, _jsp_string2.length);
       if(sl){ 
      out.write(_jsp_string3, 0, _jsp_string3.length);
       } 
      out.write(_jsp_string4, 0, _jsp_string4.length);
       if(sl_ad){ 
      out.write(_jsp_string5, 0, _jsp_string5.length);
       } 
      out.write(_jsp_string6, 0, _jsp_string6.length);
       String dt="select curdate()"; 
	  Statement dst=conn.createStatement();
		ResultSet drs = dst.executeQuery(dt);
		String dt1=null;
		while(drs.next())
		{
			dt1=drs.getString(1);
		}


	
      out.write(_jsp_string7, 0, _jsp_string7.length);
      out.println(dt1);
      out.write(_jsp_string8, 0, _jsp_string8.length);
      
	  String sstr1="select nameofitem from in_purchases  ";
	  Statement sstmt1=conn.createStatement();
	  ResultSet srs1=sstmt1.executeQuery(sstr1);
	  out.println("<select name=nameofitem>");
	  while(srs1.next())
	  {
	    out.println("<option>");
		out.println(srs1.getString(1));
		out.println("</option>");
	  }
	
      out.write(_jsp_string9, 0, _jsp_string9.length);
       } 
      out.write(_jsp_string10, 0, _jsp_string10.length);
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
    depend = new com.caucho.vfs.Depend(appDir.lookup("sl_sales.jsp"), 2576874507583891756L, false);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, depend);
  }

  private final static char []_jsp_string3;
  private final static char []_jsp_string0;
  private final static char []_jsp_string1;
  private final static char []_jsp_string5;
  private final static char []_jsp_string9;
  private final static char []_jsp_string7;
  private final static char []_jsp_string2;
  private final static char []_jsp_string4;
  private final static char []_jsp_string6;
  private final static char []_jsp_string8;
  private final static char []_jsp_string10;
  static {
    _jsp_string3 = "\r\n <input type=\"hidden\" name=\"username\" value=\"sales\">\r\n <input type=\"hidden\" name=\"password\" value=\"sales\">\r\n ".toCharArray();
    _jsp_string0 = "<!-- Strip whitespace -->\r\n\r\n\r\n\r\n\r\n".toCharArray();
    _jsp_string1 = "\r\n<HTML>\r\n <HEAD>\r\n  <TITLE> KVK </TITLE>\r\n\r\n\r\n  <script type=\"text/javascript\">\r\nfunction f()\r\n{\r\nvar x=document.getElementById(\"iqty\").value;\r\nvar y=document.getElementById(\"irate\").value;\r\nvar z=x*y;\r\n//document.getElementById(\"fname\").value=x.toUpperCase();\r\ndocument.getElementById(\"iamount\").value=z;\r\n}\r\n</script>\r\n\r\n\r\n   </HEAD>\r\n   \r\n   ".toCharArray();
    _jsp_string5 = "\r\n <input type=\"hidden\" name=\"username\" value=\"sales_admin\">\r\n <input type=\"hidden\" name=\"password\" value=\"sales_admin\">\r\n ".toCharArray();
    _jsp_string9 = "\r\n   \r\n  </td>\r\n  \r\n  </tr>\r\n\r\n  <tr>\r\n   <td>\r\n    <font color=\"#573801\" face=\"verdana\" size=\"2\">\r\n	 Quantity\r\n	</font>\r\n   </td>\r\n   <td>\r\n    <input type=\"text\" name=\"qty\" id=\"iqty\">\r\n   </td>\r\n  </tr>\r\n\r\n\r\n  \r\n\r\n <tr>\r\n  <td width=\"392\">\r\n   <font color=\"#573801\" face=\"verdana\" size=\"2\">\r\n    Measurment</font>\r\n  </td>\r\n  <td >\r\n	<input type=\"text\" name=\"units\" >\r\n   \r\n  </td>\r\n </tr>\r\n\r\n <tr>\r\n  <td width=\"392\">\r\n   <font color=\"#573801\" face=\"verdana\" size=\"2\">\r\n    Rate(Rupees)\r\n   </font>\r\n  </td>\r\n  <td>\r\n   <input type=\"text\" name=\"rate\" id=\"irate\" onBlur=\"f();\">\r\n  </td>\r\n </tr>\r\n  \r\n\r\n  <tr>\r\n  <td width=\"392\">\r\n   <font color=\"#573801\" face=\"verdana\" size=\"2\">\r\n    Amount\r\n   </font>\r\n  </td>\r\n  <td >\r\n   <input type=\"text\" name=\"amount\" id=\"iamount\">\r\n  </td>\r\n </tr>\r\n  \r\n  \r\n   <tr>\r\n  <td width=\"392\">\r\n   <font color=\"#573801\" face=\"verdana\" size=\"2\">\r\n    Cheque No.\r\n   </font>\r\n  </td>\r\n  <td >\r\n   <input type=\"text\" name=\"chk_no\" >\r\n  </td>\r\n </tr>\r\n \r\n  <tr>\r\n  <td width=\"392\">\r\n   <font color=\"#573801\" face=\"verdana\" size=\"2\">\r\n    Bank Name\r\n   </font>\r\n  </td>\r\n  <td >\r\n   <input type=\"text\" name=\"bank\" >\r\n  </td>\r\n </tr>\r\n  \r\n   <tr>\r\n  <td width=\"392\">\r\n   <font color=\"#573801\" face=\"verdana\" size=\"2\">\r\n    Narration\r\n   </font>\r\n  </td>\r\n  <td width=\"392\" >\r\n   <textarea   name=\"narration\" rows=\"3\" cols=\"30\"></textarea>\r\n  </td>\r\n </tr>\r\n  \r\n  \r\n   \r\n   \r\n	\r\n</table>\r\n\r\n\r\n\r\n\r\n<br></br>\r\n<center>\r\n<input type=\"image\" src=\"images/submit.jpg\">\r\n</center>\r\n\r\n</form>\r\n\r\n\r\n".toCharArray();
    _jsp_string7 = "\r\n <input type=\"text\" name=\"date1\" value=\"".toCharArray();
    _jsp_string2 = "\r\n\r\n <BODY background=\"images/bg.jpg\" leftmargin=\"0\" topmargin=\"0\" marginwidth=\"0\" marginheight=\"0\">\r\n  <table width=\"800\"  border = \"0\" cellspacing = \"0\" cellpadding = \"0\" align =\"center\">\r\n <tr>\r\n 	<td><img src = \"images/banner.jpg\" width = \"800\"></td>\r\n </tr>\r\n </table>\r\n\r\n <table width = \"800\" border = \"0\" cellspacing = \"0\" cellpadding = \"0\" align = \"center\">\r\n <tr>\r\n <td background = \"images/after_main.jpg\" height = \"41\" align = \"center\" ><strong> <font color = \"#573801\" size = \"3\" \r\n face = \"verdana\"> Welcome To Inventory Department</font></strong> </td>\r\n </tr>\r\n </table>\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n\r\n\r\n<tr>\r\n<td width=\"100\"/>\r\n\r\n<td>\r\n\r\n\r\n<form action=\"specific.jsp\" method=\"post\">\r\n \r\n ".toCharArray();
    _jsp_string4 = "\r\n \r\n ".toCharArray();
    _jsp_string6 = "\r\n \r\n  <input type=\"image\" src=\"images/home.jpg\">\r\n </form> \r\n</td>\r\n\r\n\r\n\r\n</tr>\r\n</table>\r\n\r\n \r\n\r\n \r\n <table align=\"center\"    >\r\n<tr>\r\n <td ><strong> <font  face = \"verdana\">Sales Details</font></strong>\r\n</td>\r\n</tr>\r\n\r\n</table>\r\n\r\n&nbsp;\r\n\r\n<table align=\"center\" width=\"800\" border=\"1\" bgcolor=\"#FADFC3\" bordercolor=\"#F0B269\">\r\n <form action=\"sl_sales_submit.jsp\">\r\n \r\n <tr> \r\n <td> <font color=\"#573801\" face=\"verdana\" size=\"2\">\r\n    Date\r\n   </font></td> \r\n <td>   \r\n	".toCharArray();
    _jsp_string8 = "\">  </td>\r\n </tr>\r\n\r\n\r\n<tr>\r\n  <td> \r\n  	<font color=\"#573801\" face=\"verdana\" size=\"2\">\r\n 	<font color=\"#573801\" face=\"verdana\" size=\"2\">Party Name\r\n   </font> \r\n  </td>\r\n	<td>\r\n	<input type=\"text\" name=\"partyname\" >\r\n    </td>\r\n  </tr>\r\n  \r\n  \r\n  <tr>\r\n  <td> \r\n  	<font color=\"#573801\" face=\"verdana\" size=\"2\">\r\n 	<font color=\"#573801\" face=\"verdana\" size=\"2\">Quotation No.\r\n   </font> \r\n  </td>\r\n	<td>\r\n	<input type=\"text\" name=\"quat_no\" >\r\n    </td>\r\n  </tr>\r\n  \r\n  \r\n  <tr>\r\n  <td> \r\n  	<font color=\"#573801\" face=\"verdana\" size=\"2\">\r\n 	<font color=\"#573801\" face=\"verdana\" size=\"2\">Item Code\r\n   </font> \r\n  </td>\r\n	<td>\r\n	<input type=\"text\" name=\"item_code\" >\r\n    </td>\r\n  </tr>\r\n  \r\n  \r\n\r\n \r\n\r\n  <tr>\r\n  <td> \r\n  <font color=\"#573801\" face=\"verdana\" size=\"2\">\r\n <font color=\"#573801\" face=\"verdana\" size=\"2\">Name of Item\r\n   </font> \r\n  </td>\r\n	<td>\r\n	".toCharArray();
    _jsp_string10 = "\r\n\r\n\r\n </BODY>\r\n</HTML>\r\n".toCharArray();
  }
}
