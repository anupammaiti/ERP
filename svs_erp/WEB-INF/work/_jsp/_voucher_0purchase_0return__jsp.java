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

public class _voucher_0purchase_0return__jsp extends com.caucho.jsp.JavaPage
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
   Statement st = conn.createStatement();
   
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
      
	
	  String str2="select no from voucher_purchase ";
	  Statement stmt2=conn.createStatement();
	  ResultSet rs2=stmt2.executeQuery(str2);
	  int no=0;
	  while(rs2.next())
	  {
		no=rs2.getInt(1);
		
	  }
	  if(no==0)
	  out.println("1");
	  else
	  out.println(no+1);
	
      out.write(_jsp_string7, 0, _jsp_string7.length);
       String dt="select curdate()"; 
	  Statement dst=conn.createStatement();
		ResultSet drs = dst.executeQuery(dt);
		String dt1=null;
		while(drs.next())
		{
			dt1=drs.getString(1);
		}


	
      out.write(_jsp_string8, 0, _jsp_string8.length);
      out.println(dt1);
      out.write(_jsp_string9, 0, _jsp_string9.length);
      
	  String str="select ledgername from ledgersdata where under='CurrentAsset' or under='Cash-in-hand' or under='BankAccounts' or under='BankOCC-A/c' or under='BankOD-A/c' or under='SundryCreditors' or under='SundryDebtors' ";
	  Statement stmt=conn.createStatement();
	  ResultSet rs=stmt.executeQuery(str);
	 
      out.write(_jsp_string10, 0, _jsp_string10.length);
      out.print((00));
      out.write(_jsp_string11, 0, _jsp_string11.length);
      
	  while(rs.next())
	  {
	  
      out.write(_jsp_string12, 0, _jsp_string12.length);
      out.print((rs.getString(1)));
      out.write(_jsp_string13, 0, _jsp_string13.length);
       out.println(rs.getString(1)); 
      out.write(_jsp_string14, 0, _jsp_string14.length);
       } 
      out.write(_jsp_string15, 0, _jsp_string15.length);
      
	  String str1="select ledgername from ledgersdata where under='PurchaseAccounts' ";
	  Statement stmt1=conn.createStatement();
	  ResultSet rs1=stmt1.executeQuery(str1);
	  out.println("<select name=pur_ledg>");
	  while(rs1.next())
	  {
	    out.println("<option>");
		out.println(rs1.getString(1));
		out.println("</option>");
	  }
	
      out.write(_jsp_string16, 0, _jsp_string16.length);
      
	  String sstr1="select name from stockitems  ";
	  Statement sstmt1=conn.createStatement();
	  ResultSet srs1=sstmt1.executeQuery(sstr1);
	 
      out.write(_jsp_string17, 0, _jsp_string17.length);
      out.print((00));
      out.write(_jsp_string11, 0, _jsp_string11.length);
      
	  while(srs1.next())
	  {
	  
      out.write(_jsp_string12, 0, _jsp_string12.length);
      out.print((srs1.getString(1)));
      out.write(_jsp_string13, 0, _jsp_string13.length);
       out.println(srs1.getString(1)); 
      out.write(_jsp_string14, 0, _jsp_string14.length);
       } 
      out.write(_jsp_string18, 0, _jsp_string18.length);
      
	  String sstr12="select symbol from unitsofmeasure  ";
	  Statement sstmt12=conn.createStatement();
	  ResultSet srs12=sstmt12.executeQuery(sstr12);
	  
	
      out.write(_jsp_string19, 0, _jsp_string19.length);
      out.print((00));
      out.write(_jsp_string20, 0, _jsp_string20.length);
       while(srs12.next())
	  {
	    
      out.write(_jsp_string21, 0, _jsp_string21.length);
      out.print((srs12.getString(1)));
      out.write(_jsp_string22, 0, _jsp_string22.length);
       out.println(srs12.getString(1)); 
      out.write(_jsp_string23, 0, _jsp_string23.length);
       } 
      out.write(_jsp_string24, 0, _jsp_string24.length);
       } 
      out.write(_jsp_string25, 0, _jsp_string25.length);
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
    depend = new com.caucho.vfs.Depend(appDir.lookup("voucher_purchase_return.jsp"), -4271643422687452686L, false);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, depend);
  }

  private final static char []_jsp_string4;
  private final static char []_jsp_string9;
  private final static char []_jsp_string0;
  private final static char []_jsp_string24;
  private final static char []_jsp_string22;
  private final static char []_jsp_string11;
  private final static char []_jsp_string19;
  private final static char []_jsp_string3;
  private final static char []_jsp_string14;
  private final static char []_jsp_string6;
  private final static char []_jsp_string8;
  private final static char []_jsp_string7;
  private final static char []_jsp_string21;
  private final static char []_jsp_string18;
  private final static char []_jsp_string23;
  private final static char []_jsp_string17;
  private final static char []_jsp_string1;
  private final static char []_jsp_string13;
  private final static char []_jsp_string5;
  private final static char []_jsp_string10;
  private final static char []_jsp_string12;
  private final static char []_jsp_string16;
  private final static char []_jsp_string25;
  private final static char []_jsp_string20;
  private final static char []_jsp_string15;
  private final static char []_jsp_string2;
  static {
    _jsp_string4 = "\r\n<form action=\"kvk_finance_main.jsp\" method=\"post\">\r\n".toCharArray();
    _jsp_string9 = "\">  </td>\r\n </tr>\r\n\r\n \r\n <tr>\r\n  <td>\r\n   <font color=\"#573801\" face=\"verdana\" size=\"2\">\r\n    Party's A/c Name\r\n   </font>\r\n   </td>\r\n   <td>\r\n    ".toCharArray();
    _jsp_string0 = "<!-- Strip whitespace -->\r\n\r\n\r\n\r\n\r\n".toCharArray();
    _jsp_string24 = "\r\n      </select>\r\n   \r\n  </td>\r\n </tr>\r\n\r\n <tr>\r\n  <td width=\"392\">\r\n   <font color=\"#573801\" face=\"verdana\" size=\"2\">\r\n    Rate(Rupees)\r\n   </font>\r\n  </td>\r\n  <td>\r\n   <input type=\"text\" name=\"rate\" id=\"irate\" onBlur=\"f();\">\r\n  </td>\r\n </tr>\r\n  \r\n\r\n  <tr>\r\n  <td width=\"392\">\r\n   <font color=\"#573801\" face=\"verdana\" size=\"2\">\r\n    Amount\r\n   </font>\r\n  </td>\r\n  <td >\r\n   <input type=\"text\" name=\"amount\" id=\"iamount\">\r\n  </td>\r\n </tr>\r\n  \r\n  \r\n   <tr>\r\n  <td width=\"392\">\r\n   <font color=\"#573801\" face=\"verdana\" size=\"2\">\r\n    Narration\r\n   </font>\r\n  </td>\r\n  <td width=\"392\" >\r\n   <textarea   name=\"narration\" rows=\"3\" cols=\"30\"></textarea>\r\n  </td>\r\n </tr>\r\n  \r\n  \r\n   \r\n   \r\n	\r\n</table>\r\n\r\n\r\n\r\n\r\n<br></br>\r\n<center>\r\n<input type=\"image\" src=\"images/submit.jpg\">\r\n</center>\r\n<div id=\"txtHint2\"></div>\r\n\r\n</form>\r\n\r\n".toCharArray();
    _jsp_string22 = "\" >\r\n        ".toCharArray();
    _jsp_string11 = " ></option>\r\n	 \r\n	 ".toCharArray();
    _jsp_string19 = "\r\n	\r\n	<select name=units  >\r\n        <option  value=".toCharArray();
    _jsp_string3 = "\r\n \r\n\r\n\r\n <BODY background=\"images/bg.jpg\" leftmargin=\"0\" topmargin=\"0\" marginwidth=\"0\" marginheight=\"0\">\r\n  <table width=\"800\"  border = \"0\" cellspacing = \"0\" cellpadding = \"0\" align =\"center\">\r\n <tr>\r\n 	<td><img src = \"images/banner.jpg\" width = \"800\"></td>\r\n </tr>\r\n </table>\r\n\r\n <table width = \"800\" border = \"0\" cellspacing = \"0\" cellpadding = \"0\" align = \"center\">\r\n <tr>\r\n <td background = \"images/after_main.jpg\" height = \"41\" align = \"center\" ><strong> <font color = \"#573801\" size = \"3\" \r\n face = \"verdana\"> Welcome To Finance Department</font></strong> </td>\r\n </tr>\r\n </table>\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n\r\n".toCharArray();
    _jsp_string14 = "\r\n		</option>\r\n		\r\n	".toCharArray();
    _jsp_string6 = "\r\n\r\n<tr>\r\n<td width=\"300\"/>\r\n\r\n<td>\r\n<input align =\"left\" type=\"image\" src=\"images/home.jpg\"/>\r\n</form>\r\n</td>\r\n\r\n<form action=\"accounting_voucher_main.jsp\" method=\"post\">\r\n\r\n<td width=\"600\"/>\r\n\r\n<td>\r\n<input align =\"right\" type=\"image\" src=\"images/back.jpg\"/>\r\n</form>\r\n</td>\r\n</tr>\r\n</table>\r\n\r\n \r\n\r\n \r\n <table align=\"center\"    >\r\n<tr>\r\n <td > <strong> <font  size = \"3\" face = \"verdana\" color=\"#573801\">Purchase Returns Details</font></strong>\r\n</td>\r\n</tr>\r\n\r\n</table>\r\n\r\n&nbsp;\r\n\r\n\r\n<table>\r\n<tr>\r\n<td width=\"950\" height=\"40\"/>\r\n<td>\r\n	<a href=\"fn_ledger_create.jsp\"  > <strong><font color=\"#573801\" face=\"verdana\" size=\"3\">\r\n   Ledger Creation\r\n   </font></strong> </a>\r\n</td>\r\n</tr>\r\n</table>\r\n\r\n\r\n<table align=\"center\" width=\"800\" border=\"1\" bgcolor=\"#FADFC3\" bordercolor=\"#F0B269\">\r\n\r\n <form action=\"voucher_purchase_return_submit.jsp\"  name=\"form1\" onSubmit=\"return validations();\">\r\n <tr>\r\n  <td width=\"392\">\r\n   <font color=\"#573801\" face=\"verdana\" size=\"2\">\r\n    Receipt No.\r\n   </font>\r\n  </td>\r\n  <td width=\"392\">\r\n\r\n	\r\n  ".toCharArray();
    _jsp_string8 = "\r\n <input type=\"text\" name=\"date1\" value=\"".toCharArray();
    _jsp_string7 = "\r\n  </td>\r\n </tr>\r\n\r\n <tr>\r\n <td> <font color=\"#573801\" face=\"verdana\" size=\"2\">\r\n    Ref:\r\n   </font></td>\r\n <td> <input type=\"text\" name=\"ref\"> </td>\r\n </tr>\r\n\r\n <tr> \r\n <td> <font color=\"#573801\" face=\"verdana\" size=\"2\">\r\n    Date\r\n   </font></td> \r\n <td>   \r\n	".toCharArray();
    _jsp_string21 = "\r\n        <option  value=\"".toCharArray();
    _jsp_string18 = "\r\n	\r\n	</select>\r\n   \r\n  </td>\r\n  \r\n  </tr>\r\n\r\n  <tr>\r\n   <td>\r\n    <font color=\"#573801\" face=\"verdana\" size=\"2\">\r\n	 Quantity\r\n	</font>\r\n   </td>\r\n \r\n   \r\n   <td>\r\n    <input type=\"text\" name=\"qty\" id=\"iqty\" onBlur=\"qtyf();\" >\r\n   </td>\r\n  </tr>\r\n\r\n\r\n  \r\n\r\n <tr>\r\n  <td width=\"392\">\r\n   <font color=\"#573801\" face=\"verdana\" size=\"2\">\r\n    Units\r\n   </font>\r\n  </td>\r\n  <td >\r\n\r\n  ".toCharArray();
    _jsp_string23 = "\r\n        </option>\r\n        ".toCharArray();
    _jsp_string17 = "\r\n	 <select name=nameofitem onChange=\"showCustomer2(this.value);\" >\r\n	 <option  value=".toCharArray();
    _jsp_string1 = "\r\n<HTML>\r\n <HEAD>\r\n  <TITLE> KVK </TITLE>\r\n\r\n\r\n\r\n<script type=\"text/javascript\">\r\n\r\n	\r\nfunction validations()\r\n{\r\n	with(document.form1){\r\n\r\n		if(acname.selectedIndex == 0) \r\n		{\r\n			alert(\"Please Select Party A/c !\");			\r\n			acname.focus();\r\n			return false;\r\n		}	\r\n		\r\n		if(nameofitem.selectedIndex == 0) \r\n		{\r\n			alert(\"Please Select Name Of Item!\");			\r\n			nameofitem.focus();\r\n			return false;\r\n		}	\r\n		\r\n		\r\n		//var q = /(^([0-9]*\\.[0-9]*)$)/\r\n		var q = /(^([0-9]*)$)/\r\n		if (trim(qty.value) == \"\"){\r\n			alert(\"Please Enter Quantity\");\r\n			qty.focus();\r\n			return false;\r\n		} \r\n		\r\n		else if( (!q.test(trim(qty.value)))  )\r\n		{\r\n			alert(\"Please Enter valid  Quantity\");\r\n			qty.select();\r\n			qty.focus();\r\n			return false;\r\n		}\r\n		\r\n		if(units.selectedIndex == 0) \r\n		{\r\n			alert(\"Please Select Units !\");			\r\n			units.focus();\r\n			return false;\r\n		}	\r\n		\r\n		var r = /(^([0-9]*)$)/\r\n		if (trim(rate.value) == \"\"){\r\n			alert(\"Please Enter Rate\");\r\n			rate.focus();\r\n			return false;\r\n		} \r\n		\r\n		else if( (!r.test(trim(rate.value)))  )\r\n		{\r\n			alert(\"Please Enter valid Rate\");\r\n			rate.select();\r\n			rate.focus();\r\n			return false;\r\n		}\r\n		\r\n		\r\n		\r\n		\r\n		\r\n		\r\n	}//end of with\r\n	\r\nreturn true;\r\n}//end of validations()\r\n\r\n\r\nfunction trim(a){\r\n    return(lTrim(rTrim(a)));\r\n}\r\n\r\nfunction lTrim(tmp){\r\n    for(i=0;i<tmp.length;i++){\r\n        if(tmp.charAt(i) != \" \")\r\n            break;\r\n    }\r\n    return tmp.substring(i,tmp.length)\r\n}\r\n\r\nfunction rTrim(tmp){\r\n    for(i=tmp.length-1;i>=0;i--){\r\n        if(tmp.charAt(i) != \" \")\r\n            break;\r\n    }\r\n    return tmp.substring(0,i+1)\r\n}\r\n\r\n\r\n\r\n	\r\n	\r\n	\r\n///////////////////////////////////////////////////////////////////	\r\n\r\n\r\n	// JavaScript Document\r\nvar xmlHttp\r\nvar xmlHttp1\r\nvar xmlHttp2\r\n\r\nfunction showCustomer(str)\r\n{ \r\nxmlHttp=GetXmlHttpObject();\r\nif (xmlHttp==null)\r\n  {\r\n  alert (\"Your browser does not support AJAX!\");\r\n  return;\r\n  } \r\nvar url=\"receipt_db.jsp\";\r\nurl=url+\"?q=\"+str;\r\nurl=url+\"&sid=\"+Math.random();\r\nxmlHttp.onreadystatechange=stateChanged;\r\nxmlHttp.open(\"GET\",url,true);\r\nxmlHttp.send(null);\r\n}\r\n\r\n\r\nfunction stateChanged() \r\n{ \r\nif (xmlHttp.readyState==4)\r\n{ \r\ndocument.getElementById(\"txtHint\").innerHTML=xmlHttp.responseText;\r\n}\r\n}\r\n\r\n//////////////////////////\r\nfunction showCustomer1(str)\r\n{ \r\nxmlHttp1=GetXmlHttpObject();\r\nif (xmlHttp1==null)\r\n  {\r\n  alert (\"Your browser does not support AJAX!\");\r\n  return;\r\n  } \r\nvar url=\"receipt_db.jsp\";\r\nurl=url+\"?q=\"+str;\r\nurl=url+\"&sid=\"+Math.random();\r\nxmlHttp1.onreadystatechange=stateChanged1;\r\nxmlHttp1.open(\"GET\",url,true);\r\nxmlHttp1.send(null);\r\n}\r\n\r\n\r\nfunction stateChanged1() \r\n{ \r\nif (xmlHttp1.readyState==4)\r\n{ \r\ndocument.getElementById(\"txtHint1\").innerHTML=xmlHttp1.responseText;\r\n}\r\n}\r\n\r\n/////////////////////////////\r\n\r\n//////////////////////////\r\nfunction showCustomer2(str)\r\n{ \r\nxmlHttp2=GetXmlHttpObject();\r\nif (xmlHttp2==null)\r\n  {\r\n  alert (\"Your browser does not support AJAX!\");\r\n  return;\r\n  } \r\nvar url=\"db_closing_st.jsp\";\r\nurl=url+\"?q=\"+str;\r\nurl=url+\"&sid=\"+Math.random();\r\nxmlHttp2.onreadystatechange=stateChanged2;\r\nxmlHttp2.open(\"GET\",url,true);\r\nxmlHttp2.send(null);\r\n}\r\n\r\n\r\nfunction stateChanged2() \r\n{ \r\nif (xmlHttp2.readyState==4)\r\n{ \r\ndocument.getElementById(\"txtHint2\").innerHTML=xmlHttp2.responseText;\r\n}\r\n}\r\n\r\n/////////////////////////////\r\n\r\n\r\n\r\nfunction GetXmlHttpObject()\r\n{\r\nvar xmlHttp=null;\r\ntry\r\n  {\r\n  // Firefox, Opera 8.0+, Safari\r\n  xmlHttp=new XMLHttpRequest();\r\n  }\r\ncatch (e)\r\n  {\r\n  // Internet Explorer\r\n  try\r\n    {\r\n    xmlHttp=new ActiveXObject(\"Msxml2.XMLHTTP\");\r\n    }\r\n  catch (e)\r\n    {\r\n    xmlHttp=new ActiveXObject(\"Microsoft.XMLHTTP\");\r\n    }\r\n  }\r\nreturn xmlHttp;\r\n}\r\n\r\n\r\nfunction f()\r\n{\r\nvar x=document.getElementById(\"iqty\").value;\r\nvar y=document.getElementById(\"irate\").value;\r\nvar z=x*y;\r\n//document.getElementById(\"fname\").value=x.toUpperCase();\r\ndocument.getElementById(\"iamount\").value=z;\r\n}\r\n\r\nfunction qtyf()\r\n	{\r\n		var h=document.getElementById(\"qt\").value;\r\n		var q=document.getElementById(\"iqty\").value;\r\n		if(q>h)\r\n		{\r\n			//qty.focus();\r\n			alert(\"Please select Below or Equal to: \"+h);\r\n		}		\r\n	}\r\n	\r\n</script>\r\n\r\n\r\n   </HEAD>\r\n   \r\n   \r\n  ".toCharArray();
    _jsp_string13 = "\" >\r\n		".toCharArray();
    _jsp_string5 = "\r\n<form action=\"account_operator.jsp\" method=\"post\">\r\n".toCharArray();
    _jsp_string10 = "\r\n	 <select name=acname onChange=\"showCustomer(this.value);\" >\r\n	 <option  value=".toCharArray();
    _jsp_string12 = "\r\n	  \r\n	    <option  value=\"".toCharArray();
    _jsp_string16 = "\r\n   \r\n  </td>\r\n  </tr>\r\n\r\n  <tr>\r\n  <td> \r\n  <font color=\"#573801\" face=\"verdana\" size=\"2\">\r\n <font color=\"#573801\" face=\"verdana\" size=\"2\">Name of Item\r\n   </font> \r\n  </td>\r\n	<td>\r\n\r\n   ".toCharArray();
    _jsp_string25 = "\r\n\r\n\r\n </BODY>\r\n</HTML>\r\n".toCharArray();
    _jsp_string20 = " ></option>\r\n        ".toCharArray();
    _jsp_string15 = "\r\n	\r\n	</select>\r\n	\r\n   </td>\r\n </tr>\r\n<tr>\r\n  <td width=\"392\">\r\n   <font color=\"#573801\" face=\"verdana\" size=\"2\">\r\n    Current Balance\r\n   </font>\r\n  </td>\r\n  <td width=\"392\">\r\n   <div id=\"txtHint\"></div>\r\n  </td>\r\n </tr>\r\n\r\n <tr>\r\n  <td>\r\n   <font color=\"#573801\" face=\"verdana\" size=\"2\">\r\n   Purchase Ledger\r\n   </font>\r\n  </td>\r\n  <td>\r\n\r\n   ".toCharArray();
    _jsp_string2 = "\r\n\r\n".toCharArray();
  }
}
