/*
 * JSP generated by Resin-3.1.6 (built Sun, 04 May 2008 03:25:50 PDT)
 */

package _jsp;
import javax.servlet.*;
import javax.servlet.jsp.*;
import javax.servlet.http.*;
import java.sql.*;

public class _interviewevaluationform__jsp extends com.caucho.jsp.JavaPage
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
    depend = new com.caucho.vfs.Depend(appDir.lookup("interviewevaluationform.jsp"), 7610526084954487337L, false);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, depend);
  }

  private final static char []_jsp_string0;
  static {
    _jsp_string0 = "\r\n<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">\r\n<title>SVS</title>\r\n</head>\r\n\r\n<body background=\"images/bg.jpg\" leftmargin=\"0\" topmargin=\"0\" marginwidth=\"0\" marginheight=\"0\">\r\n<table width=\"800\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" background=\"images/bg.jpg\">\r\n  <tr>\r\n    <td width=\"800\"><font face=\"Verdana, Arial, Helvetica, sans-serif\"><img src=\"images/banner.jpg\" width=\"800\"></font></td>\r\n  </tr>\r\n  <!--  <tr>\r\n   <td>\r\n  <table width=\"800\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n  <tr>\r\n    <td><img src=\"images/finance.jpg\" width=\"119\"></td>\r\n    <td><img src=\"images/project-management.jpg\" width=\"119\"></td>\r\n    <td><img src=\"images/inventory.jpg\" width=\"119\"></td>\r\n    <td><img src=\"images/sales.jpg\" width=\"119\"></td>\r\n    <td><img src=\"images/maintenance.jpg\" width=\"119\"></td>\r\n    <td><img src=\"images/power.jpg\" width=\"119\"></td>\r\n    <td><img src=\"images/human-resources.jpg\" width=\"119\"></td>\r\n  </tr>\r\n</table>\r\n\r\n   </td>\r\n  </tr>-->\r\n  \r\n</table>\r\n\r\n<table align=\"center\" width=\"800\" bgcolor=\"#FFD3A2\" background=\"images/bg.jpg\">\r\n<tr>\r\n<td>\r\n\r\n <form action=\"specific.jsp\">\r\n   <font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n <input type=\"hidden\" name=\"username\" value=\"hr_pranam\">\r\n <input type=\"hidden\" name=\"password\" value=\"hr_pranam\">\r\n  <input type=\"image\" src=\"images/home.jpg\">\r\n   </font>\r\n </form> \r\n<table align=\"center\">\r\n <tr>\r\n \r\n <td width=\"245\">\r\n   <font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"3\"><b>Interview Evaluation Form</b></font>\r\n </td>\r\n  </tr>\r\n</table>\r\n<table align=\"center\">\r\n<form action=\"interviewevaluationinsert.jsp\" method=\"post\">\r\n <tr>\r\n  <td>\r\n    <table width=\"493\" align=\"center\" bgcolor=\"#FADFC3\">\r\n     <tr>\r\n	  <td width=\"110\">\r\n	    <font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">CandidateName:</font>\r\n	  </td>\r\n	   <td width=\"145\">\r\n	     <font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	     <input type=\"text\" name=\"candidatename\">\r\n	     </font></td>\r\n		<td width=\"63\">\r\n		  <font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">Date</font>\r\n		</td>\r\n		 <td width=\"155\">\r\n		   <font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n		   <input name=\"date\" type=\"text\" value=\"yyyy\\mm\\dd\">\r\n		   </font></td>\r\n	 </tr>\r\n	 <tr>\r\n	  <td>\r\n	    <font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">Position</font>\r\n	  </td>\r\n	  <td>\r\n	    <font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	    <input type=\"text\" name=\"position\">\r\n	    </font></td>\r\n	  <td>\r\n	    <font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">Company</font>\r\n	  </td>\r\n	  <td>\r\n	    <font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	    <input type=\"text\" name=\"company\">\r\n	    </font></td>\r\n	 </tr>\r\n   </table>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n   <table align=\"center\" bordercolor=\"#F0B269\"  border=\"1\" bgcolor=\"#FADFC3\">\r\n    \r\n	<tr>\r\n	 <th width=\"134\">\r\n	   <font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">Traits</font>\r\n	 </th>\r\n	 <th width=\"66\">\r\n	   <font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">Excellent</font>\r\n	 </th>\r\n	 <th width=\"77\">\r\n	   <font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">Very Good</font>\r\n	 </th>\r\n	 <th width=\"40\">\r\n	   <font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">Good</font>\r\n	 </th>\r\n	 <th width=\"61\">\r\n	   <font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">Average</font>\r\n	 </th>\r\n	   <th width=\"70\">\r\n	     <font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">Poor</font>\r\n	 </th>\r\n	</tr>\r\n	<tr>\r\n	 <td>\r\n	   <font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">Appearance</font>\r\n	  \r\n	 </td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <INPUT TYPE=RADIO NAME=\"appearance\" VALUE=\"Excellent\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <INPUT TYPE=RADIO name=\"appearance\" VALUE=\"VeryGood\"> \r\n	   </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <INPUT TYPE=RADIO name=\"appearance\" value=\"Good\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <INPUT TYPE=RADIO name=\"appearance\" value=\"Average\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <INPUT TYPE=RADIO name=\"appearance\" value=\"Poor\">\r\n	 </font></td>\r\n	</tr>\r\n	<tr>\r\n	\r\n	 <td><font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">Qualification</font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"qualification\" value=\"Excellent\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"qualification\" value=\"VeryGood\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"qualification\" value=\"Good\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"qualification\" value=\"Average\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"qualification\" value=\"Poor\">\r\n	 </font></td>\r\n	</tr>\r\n	<tr>\r\n	 <td><font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">Experience</font>\r\n	  \r\n	 </td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"experience\" value=\"Excellent\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"experience\" value=\"VeryGood\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"experience\" value=\"Good\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"experience\" value=\"Average\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"experience\" value=\"Poor\">\r\n	 </font></td>\r\n	</tr>\r\n	<tr>\r\n	 <td><font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">Job Stability</font>\r\n	  \r\n	 </td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"jobstability\" value=\"Excellent\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"jobstability\" value=\"VeryGood\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"jobstability\" value=\"Good\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"jobstability\" value=\"Average\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"jobstability\" value=\"Poor\">\r\n	 </font></td>\r\n	</tr>\r\n	<tr>\r\n	 <td><font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">Attitude</font>\r\n	  \r\n	 </td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"attitude\" value=\"Excellent\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"attitude\" value=\"VeryGood\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"attitude\" value=\"Good\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"attitude\" value=\"Average\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"attitude\" value=\"Poor\">\r\n	 </font></td>\r\n	</tr>\r\n	<tr>\r\n	 <td><font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">Communication Skills</font>\r\n	  \r\n	 </td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"communicationskills\" value=\"Excellent\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"communicationskills\" value=\"VeryGood\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"communicationskills\" value=\"Good\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"communicationskills\" value=\"Average\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"communicationskills\" value=\"Poor\">\r\n	 </font></td>\r\n	</tr>\r\n	<tr>\r\n	 <td><font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">Job Knowledge</font>\r\n	  \r\n	 </td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"jobknowledge\" value=\"Excellent\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"jobknowledge\" value=\"VeryGood\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"jobknowledge\" value=\"Good\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"jobknowledge\" value=\"Average\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"jobknowledge\" value=\"Poor\">\r\n	 </font></td>\r\n	</tr>\r\n	<tr>\r\n	 <td><font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">Job Skills</font>\r\n	  \r\n	 </td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"jobskills\" value=\"Excellent\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"jobskills\" value=\"VeryGood\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"jobskills\" value=\"Good\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"jobskills\" value=\"Average\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"jobskills\" value=\"Poor\">\r\n	 </font></td>\r\n	</tr>\r\n	<tr>\r\n	 <td><font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">Job Potential</font>\r\n	 \r\n	  </td>\r\n	  <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	    <input type=\"radio\" name=\"jobpotential\" value=\"Excellent\">\r\n	  </font></td>\r\n	  <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	    <input type=\"radio\" name=\"jobpotential\" value=\"VeryGood\">\r\n	  </font></td>\r\n	  <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	    <input type=\"radio\" name=\"jobpotential\" value=\"Good\"> \r\n	    </font></td>\r\n	  <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	    <input type=\"radio\" name=\"jobpotential\" value=\"Average\">\r\n	  </font></td>\r\n	  <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	    <input type=\"radio\" name=\"jobpotential\" value=\"Poor\">\r\n	  </font></td>\r\n	</tr>\r\n	 <tr>\r\n	 <td><font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">Career Achievements</font>\r\n	  \r\n	 </td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"careerachievements\" value=\"Excellent\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"careerachievements\" value=\"VeryGood\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"careerachievements\" value=\"Good\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"careerachievements\" value=\"Average\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"careerachievements\" value=\"Poor\">\r\n	 </font></td>\r\n	</tr>\r\n	<tr>\r\n	 <td><font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">Work Dedication</font>\r\n	  \r\n	 </td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"workdedication\" value=\"Excellent\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"workdedication\" value=\"VeryGood\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"workdedication\" value=\"Good\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"workdedication\" value=\"Average\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"workdedication\" value=\"Poor\">\r\n	 </font></td>\r\n	</tr>\r\n	<tr>\r\n	 <td><font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">Ability to Learn</font>\r\n	  \r\n	 </td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"abilitytolearn\" value=\"Excellent\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"abilitytolearn\" value=\"VeryGood\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"abilitytolearn\" value=\"Good\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"abilitytolearn\" value=\"Average\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"abilitytolearn\" value=\"Poor\">\r\n	 </font></td>\r\n	</tr>\r\n	<tr>\r\n	 <td><font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">Open Mindness</font>\r\n	  \r\n	 </td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"openmindness\" value=\"Excellent\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"openmindness\" value=\"VeryGood\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"openmindness\" value=\"Good\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"openmindness\" value=\"Average\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"openmindness\" value=\"Poor\">\r\n	 </font></td>\r\n	</tr>\r\n	<tr>\r\n	 <td><font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">Maturity Level</font>\r\n	  \r\n	 </td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"maturitylevel\" value=\"Excellent\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"maturitylevel\" value=\"VeryGood\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"maturitylevel\" value=\"Good\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"maturitylevel\" value=\"Average\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"maturitylevel\" value=\"Poor\">\r\n	 </font></td>\r\n	</tr>\r\n	<tr>\r\n	 <td><font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">Overall Suitability</font>\r\n	  \r\n	 </td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"overallsuitability\" value=\"Excellent\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"overallsuitability\" value=\"VeryGood\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"overallsuitability\" value=\"Good\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"overallsuitability\" value=\"Average\">\r\n	 </font></td>\r\n	 <td align=\"center\"><font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"radio\" name=\"overallsuitability\" value=\"Poor\">\r\n	 </font></td>\r\n	</tr>\r\n	\r\n	\r\n \r\n   </table>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td>\r\n  <table width=\"329\" align=\"center\">\r\n  <tr>\r\n  <td width=\"148\">\r\n    <font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">\r\n    Final Assessment   \r\n    </font>\r\n   </td>\r\n   <td width=\"169\">\r\n     <font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n     <select name=\"finalassessment\">\r\n	     <option>Selected</option>\r\n	     <option>Rejected</option>\r\n	     <option>Hold</option>\r\n	     </select>\r\n     </font></td>\r\n   </tr>\r\n   <tr>\r\n    <td>\r\n	  <font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">\r\n	  Other Comments  \r\n	  </font>\r\n	</td>\r\n	<td>\r\n	  <font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	  <textarea name=\"othercomments\"></textarea>\r\n	  </font></td>\r\n   </tr>\r\n   <tr>\r\n    <td>\r\n	  <font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">\r\n	  Interviewed By:\r\n	  </font>\r\n	</td>\r\n	<td>\r\n	  <font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	  <input type=\"text\" name=\"interviewedby\">\r\n	  </font></td>\r\n    </tr>\r\n	<tr>\r\n	 <td>\r\n	  </td>\r\n	 <td>\r\n	   <font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	   <input type=\"hidden\" name=\"executivename\" value=\"pranam\">\r\n	   </font></td>\r\n	 </tr>\r\n	 <tr>\r\n    <td>\r\n	  <font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">\r\n	  Present Salary:\r\n	  </font>\r\n	</td>\r\n	<td>\r\n	  <font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	  <input type=\"text\" name=\"presentsalary\">\r\n	  </font></td>\r\n    </tr>\r\n	<tr>\r\n    <td>\r\n	  <font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\" >\r\n	  Excepted Salary:\r\n	  </font>\r\n	</td>\r\n	<td>\r\n	  <font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	  <input type=\"text\" name=\"exceptedsalary\">\r\n	  </font></td>\r\n    </tr>\r\n	<tr>\r\n    <td>	 <font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">Salary Offred\r\n	  </font></td>\r\n	<td>\r\n	  <font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	  <input type=\"text\" name=\"salaryoffred\">\r\n	  </font></td>\r\n    </tr>\r\n	<tr>\r\n    <td>\r\n	  <font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">\r\n	  Joining Time Required:\r\n	  </font>\r\n	</td>\r\n	<td>\r\n	  <font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	  <input type=\"text\" name=\"Joining Time Required\">\r\n	  </font></td>\r\n    </tr>\r\n	<tr>\r\n    <td>\r\n	  <font color=\"#573801\" face=\"Verdana, Arial, Helvetica, sans-serif\" size=\"2\">\r\n	  Department:\r\n	  </font>\r\n	</td>\r\n	<td>\r\n	  <font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n	  <input type=\"text\" name=\"department\">\r\n	  </font></td>\r\n    </tr>\r\n   </table>\r\n  </td>\r\n </tr>\r\n <tr>\r\n  <td align=\"center\">\r\n    <font face=\"Verdana, Arial, Helvetica, sans-serif\">\r\n    <input type=\"submit\" value=\"     Submit     \">\r\n    </font></td>\r\n </tr>\r\n </form>\r\n</table>\r\n</td>\r\n</tr>\r\n</table>\r\n</body>\r\n</html>\r\n".toCharArray();
  }
}