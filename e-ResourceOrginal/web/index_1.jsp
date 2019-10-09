<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.svs.hrerp.logoff.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>SVS Infomatics</title>
<link rel="shortcut icon" href="./images/11.gif" /> <link rel="icon" href="./images/11.gif" type="image/gif" />
<link href="styles.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 10px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>


<script type="text/javascript">
  /*  function noBack() { window.history.forward(); }
    noBack();
    window.onload = noBack;
    window.onpageshow = function (evt) { if (evt.persisted) noBack(); }
    window.onunload = function () { void (0); }*/
</script>

</head>



<body>




<% String u=null;
String p=null; 
String us=(String)session.getAttribute("user_name");
session.removeAttribute("user_name");
session.removeAttribute("pwd");
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~removing servlet context objects

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`
//if(u==null&&p==null)
//{
//response.sendRedirect("logoff");
//logoff lf=new logoff();
//lf.getinfo(us);
//ServletContext sc=getServletContext();
//	RequestDispatcher rd=sc.getRequestDispatcher("/logoff");
//	rd.include(request,response);
//}
	
 %>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center"><table width="1012" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="images/page_rounded_top.jpg" width="1012" height="16" /></td>
      </tr>
      <tr>
        <td background="images/page_rounded_bar.jpg"><table width="1012" border="0" cellspacing="0" cellpadding="0">
          <tr>
		  <td>
		  <table>
		  <tr align="center">
            <input type="hidden" value="<%=comp %>" id="companyid"/>
            <img alt="Logo" class="logo_image" alt="logo"/>
			</tr>
			<tr align="center">
            <td ><img src="images/e-resource.gif" width="200"height="50" /></td>
			</tr>
			</table>
			</td>
            <td width="739" align="left" valign="bottom"><table width="721" border="0" cellspacing="0" cellpadding="0">
              <tr align="right">
			  <td>
			  <table width="721" border="0" cellspacing="0" cellpadding="0">
			  
                <td id="session" align="right"></td>
				</table>
				</td>
              </tr>
			                <tr>
                <td height="50" align="right" valign="middle"><table width="570" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="10"></td>
                    <td width="701" align="left" valign="middle">
					
					</td>
                    <td width="10" align="right"></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="1004" border="1" cellspacing="0" cellpadding="0" align="center" bordercolor="#CCCCCC" rules="cols">
      <tr >
        <td ></td>
		        <td width="1004" align="center"><img src="images/banner_img.gif" width="1004" height="10" /></td>

        <td ></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td align="center"><table width="1012" border="0" cellpadding="0" cellspacing="0" background="images/page_rounded_bar.jpg">
      <tr>
        <td width="477" align="center" valign="top" ><table width="576" border="0" cellspacing="0" cellpadding="0" align="center">
          <tr>
            <td width="426">&nbsp;</td>
          </tr>
          <tr>
            <td height="35" align="left" valign="top">&nbsp;<span class="welcometxtyellow">Welcome to</span> <span class="welcometxtblue">e-Resource</span></td>
          </tr>
          <tr>
            <td align="center" valign="top" class="contenttxt">&nbsp;<b>Company Profile :</b><br />
&nbsp;KVK Energy & Infrastructure Private Ltd. engages in the implementation, construction, operation and &nbsp;manitenance of various power projects across the country through its SPVs. During the last one decade, 
&nbsp;KVK Group has successfully, either individually or as a JV, implemented several power projects across 
&nbsp;India. KVK Energy currently has 5 operating power plants and 3 projects in several stages of 
&nbsp;construction. In addition 4 more plants are under advance stage of development. The aggregate installed 
&nbsp;anticipated capacity of all the plants is approximately 4,805 MW. Power Plants in Operation RVK Energy 
&nbsp;Private Ltd (REPL) REPL, a company promoted by KEIL, has set up a 16 MW natural gas based Merchant 
&nbsp;Power Plant at Kondipudi village, Pedna Mandal, Krishna district. The project commenced commercial 
&nbsp;operations in January 2000. REPL has entered into Fuel Supply Agreement with GAIL for supply of gas 
&nbsp;and sells power to various HT consumers. Kasargod Power Corporation Limited (KPCL) KPCL, 
&nbsp;incorporated in 1994, has set up a 21 MW Low Sulphur Heavy Stock (LSHS) based power plant in the 
&nbsp;state of Kerala. The project commenced commercial operations in May 2001. KPCL has entered into Power 
&nbsp;Purchase Agreement with Kerala State Electricity Board for a period of 15 years from COD and signed 
&nbsp;Fuel Supply Agreement with Bharat Petroleum Corporation Ltd. (BPCL). MMS Steel & Power Private Limited 
&nbsp;(MMS) MMS, incorporated on 23rd January 2002, is a captive power plant and supplies power to various 
&nbsp;HT consumers. MMS started operations by setting up 11 MW natural gas based power plant at 
&nbsp;Nagapattinam, Tamil Nadu, which was commissioned in December 2003. During 2005-2006, the capacity 
&nbsp;of the plant has been expanded to 28 MW. The company has entered into Fuel Supply Agreements with 
&nbsp;GAIL and ONGC. MMS has two plants located at (i) Narimanam, Nagapattinam and (ii) Nallur both located in 
&nbsp;Tamil Nadu. 
</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
        </table></td>
        <td width="108">&nbsp;</td>
        <td width="327" align="left" valign="top" style="padding-right:18px;"><table width="327" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td><table width="327" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="15"><img src="images/tab_left_top.jpg" width="15" height="163" /></td>
                <td align="left" valign="top" background="images/tab_bar_top.jpg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="10"></td>
                  </tr>
                  <tr>
                    <td height="24" align="left" valign="top"><table width="150" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td align="left" valign="middle" background="images/tab_bar.jpg" class="tabheadertxt">Login</td>
                        <td width="5" align="right"><img src="images/tab_right.jpg" width="5" height="24" /></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td align="center" height="20"><font ><div style="font-size-adjust:inherit;color:red;">${errorMessage}</div></font></td>
                  </tr>
<% session.removeAttribute("errorMessage");%>
                  <tr>
                    <td><table width="300" border="0" cellspacing="0" cellpadding="0">
                      	<form action="loginBO" method="post">
                      <tr>
                        <td width="117" align="right" valign="middle" class="txtboxname">Username</td>
                        <td width="183" align="left" style="padding-left:5px;"><table width="150" border="0" cellspacing="0" cellpadding="0" >
                            <tr>
                              <td width="5" align="left" valign="top"><img src="images/rounded_txtbox_left.jpg" width="5" height="29" /></td>
                              <td><input name="username" type="text" class="txtbox1" id="textfield" />
							  </td>
                              <td width="5" align="right" valign="top"><img src="images/rounded_txtbox_right.jpg" width="5" height="29" /></td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td colspan="2" height="10"></td>
                      </tr>
                      <tr>
                        <td width="117" height="30" align="right" valign="middle" class="txtboxname">Password</td>
                        <td width="183" align="left" style="padding-left:5px;"><table width="150" border="0" cellspacing="0" cellpadding="0" >
                            <tr>
                              <td width="5" align="left" valign="top"><img src="images/rounded_txtbox_left.jpg" width="5" height="29" /></td>
                              <td><input name="password" type="password" class="txtbox1" id="textfield" /></td>
                              <td width="5" align="right" valign="top"><img src="images/rounded_txtbox_right.jpg" width="5" height="29" /></td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td height="30" colspan="2" align="right" style="padding-right:30px;"><input type="image" src="images/submit_btn.jpg" width="67" height="24" /></td>
                      </tr>
                      </form>
                    </table></td>
                  </tr>
                </table></td>
                <td width="4" align="right" valign="top"><img src="images/tab_right_top.jpg" width="4" height="163" /></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td align="left" valign="top"><table width="327" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="15" height="124" align="left" valign="top"><img src="images/tab_left_bottom.jpg" width="15" height="124" /></td>
                <td align="left" valign="top" background="images/tab_bar_bottom.jpg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="8"></td>
                    </tr>
                    <tr>
                      <td height="24" align="left" valign="top"><table width="150" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td background="images/tab_bar.jpg" class="tabheadertxt">Key Services</td>
                            <td width="5" align="right"><img src="images/tab_right.jpg" width="5" height="24" /></td>
                          </tr>
                      </table></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td align="left" valign="top" class="contenttxt">KVK Energy and Infrastructure Private Limited is the holding company of KVK Group.</td>
                    </tr>
                    <tr >
                      <td height="30" align="right" valign="middle" class="readmoretxt"><a href="http://www.kvkenergy.com" target="_blank">Read more...</a></td>
                    </tr>
                </table></td>
                <td width="4" align="right" valign="top"><img src="images/tab_right_bottom.jpg" width="6" height="124" /></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><br><br><font color="#FF0000" face="Verdana, Arial, Helvetica, sans-serif" size="1">Note :&nbsp;</font><font color="#000066" face="Verdana, Arial, Helvetica, sans-serif" size="1"><strong>Please use advanced versions of <a href="http://www.mozilla.org/en-US/firefox/all.html" target="_blank" id="svs">Mozilla Firefox</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(or) <a href="https://www.google.com/chrome/index.html?hl=en" target="_blank" id="svs">Google Chrome </a>for better results.</strong></font></td>
          </tr>
        </table></td>
      </tr>
	  <tr><td ><table width="98%" border="0"><tr id="svstr"><td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&copy;Powered by <a href="http://www.svsinfomatics.com" target="_blank" id="svs"><font>SVSINFOMATICS</font></a></td></tr></table></td></tr>
	  
    </table>
	</td>
  </tr>
  <tr><!--starint tr again-->
   <td align="center">
	
	<table width="912" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="images/page_rounded_bottom.jpg" width="1012" height="16" /></td>
      </tr>
    </table></td>
  </tr>
</table>

</body>
</html>
