<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Resort</title>
        <script type="text/javascript" src="js/jquery-1.7.1.js"></script>
        <script type="text/javascript" src="js/resort_js.js"></script>
        <script type="text/javascript" src="js/form_validation.js"></script>
        <script type="text/javascript">
            function isEmpty() {
                with (document.department_form)
                    if ((department_id.value == "") || (department.value == "")) {
                        alert('All Fields are Mandatory');
                        return false;
                    }
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
    <body>
        <div class="project_title">
            <img src="images/svs_logo.gif" alt="logo" id="logo"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span id="proj_title">RESORT MANAGEMENT</span>
        </div>

        <div class="main_screen" align="center">
            <div class="menu" align="left">	
                <jsp:include page="admin_header.jsp" flush="true"></jsp:include>
                </div>
                <div class="content" align="center">
                    <fieldset>
                        <legend>
                            Director 
                        </legend>
<!--                        <table cellspacing="0" cellpadding="0" border="1px">
                            <tr class="column_header"> 
                                <td>
                                    Name
                                </td>
                                <td>
                                    Mobile No
                                </td>
                                <td>
                                    Department
                                </td>
                                <td>
                                    Designation
                                </td>

                            </tr>
                        <c:forEach items="${direcotrslist}" var="directors" varStatus="status">

                            <tr>
                                <td>
                                    <c:set var="name" value="${directors.firstname}${directors.lastname}">

                                    </c:set>
                                    <a href="admin_view_manager_by_direcotors.res?username=<c:out value="${directors.username}"></c:out>"><c:out value="${name}"/></a>
                                    </td>
                                    <td>
                                    <c:out value="${directors.mobile}"></c:out>
                                    </td>
                                    <td>
                                    <c:out value="${directors.department}"></c:out>
                                    </td>
                                    <td>
                                    <c:out value="${directors.designation}"></c:out>
                                    </td>
                                </tr>
                        </c:forEach>
                    </table>-->
                        <div id="viewAdminDirectorsGrid"></div>
                </fieldset>
            </div>

            <jsp:include page="footer.jsp" flush="true"></jsp:include>
            </div>
        <% } else {
                response.sendRedirect("login.res");
            }%>	
        <script type="text/javascript">
            $(document).ready(function () {
                initAdminViewDirectorsGrid();
                adminViewDirectorsGrid();
            });
        </script>
    </body>
</html>
