/*
 * JSP generated by Resin-3.1.6 (built Sun, 04 May 2008 03:25:50 PDT)
 */

package _jsp;
import javax.servlet.*;
import javax.servlet.jsp.*;
import javax.servlet.http.*;
import java.sql.*;

public class _leaveapplication__jsp extends com.caucho.jsp.JavaPage
{
  private static final java.util.HashMap<String,java.lang.reflect.Method> _jsp_functionMap = new java.util.HashMap<String,java.lang.reflect.Method>();
  private boolean _caucho_isDead;
  
  public void
  _jspService(javax.servlet.http.HttpServletRequest request,
              javax.servlet.http.HttpServletResponse response)
    throws java.io.IOException, javax.servlet.ServletException
  {
    com.caucho.server.webapp.WebApp _jsp_application = _caucho_getApplication();
    javax.servlet.ServletContext application = _jsp_application;
    com.caucho.jsp.PageContextImpl pageContext = com.caucho.jsp.QJspFactory.allocatePageContext(this, _jsp_application, request, response, "/", null, 8192, true, false);
    javax.servlet.jsp.JspWriter out = pageContext.getOut();
    final javax.el.ELContext _jsp_env = pageContext.getELContext();
    javax.servlet.ServletConfig config = getServletConfig();
    javax.servlet.Servlet page = this;
    response.setContentType("text/html; charset=iso-8859-1");
    request.setCharacterEncoding("ISO-8859-1");
    try {
      out.write(_jsp_string0, 0, _jsp_string0.length);
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
    depend = new com.caucho.vfs.Depend(appDir.lookup("leaveapplication.jsp"), 7444513965603037032L, false);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, depend);
  }

  private final static char []_jsp_string0;
  static {
    _jsp_string0 = "\r\n<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">\r\n<title>SVS</title>\r\n</head>\r\n\r\n<body background=\"images/bg.jpg\" leftmargin=\"0\" topmargin=\"0\" marginwidth=\"0\" marginheight=\"0\">\r\n<table width=\"800\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" background=\"images/bg.jpg\">\r\n  <tr>\r\n    <td width=\"800\"><img src=\"images/banner.jpg\" width=\"800\"></td>\r\n  </tr>\r\n  <!--  <tr>\r\n   <td>\r\n  <table width=\"800\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n  <tr>\r\n    <td><img src=\"images/finance.jpg\" width=\"119\"></td>\r\n    <td><img src=\"images/project-management.jpg\" width=\"119\"></td>\r\n    <td><img src=\"images/inventory.jpg\" width=\"119\"></td>\r\n    <td><img src=\"images/sales.jpg\" width=\"119\"></td>\r\n    <td><img src=\"images/maintenance.jpg\" width=\"119\"></td>\r\n    <td><img src=\"images/power.jpg\" width=\"119\"></td>\r\n    <td><img src=\"images/human-resources.jpg\" width=\"119\"></td>\r\n  </tr>\r\n</table>\r\n\r\n   </td>\r\n  </tr>-->\r\n  \r\n</table>\r\n<table align=\"center\" background=\"images/bg.jpg\" width=\"800\">\r\n<tr>\r\n<td>\r\n<table align=\"center\" border=\"1\" bordercolor=\"#F0B269\" bgcolor=\"#FADFC3\">\r\n<form action=\"leaveapplicationsubmit.jsp\">\r\n <tr>\r\n  <td>\r\n   <h3 align=\"center\"><font color=\"#573801\">Leave Application</font></h3>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n   <table align=\"center\" bgcolor=\"#FADFC3\" bordercolor=\"#F0B269\" border=\"1\">\r\n    <tr>\r\n	 <td>\r\n	 <font color=\"#573801\" size=\"4\">1.Name</font>\r\n	  </td>\r\n	  <td>\r\n	   <input type=\"text\" name=\"name1\">\r\n	  </td>\r\n	</tr>\r\n	<tr>\r\n	 <td>\r\n	  <font color=\"#573801\" size=\"4\">2.Company</font>\r\n	 </td>\r\n	 <td>\r\n	  <input type=\"text\" name=\"company\">\r\n	 </td>\r\n	</tr>\r\n	<tr>\r\n	 <td>\r\n	  <font color=\"#573801\" size=\"4\">3.Employee Code</font>\r\n	 </td>\r\n	 <td>\r\n	  <input type=\"text\" name=\"employeecode\">\r\n	 </td>\r\n	</tr>\r\n	<tr>\r\n	<td>\r\n	 <font color=\"#573801\" size=\"4\">4.Designation</font>\r\n	</td>\r\n	<td>\r\n	 <input type=\"text\" name=\"designation\">\r\n	</td>\r\n	</tr>\r\n	<tr>\r\n	 <td>\r\n	  <font color=\"#573801\" size=\"4\">5.Purpose Of Leave</font>\r\n	 </td>\r\n	 <td>\r\n	  <input type=\"text\" name=\"purposeofleave\">\r\n	 </td>\r\n	 \r\n	</tr>\r\n	<tr>\r\n	 <td>\r\n	  <font color=\"#573801\" size=\"4\">6.Address While On Leave</font>\r\n	 </td>\r\n	 <td>\r\n	  <input type=\"text\" name=\"addressonleave\">\r\n	 </td>\r\n	</tr>\r\n   </table>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td align=\"center\">\r\n   <table align=\"center\" bordercolor=\"#F0B269\" border=\"1\">\r\n    <tr>\r\n	 <td width=\"105\" align=\"center\">\r\n	   <font color=\"#573801\" size=\"4\">Date</font>\r\n	  </td>\r\n	 <td width=\"233\" align=\"center\">\r\n	   <font color=\"#573801\" size=\"4\">Leave Applied For</font>\r\n	 </td>\r\n	</tr>\r\n	<tr>\r\n	 <td>\r\n	  <table align=\"center\"  bordercolor=\"#573801\">\r\n	   <tr>\r\n	    <td align=\"center\">\r\n		 <font color=\"#573801\" size=\"3\">From</font>\r\n		</td>\r\n		<td align=\"center\">\r\n		 <font color=\"#573801\" size=\"3\">To</font>\r\n		</td>\r\n	   </tr>\r\n	   <tr>\r\n	    <td>\r\n		 <input type=\"text\" name=\"fromdate\" size=\"12\">\r\n		</td>\r\n		 <td>\r\n		  <input type=\"text\" name=\"todate\" size=\"12\">\r\n		 </td>\r\n	   </tr>\r\n	  </table>\r\n	 </td>\r\n	 <td>\r\n	  \r\n	  <table width=\"232\"  align=\"center\" bordercolor=\"#573801\">\r\n	   <tr>\r\n	     <td width=\"51\" align=\"center\">\r\n		  <font color=\"#573801\" size=\"3\">CL</font>\r\n		</td>\r\n		<td width=\"51\" align=\"center\">\r\n		 <font color=\"#573801\" size=\"3\">SL</font>\r\n		</td>\r\n		<td width=\"51\" align=\"center\">\r\n		 <font color=\"#573801\" size=\"3\">EL</font>\r\n		</td>\r\n		<td width=\"51\" align=\"center\">\r\n		 <font color=\"#573801\" size=\"3\">LOP</font>\r\n		</td>\r\n	   </tr>\r\n	   <tr>\r\n	    <td>\r\n		 <input type=\"text\" name=\"cl\" size=\"9\">\r\n		</td>\r\n		<td>\r\n		  <input type=\"text\" name=\"sl\" size=\"9\">\r\n		</td>\r\n		<td><input type=\"text\" name=\"el\" size=\"9\">\r\n		</td>\r\n		<td>\r\n		 <input type=\"text\" name=\"lop\" size=\"9\">\r\n		</td>\r\n		 \r\n	   </tr>\r\n	  </table>\r\n	 </td>\r\n	</tr>\r\n	\r\n   </table>\r\n  </td>\r\n  </tr>\r\n  <tr>\r\n	 <td align=\"center\">\r\n	  <input type=\"image\" src=\"images/submit.jpg\">\r\n	 </td>\r\n	</tr>\r\n	</form>\r\n</table>\r\n</td>\r\n</tr>\r\n</table>\r\n</body>\r\n</html>\r\n".toCharArray();
  }
}