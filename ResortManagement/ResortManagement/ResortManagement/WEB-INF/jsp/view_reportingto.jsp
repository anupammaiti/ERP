<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Resort</title>
        <script type="text/javascript" src="js/jquery-2.0.0.js"></script>
        <script type="text/javascript" src="js/resort_js.js"></script>
        <link rel="stylesheet" href="css/resort_styles.css"/>
    </head>
    <%
        String username = (String) session.getAttribute("username");
        String pwd = (String) session.getAttribute("password");
        //System.out.println("hi"+username);
        //System.out.println("hi"+pwd);
        if (pwd != null) { %>
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
                        <legend>View Reporting To</legend>
                        <a href="rep_reportingto.res" target="_blank"><img src="images/pdf_download.png" alt="pdf download" height="40px" width="40px" align="right"/></a>
                        <!--				<table cellpadding="3px" cellspacing="5px" border="1px">
                                                <tr class="column_header">
                                                        <td>
                                                                 Deparment
                                                        </td>
                                                        <td>
                                                                Designation
                                                        </td>
                                                        <td>
                                                                ReportingTo
                                                        </td>
                                                </tr>
                    <c:forEach items="${ReportingToList}" var="reporting" varStatus="status">
                    <tr>
                            <td>
                        <c:out value="${reporting.department}"></c:out>
                </td>
                <td>
                        <c:out value="${reporting.designation}"></c:out>
                </td>
                <td>
                        <c:out value="${reporting.reportingto}"></c:out>
                </td>
        </tr>
                    </c:forEach>
            </table>-->
                    <div id="reportingToGrid"></div>
                </fieldset>

            </div>
            <jsp:include page="footer.jsp" flush="true"></jsp:include>
            </div>
        <% } else {
                response.sendRedirect("login.res");
            }%>
        <script>
            $(document).ready(function () {
                initiateReportingToGrid();
                initReportingTo();

            });
        </script>
    </body>
</html>