
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Resort</title>
        <script type="text/javascript" src="js/jquery-2.0.0.js"></script>
        <script type="text/javascript">
            function dataLoading() {
                alert('Hello');
                var username = $('empid').val();
                
                $.getJSON('hlp_hr_employee_by_username.res', {'username': username}, function (json) {

                    alert('Hello' + json.empno);
                });

            }
        </script>

        <link rel="stylesheet" href="css/resort_styles.css"/>

    </head>
    <%
        String username = (String) session.getAttribute("username");
        String pwd = (String) session.getAttribute("password");
        //System.out.println("hi"+username);
        //System.out.println("hi"+pwd);
        if ((username != null) && (pwd != null)) { %>
    <body onload="dataLoading()">
        <div class="project_title" > 
            <img src="images/logo_image123.jpg" alt="logo" id="logo" height="50px" width="100px"/>
            <span id="proj_title">RESORT MANAGEMENT</span>
        </div>

        <div class="main_screen" align="center">
            <div class="menu" align="left">	
                <jsp:include page="hr_ex_header.jsp" flush="true"></jsp:include>
                </div>
                <div class="content" align="center">
                    <!--Content of the Page-->
                <form:form method="post" action="" enctype="multipart/form-data">
                    <table>
                        <tr>
                            <td>
                                <label>FileName</label>
                                <input type="file" name="file"/>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>
                                <label>User Name</label>
                                
                            </td>
                            <td><input type="upload" value="Upload"/></td>
                        </tr>
                    </table>
                </form:form>
            </div>
            <jsp:include page="footer.jsp" flush="true"></jsp:include>
            </div>
        <%} else {
                response.sendRedirect("login.res");
            }%>	
    </body>
</html>
