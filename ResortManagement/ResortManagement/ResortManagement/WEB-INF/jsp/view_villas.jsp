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
                        <legend>View Villa</legend>
                        <a href="rep_villadetails.res" target="_blank"><img src="images/pdf_download.png" alt="pdf download" height="40px" width="40px" align="right"/></a>
                        <!--			<table cellpadding="0" cellspacing="4px" border="1px">
                                                        <tr class="column_header">
                                                                
                                                                <td>
                                                                         Name 
                                                                </td>
                                                                <td>
                                                                         Facing
                                                                </td>
                                                                <td>
                                                                         Type 
                                                                </td>
                                                                <td>
                                                                         Price
                                                                </td>
                                                                <td>
                                                                        Plot Size (Yards)
                                                                </td>
                                                                <td>
                                                                        Villa Size (Sqr feet)
                                                                </td>
                                                                <td>
                                                                        Total Villas
                                                                </td>
                                                                <td>
                                                                        Avaliable Villas
                                                                </td>
                                                        </tr>
                    <c:forEach items="${viewVillList}" var="villas" varStatus="status">
            <tr>
                    <td>
                        <c:out value="${villas.villa_name}" />
                </td>
                <td>
                        <c:out value="${villas.villa_facing}"/>
                </td>
                <td>	
                        <c:out value="${villas.villa_type}"/>
                </td>
                <td>
                        <c:out value="${villas.villa_price}"/>
                </td>
                <td>
                        <c:out value="${villas.sqrtfeet}"/>
                </td>
                <td>
                        <c:out value="${villas.villa_size}"/>
                </td>
                <td>
                        <c:out value="${villas.total_villas}"></c:out>
                </td>
                <td>
                        <c:out value="${villas.villas_left}"></c:out>
                        
                </td>
        </tr>
                    </c:forEach>
            </table>-->
                    <div id="villGrid"></div>
                </fieldset>	
            </div>
            <jsp:include page="footer.jsp" flush="true"></jsp:include>
            </div>
        <% } else {
                response.sendRedirect("login.res");
            }%>
        <script type="text/javascript">
            $(document).ready(function () {
                initiateVillaGrid();
                inititeVilla();
            });
        </script>
    </body>
</html>
