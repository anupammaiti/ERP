/*
 * JSP generated by Resin-3.1.6 (built Sun, 04 May 2008 03:25:50 PDT)
 */

package _jsp;
import javax.servlet.*;
import javax.servlet.jsp.*;
import javax.servlet.http.*;
import java.sql.*;

public class _index__jsp extends com.caucho.jsp.JavaPage
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
       session.removeAttribute("user_name");
	session.removeAttribute("pwd");
 
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
    depend = new com.caucho.vfs.Depend(appDir.lookup("index.jsp"), 7842601406074250105L, false);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, depend);
  }

  private final static char []_jsp_string1;
  private final static char []_jsp_string0;
  static {
    _jsp_string1 = "\r\n\r\n<table width=\"800\"  align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\" bordercolor=\"#C58941\">\r\n  <tr>\r\n    <th scope=\"col\"><img src=\"images/banner.jpg\"></th>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"148\"><img src=\"images/main.jpg\"></td>\r\n  </tr>\r\n  \r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" align=\"center\" cellpadding=\"0\" >\r\n  <tr>\r\n    <td><img src=\"images/after_main1.jpg\"></td>\r\n  </tr>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" >\r\n  <tr>\r\n    <td width=\"174\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n  <tr>\r\n    <td><img src=\"images/finance.jpg\"></td>\r\n  </tr>\r\n  <tr>\r\n    <td><img src=\"images/project-management.jpg\"></td>\r\n  </tr>\r\n  <tr>\r\n    <td><img src=\"images/inventory.jpg\"></td>\r\n  </tr>\r\n  <tr>\r\n    <td><img src=\"images/sales.jpg\"></td>\r\n  </tr>\r\n  <tr>\r\n    <td><img src=\"images/maintenance.jpg\"></td>\r\n  </tr>\r\n <!-- <tr>\r\n    <td><img src=\"images/power.jpg\"></td>\r\n  </tr>-->\r\n  <tr>\r\n    <td><img src=\"images/human-resources.jpg\"></td>\r\n  </tr>\r\n</table>\r\n</td>\r\n    <td width=\"431\" background=\"images/inner_table_bg.jpg\">\r\n	<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n	<form action=\"specific.jsp\" method=\"post\">\r\n	<tr>\r\n	<td height=\"33\" colspan=\"2\" background=\"images/bg.jpg\">&nbsp;</td>\r\n	</tr>\r\n  <tr>\r\n    <td><img src=\"images/login.jpg\"></td>\r\n    <td><input type=\"text\" name=\"username\"></td>\r\n  </tr>\r\n  <tr>\r\n    <td><img src=\"images/password.jpg\"></td>\r\n    <td><input type=\"password\" name=\"password\"></td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"33\" colspan=\"2\" background=\"images/bg.jpg\"><div align=\"center\">\r\n      <input type=\"image\" src=\"images/submit.jpg\">\r\n    </div></td>\r\n    </tr>\r\n  </form>\r\n</table>\r\n</td>\r\n    <td width=\"195\" background=\"images/bg.jpg\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n  <tr>\r\n    <td width=\"260\"><img src=\"images/create_user_link1.jpg\"></td>\r\n  </tr>\r\n  <tr>\r\n    <td><img src=\"images/create_user_link2.jpg\"></td>\r\n  </tr>\r\n</table>\r\n</td>\r\n  </tr>\r\n  \r\n</table>\r\n<!--<table width=\"801\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n  <tr>\r\n    <td width=\"801\" align=\"center\"><img src=\"images/inner_table_bottom.jpg\" width=\"801\"></td>\r\n  </tr>\r\n</table>-->\r\n\r\n<table width=\"800\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n  <tr>\r\n    <td width=\"174\">&nbsp;</td>\r\n    <td width=\"437\"><img src=\"images/inner_table_bottom.jpg\" width=\"435\" height=\"21\"></td>\r\n    <td width=\"189\">&nbsp;</td>\r\n  </tr>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</body>\r\n</html>\r\n".toCharArray();
    _jsp_string0 = "\r\n<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">\r\n<title>SVS</title>\r\n<style type=\"text/css\">\r\n<!--\r\nbody {\r\n	margin-left: 0px;\r\n	margin-top: 0px;\r\n	margin-right: 0px;\r\n	margin-bottom: 0px;\r\n}\r\n-->\r\n</style></head>\r\n\r\n<body bgcolor=\"#F1B672\" background=\"images/bg.jpg\">\r\n".toCharArray();
  }
}
