<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Resort</title>
        <!--  <script type="text/javascript" src="js/jquery-2.0.0.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
        <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" media="all" />
        <link rel="stylesheet" href="css/resort_styles.css"/>
        <script type="text/javascript" src="js/resort_js.js"></script>-->
        <link rel="stylesheet" href="css/ext-all.css"/>
        <link rel="stylesheet" type="text/css" href="css/ext-all.css"/>
        <link rel="stylesheet" type="text/css" href="css/ext-theme-neptune-all-item.css"/>
        <script type="text/javascript" src="js/ext-all.js"></script>
        <script type="text/javascript" >
            Ext.onReady(function () {


                Ext.create('Ext.form.Panel', {
                    title: 'Simple Form',
                    bodyPadding: 5,
                    width: 350,
                    // The form will submit an AJAX request to this URL when submitted
                    url: 'save-form.php',
                    // Fields will be arranged vertically, stretched to full width
                    layout: 'anchor',
                    defaults: {
                        anchor: '100%'
                    },
                    // The fields
                    defaultType: 'textfield',
                    items: [{
                            fieldLabel: 'First Name',
                            name: 'first',
                            allowBlank: false
                        }, {
                            fieldLabel: 'Last Name',
                            name: 'last',
                            allowBlank: false
                        }],
                    // Reset and Submit buttons
                    buttons: [{
                            text: 'Reset',
                            handler: function () {
                                this.up('form').getForm().reset();
                            }
                        }, {
                            text: 'Submit',
                            formBind: true, //only enabled once the form is valid
                            disabled: true,
                            handler: function () {
                                var form = this.up('form').getForm();
                                if (form.isValid()) {
                                    form.submit({
                                        success: function (form, action) {
                                            Ext.Msg.alert('Success', action.result.msg);
                                        },
                                        failure: function (form, action) {
                                            Ext.Msg.alert('Failed', action.result.msg);
                                        }
                                    });
                                }
                            }
                        }],
                    renderTo: Ext.getBody()
                });
            });
        </script>
    </head>
    <%
        String username = (String) session.getAttribute("username");
        String pwd = (String) session.getAttribute("password");
        //System.out.println("hi"+username);
        //System.out.println("hi"+pwd);
        if ((username != null) && (pwd != null)) { %>
    <body>
        <div class="project_title" > 
            <img src="images/logo_image123.jpg" alt="logo" id="logo" height="50px" width="100px"/>
            <span id="proj_title">RESORT MANAGEMENT</span>
        </div>

        <div class="main_screen" align="center">
            <div class="menu" align="left">	
                <jsp:include page="hr_ex_header.jsp" flush="true"></jsp:include>
                </div>
                <div class="content" align="center" id="master_layout_image">



                    <div id="ext_form"></div>




                    <table border="0" bordercolor="#D468F7"   align="center" class="tab10" width="98%" >
                        <form action="hr_exe_leave_form.res" name="frmopen" method="post" onSubmit="return valid();">
                            <tr><td>
                                    <table class="tab10" border="0" align="center"> <tr align="center"><td width="500"><font color="#FF0000" size="2" face="Verdana, Arial, Helvetica, sans-serif">${msg}</font></td></tr></table>
                                <table bgcolor="#A4C6C5"  align="center" border="0" width="98%">
                                    <tr align="center">
                                        <td width="250"></td>
                                        <td  align="right" width="60"> 
                                            <strong><font color="#000066" size="2" face="Verdana">Emp No</font></strong>
                                        </td>

                                        <td align="left" width="100">
                                            <input type="text" name="empno" id="empno" onBlur="showdoj(this.value);" >


                                            </select>
                                        </td>
                                        <td width="10"></td>
                                        <td width="95" align="left">
                                            <strong><font color="#000066" size="2" face="Verdana">Joining Date</font>
                                            </strong><font color="#006600" size="4">
                                        </td>
                                        <td width="10"></td>
                                        <td align="left">
                                            <input type="text" name="doj" id='doj'  size="11" onFocus="showdoj(empno.value);" readonly="true"></font>
                                        </td>

                                    </tr>

                                    <tr>
                                        <td ></td>
                                        <td align="left">
                                            <font color="#006600" size="4"><strong><font color="#000066" size="2" face="Verdana">CL</font></strong>
                                        </td>
                                        <td>
                                            <input type="text" name="cl"  id="cl"    onFocus="showcl(empno.value)"></font>
                                        </td>
                                        <td align="right">
                                            <font color="#006600" size="4"><strong><font color="#000066" size="2" face="Verdana">SL</font></strong>
                                        </td>
                                        <td>
                                            <input type="text" name="sl"  id="sl" size="11" onFocus="showsl(empno.value)" ></font>
                                        </td>

                                        <td align="right">
                                            <font color="#006600" size="4"><strong><font color="#000066" size="2" face="Verdana">PL</font></strong>
                                        </td>
                                        <td>
                                            <input type="text" name="pl"  id="pl" size="11" onFocus="showpl(empno.value)"></font>
                                        </td>
                                        </td>
                                    </tr>
                                </table>
                            </td></tr>
                        <tr >

                            <td class="t1" align="center"> <div id="txtHint" style="display:none "></div>
                                <div id="txtHint1" style="display:none "></div>
                                <div id="txtHint2" style="display:none "></div>
                                <div id="txtHint3" style="display:none "></div>
                                <input type="image" src="images/submit_btn.png" onMouseOver="total1();"></td>
                        </tr>

                    </form>
                </table>

            </div>
            <jsp:include page="footer.jsp" flush="true"></jsp:include>
            </div>
        <% } else {
                response.sendRedirect("login.res");
            }%>	

    </body>
</html>
